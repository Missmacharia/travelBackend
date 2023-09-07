import express from "express";

const dotenv = require("dotenv");

const cors = require("cors");

dotenv.config();

const authRoutes = require("./auth-api/routes/authRoutes.ts");

const app = express();

app.use(express.json());

app.use(cors());

app.use("/api/register", authRoutes);

app.listen(5432, () => {
  console.log(`Server is running ${5432}`);
});
