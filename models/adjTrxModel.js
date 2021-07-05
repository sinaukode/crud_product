const knex = require('../util/knex');
const moment = require('moment');
const product = require('./productModel');

const insertAdjusTrx = async (data) => {

    try {
        //checkSKU
        let sku = await product.checkSku(data.sku)
        if (sku.length > 0) {
            await knex.insert(data).into('tb_adj_trx')
            return {
                status: 'ok',
                message: 'Insert Qty Success'
            }

        } else {
            return {
                status: 'nok',
                message: 'SKU not found'
            }
        }


    } catch (e) {
        console.log(e)
        return {
            status: 'nok',
            data: e,
            message: 'Insert Failed'
        }
    }

};


const updateAdjusTrx = async (data) => {

    try {
        let sku = await product.checkSku(data.sku)
        let adj_id = await checkID(data.adj_id)

        if (sku.length > 0 && adj_id.length > 0) {
            await knex('tb_adj_trx')
                .where('adj_id', '=', data.adj_id)
                .update(data)

            return {
                status: 'ok',
                message: 'Update Success'
            }
        }else{
            return {
                status: 'nok',
                message: 'SKU or ID not found'
            }
        }

    } catch (e) {
        return {
            status: 'nok',
            data: e,
            message: 'Update Failed'
        }
    }

};


const getListData = async (page) => {

    try {
        // Name, SKU, Image, Price, Stock
        const limit = 5;

        const offset = page ? (page - 1) * limit : 0

        let result = await knex.raw(`select adj_id,adj.sku,qty,(qty * p.price) amount from tb_adj_trx adj join tb_product p on  adj.sku = p.sku 
GROUP BY 1,2,3,4 limit ? offset ?`, [limit, offset])

        console.log(offset)

        let output = {

            status: 'ok',
            page_count: result.rows.length,
            page_number: page,
            data: result.rows
        }

        // console.log(output)

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


const getDetail = async (adjID) => {

    try {
        // Name, SKU, Image, Price, Stock, Description

        let result = await knex.raw(`select adj_id,adj.sku,qty,(qty * p.price) amount from tb_adj_trx adj 
        join tb_product p on  adj.sku = p.sku  where 
        adj_id = ?`, [adjID]);


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


const deleteData = async (id) => {

    try {
        let check = await checkID(id)

        if(check.length > 0){
            await knex('tb_adj_trx')
                .where('adj_id', id)
                .del()

            return {
                status: 'ok',
                message: 'delete Success'
            }
        }else{
            return {
                status: 'nok',
                message: 'ID not found'
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

const checkID = async (id) => {

    try{
        let result = await knex.select('adj_id','sku','qty'
        ).table('tb_adj_trx')
            .where('adj_id', id)
        // console.log(result)

        return result

    }catch (e) {
        return 'Data not Found'
    }

}


module.exports = {
    insertAdjusTrx
    , updateAdjusTrx
    , getListData
    , getDetail
    , deleteData
}
