using MySql.Data.MySqlClient;
using System.Data;

string conexion =
    "server=localhost;database=EmpresaPersonal;uid=root;pwd=123456789;";

using (MySqlConnection conn = new MySqlConnection(conexion))
{
    try
    {
        conn.Open();

        MySqlCommand cmd =
            new MySqlCommand("InsertarPersona", conn);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("p_Apellido", "Martinez");
        cmd.Parameters.AddWithValue("p_Nombre", "Pedro");

        cmd.ExecuteNonQuery();

        Console.WriteLine("Persona insertada correctamente");
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message);
    }
}