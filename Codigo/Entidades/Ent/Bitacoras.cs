using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Bitacoras
    {
        public int Bitacora_Id { get; set; }
        public DateTime Fecha_Entrada { get;set; }
        public string Nota { get; set; }
        public int Ciudadad_ID { get; set; }
    }
}
