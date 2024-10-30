import jwt from "jsonwebtoken";

const Getuser = (token) => {
  try {
    const decode = jwt.verify(token, process.env.secretkey);
    return decode;
  } catch (err) {
    console.log(err);
  }
};

export default Getuser;
