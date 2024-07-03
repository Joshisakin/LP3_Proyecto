using Entidades.Ent;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AcceDatos.ConexClases;

namespace Reglas.Negocio
{
    public class RnRubro
    {
        public static string Insertar(string Nombre)
        {
            DRubro Datos = new DRubro();
            string Existe = Datos.Existe(Nombre);
            if (Existe.Equals("1"))
            {
                return "La categoría ya existe";
            }
            else
            {
                RubrosEmpresas Obj = new RubrosEmpresas();
                Obj.Designacion_rubro = Nombre;
                return Datos.Insertar(Obj);
            }
        }
    }
}
