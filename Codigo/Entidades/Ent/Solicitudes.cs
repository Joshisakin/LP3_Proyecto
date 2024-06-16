using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Solicitudes 
    {
        public int Solicitud_id { get; set; }
        public DateTime Hora_primer_contacto { get; set; }
        public string Estado_aprobacion { get; set; }
    }
}