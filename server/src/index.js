import express from "express";
import dotenv from "dotenv";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import cookieParser from "cookie-parser";
import Getuser from "./utils/Getuser.js";
import { productmodel } from "./models/food.js";
import cors from "cors";

const app = express();
app.use(express.json());
app.use(cors());
app.use(cookieParser());
dotenv.config();

app.get("/", (req, res) => {
  res.send("Server running good");
});

//post requests
app.post("/signup", async (req, res) => {
  const { username, email, password } = req.body;
  try {
    const isuser = await usermodel.findOne({ email });
    if (isuser) {
      res.json({ message: "User already exist try to login", success: false });
    } else {
      const newuser = await usermodel.create({
        email,
        username,
        password: bcrypt.hashSync(password, 12),
      });
      const token = jwt.sign({ id: newuser._id }, process.env.secretkey, {
        expiresIn: "1y",
      });
      res.cookie("Token", token);
      res.json({ message: "User created succefully", success: true });
    }
  } catch (err) {
    console.log(err);
    res.json({ message: err, success: false });
  }
});

app.post("/signin", async (req, res) => {
  const { email, password } = req.body;
  try {
    const isuser = await usermodel.findOne({ email });
    if (!isuser) {
      res.json({ message: "Cant find user try to login", success: false });
    } else {
      const iscorrectpassword = bcrypt.compareSync(password, isuser.password);
      if (iscorrectpassword) {
        const token = jwt.sign({ id: isuser._id }, process.env.secretkey, {
          expiresIn: "1y",
        });
        res.cookie("Token", token);
      } else {
        res.json({ message: "Wrong password", success: false });
      }
    }
  } catch (err) {
    res.json({ messgae: `Error while signin ${err}`, success: false });
  }
});

app.post("/addtocart", async (req, res) => {
  const { id } = req.body;
  try {
    const token = req.cookies.Token;
    const user = Getuser(token);
    const product = await productmodel.findOne({ _id: id });
    const usercart = await usermodel
      .findOneAndUpdate(
        { _id: user.id },
        {
          $push: { cartItems: product._id },
        }
      )
      .populate("cartItems");
    res.json({ data: usercart.cartItems });
  } catch (err) {
    res.json({ message: "Error while adding to cart", success: false });
  }
});

// get requests
app.get("/cartitems", async (req, res) => {
  try {
    const token = req.cookies.Token;
    const user = Getuser(token);
    const usercart = await usermodel
      .findOne({ _id: user.id })
      .populate("cartItems");
    res.send(user.cartItems);
  } catch (err) {
    res.json({ message: "Error while checking cartitems", success: false });
  }
});

//server listener
app.listen(process.env.PORT, () => {
  console.log("Server running on ", process.env.PORT);
});
