const mysql = require("mysql2/promise");

const conexion = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "123456789",
    database: "EmpresaPersonal"
});

module.exports = conexion;