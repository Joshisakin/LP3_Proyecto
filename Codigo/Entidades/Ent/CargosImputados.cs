using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class CargosImputados
    {
        public int Delitos_id { get; set; }
        public string Lista_cargos { get; set; }
        public DateTime Fecha_emision_detencion { get; set; }
    }
}