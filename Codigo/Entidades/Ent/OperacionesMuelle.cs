using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class OperacionesMuelle
    {
        public int Atraco_id { get; set; }
        public int Muelle_id { get; set; }
        public int Buque_id { get; set; }
        public string Descripcion { get; set; }
        public DateTime Fecha_y_hora { get; set; }
        public int Solicitud_salida { get; set; }
    }
}