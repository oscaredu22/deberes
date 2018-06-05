using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nuevaCalculadora
{
    class Program
    {
         private double memoria = 0;
        public void sumar (double sumando1, double sumando2)
        {
            memoria = sumando1 + sumando2;
            return memoria;
        }
        public void restar (double minuendo, double sutraendo)
        {
            memoria = minuendo - sutraendo;
            return memoria;
        }
        public void multiplicar (double multiplicando, double multiplicador)
        {
            memoria = multiplicando * multiplicador;
            return memoria;
        }
        public void dividir (double dividendo, double divisor)
        {
            memoria = dividendo + divisor;
            return memoria;
        }
        public void double  Raiz(double radicando)
    {  
            memoria Math.Sqrt(radicando);
     		return memoria;           
    }
        public void double  Raiz()
    {    
            memoria = Math.Sqrt(memoria);
            return memoria;
    }
    }
}
