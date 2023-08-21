import { Response, Request } from "express";

// import { Pool } from "pg";

import { pool } from "../config/index";

import { v4 } from "uuid";

const bcrypt = require("bcrypt");

export const registeration = async (res: Response, req: Request) => {
  try {
    // request from the body
    const { username, email, age, gender, userdetails } = req.body();

    //   generating random ids

    const userid = v4();

    //generating a salt

    const salt = await bcrypt.genSalt(10);
    const password = await bcrypt.hash(req.body.password, salt);

    // connection to the database
    const newUser = pool.query(
      `
      insert into users (userid, username, email, gender, age ,password, userid)
    values (userid, username, email, gender, age, password, userid)`,
      [userid, username, email, age, gender, password, userdetails]
    );

    console.log(newUser);

    // res.status(200).json((await newUser).rows[0]);
    res.status(200).json({
      message: "Sign up was successful",
    });
  } catch (error) {
    res.status(400).json({
      message: "Sign up failed",
    });
  }
};
