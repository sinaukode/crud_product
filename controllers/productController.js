// const user = require('../models/user');
const product = require('../models/productModel');
// const { validationResult, check } = require('express-validator')

const productInsert = async (req, res, next) => {

    // Name, SKU, Image, Price, Description

    try{
        let result = await product.insert(req.body);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }


};

const productUpdate = async (req, res, next) => {


    console.log(req.body)
    try{
        let result = await product.update(req.body);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }

}

const productDelete = async (req, res, next) => {

    try{
        let id = req.params.sku;
        // console.log(req.body)
        if(id){
            let result = await product.deleteData(id);

            res.status(200);
            res.json(result);
        }else{
            res.status(404);
            res.json({
                status: 'nok',
                data: 'Data Not Found'
            });
        }


    }catch (e) {
        res.status(400);
        res.json(e);
    }



}


const productGetData = async (req, res, next) => {

    let page = (req.query.page) ? req.query.page : 1
    try{
        let result = await product.getAllProduct(page);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }
}


const productDataDetail = async (req, res, next) => {

    try{

        let sku = req.params.sku;

        if(sku){
            let result = await product.getProductDetail(sku);
            res.status(200);
            res.json(result);
        }else{
            res.status(404);
            res.json({
                status: 'nok',
                data: 'Data Not Found'
            });
        }


    }
    catch (e) {
        res.status(400);
        res.json(e);
    }


}



module.exports = {
    productInsert,
    productUpdate,
    productDelete,
    productGetData,
    productDataDetail
}
