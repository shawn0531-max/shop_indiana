/** Database connection for ShopIndiana. */

const { Client } = require("pg");

const client = new Client(process.env.DATABASE_URL || "postgresql:///shopIndiana");

client.connect();


module.exports = client;