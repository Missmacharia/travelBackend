import { Response, Request } from "express";

import { pool } from "../config";

import { v4 } from "uuid";

const bcrypt = require("bcrypt");

export const registerController = async (req: Request, res: Response) => {
  try {
    // request from the body/ destructure

    const { username, email, age, gender, password, userdetails } = req.body;

    // generating random ids

    const userid = v4();

    // generating a salt

    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    // check if the email or username already exists
    // connect to the db
    const existUser = await pool.query(
      `select * from user where userid  = userid or email = email`,
      [username, email]
    );

    if (existUser.rows.length > 0) {
      return res
        .status(400)
        .json({ message: "user already exist. Please sign up again" });
    }

    // insert into the database

    const signup = await pool.query(
      `insert into users (userid, username, email, age, gender, password, userdetails)`,
      [userid, username, email, age, gender, hashedPassword, userdetails]
    );

    return res
      .status(200)
      .json({ message: "Registeration successful", signup });
  } catch (error) {
    return res.status(400).json({ message: "Registration failed" });
  }
};
