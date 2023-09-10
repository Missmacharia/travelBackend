import express = require("express");

const { registerController } = require("../controllers/authController.ts");

const router = express.Router();

router.post("/register", registerController);

export default router;
