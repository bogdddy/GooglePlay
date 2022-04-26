require('dotenv').config();
var mysql = require('mysql');

describe("Scraping de packages", () => {
    test('Connexió a la BD correcta', () => {
      const connection = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_DATABASE
      });
      connection.connect(function() {
        expect(connection.state).toBe('connected');
      });
      connection.end();
    });
});