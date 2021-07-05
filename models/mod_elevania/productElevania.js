const request = require("request");

const xml2js = require('xml2js');
// const unirest = require('unirest');

const knex = require('../../util/knex');
// const {attachOnDuplicateUpdate} = require('knex-on-duplicate-update');
// attachOnDuplicateUpdate



let submitTopupRequest = () => {
    // return new Promise(function (resolve, reject) {

    request.get({
            url: `http://api.elevenia.co.id/rest/prodservices/product/listing`,
            method: "GET",
            headers: {
                'Content-Type': 'application/xml',
                'Accept-Charset' : 'utf-8',
                'openapikey': '721407f393e84a28593374cc2b347a98',
            }
        },
        function (error, response, body) {
            console.log("xml body ....\n");
            // console.dir(body);
            if (error) {
                console.dir(error);
                // reject(error);
            } else {

                let parser = new xml2js.Parser();
                parser.parseString(body, async (err, resultz) => {

                    for (let i = 0; i < resultz.Products.product.length; i++) {
                        let prdNo = resultz.Products.product[i].prdNo[0]

                        // await insert (sku,prdNm,price,desc)

                        // console.dir(resultz.Products.product[i].bndlDlvCnYn[0])
                        // console.dir(resultz.Products.product[i].ProductOptionDetails[0])

                        // console.dir(resultz.Products.product[i].ProductOptionDetails[0])

                        let stock = resultz.Products.product[i].ProductOptionDetails[0].stckQty[0]


                        await request.get({
                                url: `http://api.elevenia.co.id/rest/prodservices/product/details/${prdNo}`,
                                method: "GET",
                                headers: {
                                    'Content-Type': 'application/xml',
                                    'Accept-Charset' : 'utf-8',
                                    'openapikey': '721407f393e84a28593374cc2b347a98',
                                }
                            },
                            function (error, response, body) {
                                console.log("xml body ....\n");
                                // console.dir(body);
                                if (error) {
                                    console.dir(error);
                                    // reject(error);
                                } else {

                                    let parser = new xml2js.Parser();
                                    parser.parseString(body, async (err, resp) => {
                                        // console.log(resp)


                                            let sku = resp.Product.sellerPrdCd[0]
                                            let prdNm = resp.Product.prdNm[0]
                                            let image = resp.Product.prdImage01[0]
                                            let price = resp.Product.selPrc[0]
                                            let desc = resp.Product.htmlDetail[0]
                                            // let stocks = stock

                                            console.log(sku)

                                            await insert (sku,prdNm,image,price,desc)


                                    })
                                }

                            })


                    }


                    console.log(`=============================================`)


                });
            }
        });

}

let insert = async (sku,prdNm,image,price,desc,stocks) => {
    try{


        await knex.insert( {
            sku : sku,
            name : prdNm,
            price : price,
            description : desc,
            // stock : stocks,
            image : image,

        })
            .into('tb_product')

    }catch (e) {
        console.log(e)
    }
}



submitTopupRequest()

