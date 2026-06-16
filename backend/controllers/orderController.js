// const db = require("../db");

// const STATUS_MAP = {
//   placed: "Placed",
//   new: "New",
//   pending: "Pending",
//   assigned: "Assigned",
//   "out for delivery": "Out for Delivery",
//   outfordelivery: "Out for Delivery",
//   delivered: "Delivered",
//   cancelled: "Cancelled",
//   canceled: "Cancelled",
// };

// const normalizeStatus = (status) => {
//   if (!status) return null;
//   const key = String(status).trim().toLowerCase();
//   return STATUS_MAP[key] || status;
// };

// const formatOrder = (row) => ({
//   id: row.id,
//   orderId: `ORD-${row.id}`,
//   order_id: row.id,
//   order_value: row.total_amount,
//   orderValue: row.total_amount,
//   address: row.address,
//   city: row.city,
//   pincode: row.pincode,
//   name: row.name,
//   email: row.email,
//   mobile: row.mobile,
//   lanmark: row.lanmark,
//   discount: row.discount,
//   total_amount: row.total_amount,
//   order_status: row.order_status,
//   status: row.order_status,
//   payment_method: row.payment_method,
//   payment_status: row.payment_status,
//   prescription_url: row.prescription_url,
//   attachment: Boolean(row.prescription_url),
//   items: row.items_count ?? 1,
//   items_count: row.items_count ?? 1,
//   distance: row.distance,
//   waiting_time: row.waiting_time,
//   waitingTime: row.waiting_time,
//   rider_username: row.rider_username,
//   route: row.route,
//   cancel_reason: row.cancel_reason,
//   cancel_reason_id: row.cancel_reason_id,
//   pre_order_id: row.pre_order_id,
//   user_id: row.user_id,
//   vendor_id: row.vendor_id,
//   created_at: row.created_at,
//   updated_at: row.updated_at,
//   deliveryDate: row.updated_at || row.created_at,
//   remark: row.cancel_reason,
// });

// const resolveVendorId = async (req) => {
//   const role = req.user?.role?.toLowerCase();

//   if (role === "admin" || role === "super_admin") {
//     return req.query.vendor_id ? Number(req.query.vendor_id) : null;
//   }

//   const vendorUserId = req.user?.id;
//   if (!vendorUserId) return null;

//   const [[fromInfo]] = await db.query(
//     "SELECT vendor_id FROM vendor_informations WHERE vendor_user_id = ? LIMIT 1",
//     [vendorUserId],
//   );
//   if (fromInfo?.vendor_id) return fromInfo.vendor_id;

//   const [[fromSignup]] = await db.query(
//     "SELECT vendor_id FROM vendor_signup WHERE id = ? LIMIT 1",
//     [vendorUserId],
//   );
//   return fromSignup?.vendor_id ?? null;
// };

// const getAllOrders = async (req, res) => {
//   try {
//     const vendorId = await resolveVendorId(req);
//     const {
//       status,
//       startDate,
//       endDate,
//       search,
//       vendor_id: queryVendorId,
//     } = req.query;

//     let sql = "SELECT * FROM orders WHERE 1=1";
//     const params = [];

//     const effectiveVendorId =
//       vendorId ?? (queryVendorId ? Number(queryVendorId) : null);

//     if (effectiveVendorId) {
//       sql += " AND vendor_id = ?";
//       params.push(effectiveVendorId);
//     }

//     if (status) {
//       sql += " AND LOWER(order_status) = LOWER(?)";
//       params.push(normalizeStatus(status));
//     }

//     if (startDate) {
//       sql += " AND DATE(created_at) >= ?";
//       params.push(startDate);
//     }

//     if (endDate) {
//       sql += " AND DATE(created_at) <= ?";
//       params.push(endDate);
//     }

//     if (search) {
//       const term = `%${search}%`;
//       sql +=
//         " AND (name LIKE ? OR email LIKE ? OR CAST(mobile AS CHAR) LIKE ? OR CAST(id AS CHAR) LIKE ? OR address LIKE ?)";
//       params.push(term, term, term, term, term);
//     }

//     sql += " ORDER BY created_at DESC";

//     const [rows] = await db.query(sql, params);

