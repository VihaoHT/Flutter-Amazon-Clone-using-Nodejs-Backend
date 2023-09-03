const express = require("express");
const mongoose = require("mongoose");
const app = express();
const PORT = 3000;
const DB = "mongodb+srv://haoanna1232:Vihao1235@cluster0.mbmsav6.mongodb.net/?retryWrites=true&w=majority";

const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);


//connection mongoose
mongoose.connect(DB).then(()=>{
    console.log('Connection successful');
}).catch(e =>{
    console.log(e);
});
app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
