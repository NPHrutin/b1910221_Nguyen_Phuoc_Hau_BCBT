// import express 
import express from 'express';

// ------ SAN PHAM -------
import {
    showProducts,
    showProductById,
    createProduct,
    updateProduct,
    deleteProduct,
} from "../controllers/Product.js";

// ------ SAN PHAM -------
import {
    showHomes,
    showHomeById,
    createHome,
    updateHome,
    deleteHome,
} from "../controllers/Home.js";



// const product = require("../controllers/Product")



// init express router
const router = express.Router();

// -------------------------------- PRODUCT --------------------------------

// get all Product
router.get("/api/Products", showProducts);

// get single Product 
router.get("/api/Products/:id", showProductById);

// create Product
router.post("/api/Products", createProduct);

// update Product 
router.put("/api/Products/:id", updateProduct);

// delete Product
router.delete("/api/Products/:id", deleteProduct);

// -------------------------------- PRODUCT --------------------------------
// get all Product
router.get("/api/Homes", showHomes);

// get single Home 
router.get("/api/Homes/:id", showHomeById);

// create Home
router.post("/api/Homes", createHome);

// update Home 
router.put("/api/Homes/:id", updateHome);

// delete Home
router.delete("/api/Homes/:id", deleteHome);

export default router;
