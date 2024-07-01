using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Ent
{
    public class Buques
    {
         public int Buque_id { get; set; }
        public int Contenedor_id { get; set; }
        public int Carga_id { get; set; }
        public string Nombre { get; set; }
        public int Ciudades_destino { get; set; }
        public int Ciudad_origen { get; set; }
        public int Inspeccion_ingreso { get; set; }
        public string Omi_id { get; set; }
        public int Bandera_id { get; set; }
        public int Solicitud_atraco { get; set; }
        public int Identificacion_pasajero { get; set; }
    }
}
