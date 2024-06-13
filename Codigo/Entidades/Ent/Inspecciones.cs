using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Inspecciones
    {
        public int Inspeccion_id { get; set; }
        public DateTime Fecha_y_hora { get; set; }
        public string Resultados { get; set; }
        public int Requiza_id { get; set; }
        public int Tipo_inspec_id { get; set; }
        public int Inspector_id { get; set; }
        public int Agente_id { get; set; }
    }
}