const adjustTrx = require('../models/adjTrxModel');


const insertAdjustTrx = async (req, res, next) => {

    try{
        let result = await adjustTrx.insertAdjusTrx(req.body);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }

};

const updateAdjustTrx = async (req, res, next) => {


    // console.log(req.body)
    try{
        let result = await adjustTrx.updateAdjusTrx(req.body);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }

}



const getListData = async (req, res, next) => {

    let page = (req.query.page) ? req.query.page : 1
    try{
        let result = await adjustTrx.getListData(page);
        res.status(200);
        res.json(result);
    }
    catch (e) {
        res.status(400);
        res.json(e);
    }
}


const dataDetail = async (req, res, next) => {

    try{

        let adjId = req.params.adj_id;

        if(adjId){
            let result = await adjustTrx.getDetail(adjId);
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



const deleteData = async (req, res, next) => {

    try{
        let id = req.params.adj_id;

        if(id){
            let result = await adjustTrx.deleteData(id);

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

module.exports = {
    insertAdjustTrx,updateAdjustTrx,getListData,dataDetail,deleteData

}
