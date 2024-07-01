using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Nacionalidad
    {
        public string Duracion_de_estadia { get; set; }
        public string Pasaporte { get; set; }
        public int Pais_id { get; set; }
        public int Ciudades_id { get; set; }
    }
}