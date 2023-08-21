import { Pool } from "pg";

const dotenv = require("dotenv");

dotenv.config();

const poolConfigure = {
  user: "postgres",
  database: "travel",
  password: "icecream254",
  host: "localhost",
  port: 5432,
};

console.log(poolConfigure.user);

// creating a new pool

export const pool = new Pool(poolConfigure);

console.log(pool);

const connectionDb = async () => {
  try {
    await pool.connect();

    console.log("Connected to the database");
  } catch (error) {
    console.log("Can't connect to the db :", error);
  }
};

export default connectionDb();
