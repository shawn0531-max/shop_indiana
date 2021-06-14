const db = require('../db');
const ExpressError = require("../helpers/expressError");

class Company{

    /** Get all company categories**/

    static async getCategories(){
        const categories = await db.query(`SELECT DISTINCT comp_type FROM companies`);

        if (categories.rows.length === 0){
            return new ExpressError("There are no categories yet. Please check again later.", 404);
        };

        return categories.rows;
    };

    /** Get all companies **/
    
    static async getAllCompanies(){
        const allCompanies = await db.query(`SELECT comp_name FROM companies`);

        if (allCompanies.rows.length === 0){
            return new ExpressError("There are no companies yet. Please check again later.", 404);
        };

        return allCompanies.rows;
    };
    /** Get all company names in a category **/

    static async getCompanies(category){
        const companies = await db.query(`SELECT id, comp_name, info, logo FROM companies WHERE comp_type = $1`, [category]);

        if (companies.rows.length === 0){
            return new ExpressError("There are no companies available in this category yet. Please check again later.", 404)
        };

        return companies.rows;
    };

    /** Get information on a company with associated id **/

    static async getCompanyInfo(compId){
        const info = await db.query(`SELECT * FROM companies WHERE id = $1`, [compId]);

        if (info.rows.length === 0){
            return new ExpressError("There is no company listed", 404);
        };

        return info.rows;
    };
};

module.exports = Company;