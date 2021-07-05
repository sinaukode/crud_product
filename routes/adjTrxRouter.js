
const express = require('express');
const router = express.Router();
const adjController = require('../controllers/adjTrxController');
const { body, validationResult } = require('express-validator');


router.post('/add', [

    body('qty').notEmpty().isNumeric().withMessage('QTY is required'),
    body('sku').notEmpty().withMessage('SKU is required'),

], (req, res) => {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(422).json({ status: 'nok',data: errors.array() });
    }else{
        adjController.insertAdjustTrx(req,res)
    }

});




router.post('/update',
    [
        body('adj_id').notEmpty().withMessage('ID is required'),
        body('qty').notEmpty().isNumeric().withMessage('qty is required & numeric'),
        body('sku').notEmpty().withMessage('SKU is required'),

    ], (req, res) => {

        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(422).json({status: 'nok', data: errors.array()});
        } else {
            adjController.updateAdjustTrx(req, res)
        }
    });

router.post('/delete/:adj_id', adjController.deleteData);
router.get('/list', adjController.getListData);
router.get('/detail/:adj_id', adjController.dataDetail);



module.exports = router;
