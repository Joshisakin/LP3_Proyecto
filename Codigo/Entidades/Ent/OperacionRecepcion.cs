using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class OperacionRecepcion
    {
        public int Contenedor_id { get; set; }
        public int Carga_id { get; set; }
        public int Recepcion_id { get; set; }
        public DateTime Fecha { get; set; }
        public int Maquinaria_id { get; set; }
    }
}