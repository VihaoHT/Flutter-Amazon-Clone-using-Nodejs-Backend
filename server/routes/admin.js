const express = require("express");
const adminRouter = express.Router();
const admin = require("../middleware/admin");
const {Product} = require("../models/product");
//add product
adminRouter.post("/admin/add-product", admin, async (req, res) => {
  try {
    const { name, description, quantity, category, price, images } = req.body;
    let product = new Product({
      name,
      description,
      quantity,
      category,
      price,
      images,
    });
    product = await product.save();
    res.json(product);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

//get all products
adminRouter.get("/admin/get-products", admin,async (req,res)=>{
  try{
    const product = await Product.find({});
    res.json(product); 

  }catch(e){
    res.status(500).json({error: e.message});
  }
});

// Delete the product
adminRouter.post("/admin/delete-product", admin, async (req, res) => {
  try {
    const { id } = req.body;
    let product = await Product.findByIdAndDelete(id);
    res.json(product);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = adminRouter;
