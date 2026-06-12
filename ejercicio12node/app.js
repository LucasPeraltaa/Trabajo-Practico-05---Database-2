const conexion = require("./db");

async function insertarPersona() {

    try {

        await conexion.query(
            "CALL InsertarPersona(?, ?)",
            ["Gonzalez", "Maria"]
        );

        console.log("Persona insertada correctamente");

    } catch (error) {

        console.error(error);

    }
}

insertarPersona();