using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppServicioEntregaPaquetes.Modelo
{
    public class OvernightPackage : Package
    {
        #region "Atributos"
        private double additionalCharge;
        #endregion

        #region "Propiedades"
        public double AdditionalCharge
        {
            get { return additionalCharge; }
            set { additionalCharge = value; }
        }
        #endregion

        #region "Constructores"
        public OvernightPackage()
            : base()
        {
            this.additionalCharge = 0.0;
        }

        public OvernightPackage(string code, Person sender, Person recipients, double weight, double cost, double additionalCharge)
            : base(code, sender, recipients, weight, cost)
        {
            this.additionalCharge = additionalCharge;
        }
        #endregion

        #region "Métodos SobreEscritos"
        public override string ToString()
        {
            return base.ToString() +
                               "\nAdditional Charge: " + this.additionalCharge +
                               "\n_______________________________________";
        }
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            OvernightPackage o = (OvernightPackage)obj;
            bool result = false;

            if (base.Equals(o) && (this.additionalCharge == o.additionalCharge))

                result = true;

            return result;
        }
        #endregion

        #region "Métodos"

        public override double calculateCost()
        {
            return (base.Weight * (base.Cost + this.additionalCharge));
        }

        #endregion

    }
}