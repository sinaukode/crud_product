
const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');
const { body, validationResult } = require('express-validator');

// router.post('/insertProduct', productController.productInsert);

router.post('/insertProduct', [
    // Name, SKU, Image, Price, Description
    body('name').notEmpty().withMessage('Name is required'),
    body('sku').notEmpty().withMessage('SKU is required'),
    body('image').notEmpty().withMessage('Image is required'),
    body('price').notEmpty().isNumeric().withMessage('Price is required & Numeric'),
], (req, res) => {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(422).json({ status: 'nok',data: errors.array() });
    }else{
        productController.productInsert(req,res)
    }

});




router.post('/updateProduct',
    [
        // Name, SKU, Image, Price, Description
        body('sku').notEmpty().withMessage('SKU is required'),

    ], (req, res) => {

        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(422).json({status: 'nok', data: errors.array()});
        } else {
            productController.productUpdate(req, res)
        }
    });
router.post('/productDelete/:sku', productController.productDelete);
router.get('/productList', productController.productGetData);
router.get('/productDetail/:sku', productController.productDataDetail);



module.exports = router;
