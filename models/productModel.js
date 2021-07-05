const getID = require("../helper/getID")
const knex = require('../util/knex');
const moment = require('moment');

const insert = async (data) => {

    try {
        // console.log(data)
        let sku = await checkSku(data.sku)

        if (sku.length === 0) {


            await knex.insert(data).into('tb_product')
            return {
                status: 'ok',
                message: 'Insert Product Success'
            }
        } else {

            return {
                status: 'nok',
                message: 'SKU already exists '
            }

        }


    } catch (e) {
        console.warn(e)
        return {
            status: 'nok',
            data: e,
            message: 'Insert Failed'
        }
    }

};


const update = async (data) => {

    try {

        let sku = await checkSku(data.sku)

        if (sku.length > 0) {

            await knex('tb_product')
                .where('sku', '=', data.sku)
                .update(data)

            return {
                status: 'ok',
                message: 'Update Success'
            }
        } else {
            return {
                status: 'nok',
                message: 'SKU not Found'
            }
        }


    } catch (e) {
        console.log(e)
        return {
            status: 'nok',
            data: e,
            message: 'Update Failed'
        }
    }

};

const deleteData = async (sku) => {

    try {
        let sku = await checkSku(sku)

        if (sku.length > 0) {

            await knex('tb_product')
                .where('sku', sku)
                .del()
            //delete adj trx by foreign key sku cascade

            return {
                status: 'ok',
                message: 'delete Success'
            }
        } else {
            return {
                status: 'nok',
                message: 'SKU not Found'
            }
        }

    } catch (e) {
        console.log(e)
        return {
            status: 'nok',
            data: e,
            message: 'delete Failed'
        }
    }

};

const getAllProduct = async (page) => {

    try {
        // Name, SKU, Image, Price, Stock
        const limit = 5;

        const offset = page ? (page - 1) * limit : 0

        let result = await knex.raw(`select p.sku,image,price,sum(qty) stock 
        from tb_product p left join tb_adj_trx adj on p.sku = adj.sku
        GROUP BY 1,2,3 limit ? offset ?`, [limit, offset])


        let output = {

            status: 'ok',
            products_page_count: result.rows.length,
            page_number: page,
            data: result.rows
        }


        if (result.rows.length > 0) {
            return (output)

        } else {

            output.data = 'Data Not Found'
            return (output)
        }


    } catch (e) {
        console.log(e)
        return {
            status: 'nok',
            data: e,
            message: 'Get Data Failed'
        }
    }

};


const checkSku = async (sku) => {

    try{
        let result = await knex.select('name', 'sku', 'image',
        ).table('tb_product')
            .where('sku', sku)
        // console.log(result)

        return result

    }catch (e) {
        return 'Data not Found'
    }

}


const getProductDetail = async (sku) => {

    try {
        // Name, SKU, Image, Price, Stock, Description

        let result = await knex.raw(`select p.sku,image,price,sum(qty) as stock 
        from tb_product p left join tb_adj_trx adj on p.sku = adj.sku where 
        sku = ?`, [sku]);


        let output = {
            status: 'ok',
            data: result.rows
        }


        if (result.rows.length > 0) {
            return (output)

        } else {

            output.data = 'Data Not Found'
            return (output)
        }


    } catch (e) {
        console.log(e)
        return {
            status: 'nok',
            data: e,
            message: 'Get Data Failed'
        }
    }

};

module.exports = {
    insert, update, deleteData, getAllProduct, getProductDetail, checkSku
}