//     return res.status(200).json({
//       message: "Orders fetched successfully",
//       data: rows.map(formatOrder),
//       count: rows.length,
//     });
//   } catch (err) {
//     console.error("getAllOrders error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const getOrderById = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const vendorId = await resolveVendorId(req);

//     let sql = "SELECT * FROM orders WHERE id = ?";
//     const params = [id];

//     if (vendorId) {
//       sql += " AND vendor_id = ?";
//       params.push(vendorId);
//     }

//     const [rows] = await db.query(sql, params);

//     if (!rows.length) {
//       return res.status(404).json({ message: "Order not found" });
//     }

//     return res.status(200).json({
//       message: "Order fetched successfully",
//       data: formatOrder(rows[0]),
//     });
//   } catch (err) {
//     console.error("getOrderById error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const getOrderStats = async (req, res) => {
//   try {
//     const vendorId = await resolveVendorId(req);
//     let vendorClause = "";
//     const params = [];

//     if (vendorId) {
//       vendorClause = " AND vendor_id = ?";
//       params.push(vendorId);
//     }

//     const [[todayRow]] = await db.query(
//       `SELECT COUNT(*) AS count, COALESCE(SUM(total_amount), 0) AS total
//        FROM orders
//        WHERE DATE(created_at) = CURDATE()${vendorClause}`,
//       params,
//     );

//     const [[allRow]] = await db.query(
//       `SELECT COUNT(*) AS count, COALESCE(SUM(total_amount), 0) AS total
//        FROM orders WHERE 1=1${vendorClause}`,
//       params,
//     );

//     return res.status(200).json({
//       message: "Order stats fetched successfully",
//       data: {
//         today: {
//           count: todayRow.count,
//           total: todayRow.total,
//         },
//         total: {
//           count: allRow.count,
//           total: allRow.total,
//         },
//       },
//     });
//   } catch (err) {
//     console.error("getOrderStats error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const createOrder = async (req, res) => {
//   try {
//     const {
//       address,
//       city,
//       discount = 0,
//       email,
//       lanmark,
//       mobile,
//       name,
//       order_status = "Placed",
//       payment_method,
//       payment_status,
//       pincode,
//       total_amount,
//       pre_order_id,
//       user_id,
//       vendor_id,
//       prescription_url,
//       items_count = 1,
//       distance,
//       waiting_time,
//       rider_username,
//       route,
//     } = req.body;

//     if (!address || !email || total_amount == null) {
//       return res.status(400).json({
//         message: "address, email, and total_amount are required",
//       });
//     }

//     const now = new Date();
//     const resolvedVendorId = vendor_id ?? (await resolveVendorId(req));

//     const [result] = await db.query(
//       `INSERT INTO orders (
//         address, cancel_reason, cancel_reason_id, city, created_at, discount,
//         email, lanmark, mobile, name, order_status, payment_method, payment_status,
//         pincode, total_amount, updated_at, pre_order_id, user_id, vendor_id,
//         prescription_url, items_count, distance, waiting_time, rider_username, route
//       ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
//       [
//         address,
//         null,
//         null,
//         city ?? null,
//         now,
//         discount,
//         email,
//         lanmark ?? null,
//         mobile ?? null,
//         name ?? null,
//         normalizeStatus(order_status) || "Placed",
//         payment_method ?? null,
//         payment_status ?? null,
//         pincode ?? null,
//         total_amount,
//         now,
//         pre_order_id ?? null,
//         user_id ?? null,
//         resolvedVendorId,
//         prescription_url ?? null,
//         items_count,
//         distance ?? null,
//         waiting_time ?? null,
//         rider_username ?? null,
//         route ?? null,
//       ],
//     );

//     const [created] = await db.query("SELECT * FROM orders WHERE id = ?", [
//       result.insertId,
//     ]);

//     return res.status(201).json({
//       message: "Order created successfully",
//       data: formatOrder(created[0]),
//     });
//   } catch (err) {
//     console.error("createOrder error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const updateOrder = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const vendorId = await resolveVendorId(req);

//     const allowedFields = [
//       "address",
//       "city",
//       "discount",
//       "email",
//       "lanmark",
//       "mobile",
//       "name",
//       "order_status",
//       "payment_method",
//       "payment_status",
//       "pincode",
//       "total_amount",
//       "prescription_url",
//       "items_count",
//       "distance",
//       "waiting_time",
//       "rider_username",
//       "route",
//       "cancel_reason",
//       "cancel_reason_id",
//     ];

