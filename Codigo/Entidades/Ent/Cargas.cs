using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Cargas
    {
        public int Carga_id { get; set; }
        public decimal Peso { get; set; }
        public string Descripcion { get; set; }
        public int Procedencia { get; set; }
        public int Mercancia_id { get; set; }
    }
}