const express = require("express");

const dotenv = require("dotenv");

const cors = require("cors");

dotenv.config();

const authRoutes = require("./auth-api/routes/authRoutes");

const app = express();

app.use(express.json());

app.use(cors());

app.use("/api", authRoutes);

app.listen(process.env.port || 5432, () => {
  console.log(`Server is running ${5432}`);
});