//     const updates = [];
//     const values = [];

//     for (const field of allowedFields) {
//       if (req.body[field] !== undefined) {
//         updates.push(`${field} = ?`);
//         values.push(
//           field === "order_status"
//             ? normalizeStatus(req.body[field])
//             : req.body[field],
//         );
//       }
//     }

//     if (!updates.length) {
//       return res.status(400).json({ message: "No valid fields to update" });
//     }

//     updates.push("updated_at = ?");
//     values.push(new Date());

//     let sql = `UPDATE orders SET ${updates.join(", ")} WHERE id = ?`;
//     values.push(id);

//     if (vendorId) {
//       sql += " AND vendor_id = ?";
//       values.push(vendorId);
//     }

//     const [result] = await db.query(sql, values);

//     if (result.affectedRows === 0) {
//       return res.status(404).json({ message: "Order not found" });
//     }

//     const [rows] = await db.query("SELECT * FROM orders WHERE id = ?", [id]);

//     return res.status(200).json({
//       message: "Order updated successfully",
//       data: formatOrder(rows[0]),
//     });
//   } catch (err) {
//     console.error("updateOrder error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const updateOrderStatus = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const { order_status } = req.body;

//     if (!order_status) {
//       return res.status(400).json({ message: "order_status is required" });
//     }

//     req.body.order_status = normalizeStatus(order_status);
//     return updateOrder(req, res);
//   } catch (err) {
//     console.error("updateOrderStatus error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const cancelOrder = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const { cancel_reason, cancel_reason_id } = req.body;

//     req.body = {
//       order_status: "Cancelled",
//       payment_status: "Cancelled",
//       cancel_reason: cancel_reason ?? null,
//       cancel_reason_id: cancel_reason_id ?? null,
//     };

//     return updateOrder(req, res);
//   } catch (err) {
//     console.error("cancelOrder error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const approveOrder = async (req, res) => {
//   req.body = { order_status: "New" };
//   return updateOrder(req, res);
// };

// const rejectOrder = async (req, res) => {
//   return cancelOrder(req, res);
// };

// const assignRider = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const { rider_username, route, order_status = "Assigned" } = req.body;

//     if (!rider_username) {
//       return res.status(400).json({ message: "rider_username is required" });
//     }

//     req.body = {
//       rider_username,
//       route: route ?? null,
//       order_status: normalizeStatus(order_status) || "Assigned",
//     };

//     return updateOrder(req, res);
//   } catch (err) {
//     console.error("assignRider error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const deleteOrder = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const vendorId = await resolveVendorId(req);

//     let sql = "DELETE FROM orders WHERE id = ?";
//     const params = [id];

//     if (vendorId) {
//       sql += " AND vendor_id = ?";
//       params.push(vendorId);
//     }

//     const [result] = await db.query(sql, params);

//     if (result.affectedRows === 0) {
//       return res.status(404).json({ message: "Order not found" });
//     }

//     return res.status(200).json({ message: "Order deleted successfully" });
//   } catch (err) {
//     console.error("deleteOrder error:", err);
//     return res.status(500).json({ message: "Server error", error: err.message });
//   }
// };

// const orderController = {
//   getAllOrders,
//   getOrderById,
//   getOrderStats,
//   createOrder,
//   updateOrder,
//   updateOrderStatus,
//   cancelOrder,
//   approveOrder,
//   rejectOrder,
//   assignRider,
//   deleteOrder,
// };

// module.exports = orderController;

const db = require("../db");

/* =========================================================
   GET ALL NEW ORDERS FOR VENDOR
========================================================= */

