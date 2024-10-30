import { Schema, Types } from "mongoose";

const schema = Schema({
  username: {
    type: String,
    required: true,
    unique: true,
  },
  email: {
    type: String,
    required: true,
    unique: true,
  },
  cartItems: [
    {
      type: Types.ObjectId,
      ref: "food",
    },
  ],
});

export const 
