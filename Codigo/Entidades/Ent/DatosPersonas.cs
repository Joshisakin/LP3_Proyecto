using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class DatosPersonas
    {
        public int Datos_id { get; set; }
        public DateTime Fecha_de_nacimineto { get; set; }
        public string Nombre_apellidos { get; set; }
        public int Pais_id { get; set; }
        public int Equipaje_id { get; set; }
        public decimal Edad_campo_calculado { get; set; }
    }
}