const getVendorOrders = async (req, res) => {
  try {
    const vendor_id = req.user.vendor_id;

    const [rows] = await db.query(
      `
      SELECT
        o.id,
        o.name,
        o.mobile,
        o.total_amount,
        o.address,
        o.order_status,
        o.created_at
      FROM orders o
      WHERE o.vendor_id = ?
      AND o.order_status = 'PENDING_VENDOR'
      ORDER BY o.created_at DESC
      `,
      [vendor_id]
    );

    res.json(rows);

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   ACCEPT ORDER
========================================================= */

const acceptOrder = async (req, res) => {
  try {

    const { order_id } = req.params;

    await db.query(
      `
      UPDATE orders
      SET order_status='ACCEPTED'
      WHERE id=?
      `,
      [order_id]
    );

    await db.query(
      `
      INSERT INTO order_tracking(order_id)
      VALUES(?)
      `,
      [order_id]
    );

    res.json({
      success: true,
      message: "Order accepted"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   REJECT ORDER
========================================================= */

const cancelOrder = async (req, res) => {

  try {

    const { order_id } = req.params;
    const { reason } = req.body;

    await db.query(
      `
      UPDATE orders
      SET
      order_status='CANCELLED',
      cancel_reason=?
      WHERE id=?
      `,
      [reason, order_id]
    );

    res.json({
      success: true,
      message: "Order cancelled"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   GET ACCEPTED / NEW ORDERS
========================================================= */

const getAcceptedOrders = async (req, res) => {

  try {

    const vendor_id = req.user.vendor_id;

    const [rows] = await db.query(
      `
      SELECT
        o.*,
        ot.waiting_time
      FROM orders o
      LEFT JOIN order_tracking ot
      ON ot.order_id=o.id
      WHERE o.vendor_id=?
      AND o.order_status='ACCEPTED'
      `,
      [vendor_id]
    );

    res.json(rows);

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   MOVE TO PENDING
========================================================= */

const moveToPending = async (req, res) => {

  try {

    const { order_id } = req.params;
    const { waiting_time, reason } = req.body;

    await db.query(
      `
      UPDATE orders
      SET order_status='PENDING'
      WHERE id=?
      `,
      [order_id]
    );

    await db.query(
      `
      UPDATE order_tracking
      SET
      waiting_time=?,
      pending_reason=?
      WHERE order_id=?
      `,
      [waiting_time, reason, order_id]
    );

    res.json({
      success: true,
      message: "Moved to pending"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   GET PENDING ORDERS
========================================================= */

const getPendingOrders = async (req, res) => {

  try {

    const vendor_id = req.user.vendor_id;

    const [rows] = await db.query(
      `
      SELECT
        o.*,
        ot.waiting_time,
        ot.pending_reason
      FROM orders o
      LEFT JOIN order_tracking ot
      ON ot.order_id=o.id
      WHERE o.vendor_id=?
      AND o.order_status='PENDING'
      `,
      [vendor_id]
    );

    res.json(rows);

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   ASSIGN ORDER
========================================================= */

const assignOrder = async (req, res) => {

  try {

    const { order_id } = req.params;
    const { rider_id } = req.body;

    await db.query(
      `
      UPDATE orders
      SET order_status='ASSIGNED'
      WHERE id=?
      `,
      [order_id]
    );

    await db.query(
      `
      UPDATE order_tracking
      SET
      rider_id=?,
      assigned_at=NOW()
      WHERE order_id=?
      `,
      [rider_id, order_id]
    );

    res.json({
      success: true,
      message: "Order assigned"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   OUT FOR DELIVERY
========================================================= */

const outForDelivery = async (req, res) => {

  try {

    const { order_id } = req.params;

    await db.query(
      `
      UPDATE orders
      SET order_status='OUT_FOR_DELIVERY'
      WHERE id=?
      `,
      [order_id]
    );

    res.json({
      success: true,
      message: "Out for delivery"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

/* =========================================================
   DELIVER ORDER
========================================================= */

const deliverOrder = async (req, res) => {

  try {

    const { order_id } = req.params;

    await db.query(
      `
      UPDATE orders
      SET
      order_status='DELIVERED',
      payment_status='PAID'
      WHERE id=?
      `,
      [order_id]
    );

    await db.query(
      `
      UPDATE order_tracking
      SET delivered_at=NOW()
      WHERE order_id=?
      `,
      [order_id]
    );

    res.json({
      success: true,
      message: "Order delivered"
    });

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" });
  }
};

module.exports = {
  getVendorOrders,
  acceptOrder,
  cancelOrder,
  getAcceptedOrders,
  moveToPending,
  getPendingOrders,
  assignOrder,
  outForDelivery,
  deliverOrder
};