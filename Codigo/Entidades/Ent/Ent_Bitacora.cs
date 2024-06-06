using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    internal class Ent_Bitacora
    {
        public int bitacora_Id { get; set; }
        public DateTime Fecha_Entrada { get;set; }
        public string Nota { get; set; }
        public int Ciudadad_ID { get; set; }
    }
}
