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


// update the product
adminRouter.put("/admin/update-product/:id", admin, async (req, res) => {
  try {
    const { id } = req.params;
    const product = await Product.findByIdAndUpdate(id, req.body);
    if(!product){
      return res.status(400).json({message: `cannot find the product with this id`} )
    }
    const updateProduct = await Product.findById(id);
    res.json(updateProduct)
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = adminRouter;
