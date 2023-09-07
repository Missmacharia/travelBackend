import express = require("express");

const { register } = require("../controllers/authController.ts");

const router = express.Router();

router.post("/register", register);

export default router;
