// const express = require("express");
// const router = express.Router();
// const orderController = require("../controllers/orderController");
// const authVendor = require("../middleware/authVendor");
// const { protect, isSuperAdminorAdmin } = require("../middleware/authMiddleware");

// // Stats (today + total counts)
// router.get("/stats", authVendor, orderController.getOrderStats);

// // List orders — ?status=pending|new|placed|assigned|cancelled&startDate=&endDate=&search=
// router.get("/", authVendor, orderController.getAllOrders);

// // Single order
// router.get("/:id", authVendor, orderController.getOrderById);

// // Create order (vendor-scoped when authenticated)
// router.post("/", authVendor, orderController.createOrder);

// // Full update
// router.put("/:id", authVendor, orderController.updateOrder);

// // Status only
// router.patch("/:id/status", authVendor, orderController.updateOrderStatus);

// // Approve placed order → New
// router.patch("/:id/approve", authVendor, orderController.approveOrder);

// // Reject / cancel
// router.patch("/:id/reject", authVendor, orderController.rejectOrder);
// router.patch("/:id/cancel", authVendor, orderController.cancelOrder);

// // Assign rider + route
// router.patch("/:id/assign", authVendor, orderController.assignRider);

// // Admin delete
// router.delete("/:id", protect, isSuperAdminorAdmin, orderController.deleteOrder);

// module.exports = router;
const express = require("express");
const router = express.Router();

const orderController = require("../controllers/orderController");
const { protect } = require("../middleware/authMiddleware");

/* ===========================
   ORDERS
=========================== */

router.get(
  "/vendor/orders",
  protect,
  orderController.getVendorOrders
);

router.post(
  "/vendor/orders/:order_id/accept",
  protect,
  orderController.acceptOrder
);

router.post(
  "/vendor/orders/:order_id/cancel",
  protect,
  orderController.cancelOrder
);

/* ===========================
   NEW ORDERS
=========================== */

router.get(
  "/vendor/orders/accepted",
  protect,
  orderController.getAcceptedOrders
);

/* ===========================
   PENDING
=========================== */

router.post(
  "/vendor/orders/:order_id/pending",
  protect,
  orderController.moveToPending
);

router.get(
  "/vendor/orders/pending/list",
  protect,
  orderController.getPendingOrders
);

/* ===========================
   ASSIGN
=========================== */

router.post(
  "/vendor/orders/:order_id/assign",
  protect,
  orderController.assignOrder
);

/* ===========================
   DELIVERY
=========================== */

router.post(
  "/vendor/orders/:order_id/out-delivery",
  protect,
  orderController.outForDelivery
);

router.post(
  "/vendor/orders/:order_id/deliver",
  protect,
  orderController.deliverOrder
);

module.exports = router;