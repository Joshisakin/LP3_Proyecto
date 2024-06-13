using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Mercancia
    {
        public int Mercancia_id { get; set; }
        public string Nombre { get; set; }
        public float Precio { get; set; }
        public int Categoria_id { get; set; }
    }
}