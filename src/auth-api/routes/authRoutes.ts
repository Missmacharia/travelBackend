import express = require("express");

const { registeration } = require("../controllers/authController");

const router = express.Router();

router.post("/register", registeration);

module.exports = router;
