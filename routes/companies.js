/** API routes for getting companies and information **/

const express = require("express");
const router = new express.Router();
const Company = require("../models/company");

/** Get list of distinct company categories **/
router.get('/', async function(req, res, nest){
    try {
        let resp = await Company.getCategories();

        if(resp.message){
            return res.status(resp.status).json(resp.message);
        };
        return res.status(200).json(resp);
    } catch (err) {
        return next(err);
    };
});

/** Get list of all companies **/
router.get('/companies', async function(req, res, next){
    try {
       let resp = await Company.getAllCompanies();
       
       if(resp.message){
           return res.status(resp.status).json(resp.message);
       };
       return res.status(200).json(resp);
    } catch (err) {
        return next(err);
    };
});

/** Get list of companies in selected category **/
router.get('/companies/:category', async function(req, res, next){
    const {category} = req.params;

    try {
        let resp = await Company.getCompanies(category);

        if(resp.message){
            return res.status(resp.status).json(resp.message);
        }
        return res.status(200).json(resp);
    } catch (err) {
        return next(err);
    }
});

/** Get list of all company names **/
router.get('/company/:id', async function(req, res, next){
    const {id} = req.params;

    try {
        let resp = await Company.getCompanyInfo(id);

        if(resp.message){
            return res.status(resp.status).json(resp.message);
        }
        return res.status(200).json(resp);
    } catch (err) {
        return next(err);
    }
});

module.exports = router;