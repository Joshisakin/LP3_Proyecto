using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public Vehiculos 
    {
        public int Vehiculo_id { get; set; }
        public decimal Capacidad { get; set; }
        public string Matricula { get; set; }
        public int Chofer_id { get; set; }
        public int Modelo_id { get; set; }
        public int Destino_vehiculo { get; set; }
        public int Os_id { get; set; }
    }
}