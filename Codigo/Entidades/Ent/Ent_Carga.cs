using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ent_Carga
    {
        public int Carga_ID {get; set;}
        public float Peso {get; set;}
        public string Descripcion {get; set;}
        public int Procedencia {get; set;}
        public int Mercancia_ID {get; set;}
    }
}