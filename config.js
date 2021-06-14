/** Shared config for application; can be req'd many places. */

require('dotenv');

const SECRET_KEY = process.env.SECRET_KEY || 'development-secret-key';

const PORT = +process.env.PORT || 5000;

const DB_URI =
  (process.env.NODE_ENV === 'test')
    ? 'postgresql:///shopIndiana_test'
    : 'postgresql:///shopIndiana';

module.exports = {
  SECRET_KEY,
  PORT,
  DB_URI
};