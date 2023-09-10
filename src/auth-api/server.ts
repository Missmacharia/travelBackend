import express from "express";

import dotenv from "dotenv";

import cors from "cors";

dotenv.config();

import authRoutes from "./routes/authRoutes";

const app = express();

app.use(express.json());

app.use(cors());

app.use("/api", authRoutes);

app.listen(4000, () => {
  console.log(`Server is running ${4000}`);
});
