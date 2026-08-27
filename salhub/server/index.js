const express = require("express");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");

const PORT = 3000;
const DB =
  "mongodb+srv://vireakrom69_db_user:lvEhW4TBVAT6gjI0@cluster0.jfklle6.mongodb.net/?appName=Cluster0";
const app = express();

app.use(express.json());
app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connect Successful");
  })
  .catch((e) => {
    console.log(e);
  });
app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
