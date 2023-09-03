const express = require("express");
const productRouter = express.Router();
const auth = require("../middleware/auth");
const Product = require("../models/product");
//get all products
productRouter.get("/api/products/", auth, async (req, res) => {
  try {
    const product = await Product.find({ category: req.query.category });
    res.json(product);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

//search product and get product by name
productRouter.get("/api/products/search/:name", auth, async (req, res) => {
  try {
    const products = await Product.find({
        name: { $regex: req.params.name, $options: "i" },
    });
    res.json(products);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

//rate product
productRouter.post("/api/rate-product", auth, async (req,res)=> {
  try{
    const {id,rating} = req.body;
    let product = await Product.findById(id);

    for(let i=0; i < product.ratings.length; i++){
      if(product.ratings[i].userId == req.user){
        product.ratings.splice(i,1);
        break;
      }
    }

    const ratingSchema = {
      userId: req.user,
      rating,
    };

    product.ratings.push(ratingSchema);
    product = await product.save();
    res.json(product);
  }catch(e){
    res.status(500).json({error: e.message});
  }
});



module.exports = productRouter;