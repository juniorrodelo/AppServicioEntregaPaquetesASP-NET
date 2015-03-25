using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppServicioEntregaPaquetes.Modelo
{
    class TwoDayPackage : Package
    {

        #region "Atributos"
        private double fixedFee;
        #endregion

        #region "Propiedades"
        public double FixedFee
        {
            get { return fixedFee; }
            set { fixedFee = value; }
        }
        #endregion

        #region "Constructores"
        public TwoDayPackage()
            : base()
        {
            this.fixedFee = 0.0;
        }

        public TwoDayPackage(string code, Person sender, Person recipients, double weight, double cost, double fixedFee)
            : base(code, sender, recipients, weight, cost)
        {
            this.fixedFee = fixedFee;
        }
        #endregion

        #region "Métodos SobreEscritos"
        public override string ToString()
        {
            return base.ToString() +
                               "\nFixed Fee: " + this.fixedFee +
                               "\n_______________________________________";
        }
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            TwoDayPackage o = (TwoDayPackage)obj;
            bool result = false;

            if (base.Equals(o) && (this.fixedFee == o.fixedFee))

                result = true;

            return result;
        }
        #endregion

        #region "Métodos"

        public override double calculateCost()
        {

            return ((this.Weight * this.Cost) + this.fixedFee);
        }

        #endregion

    }

}