using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppServicioEntregaPaquetes.Modelo
{
    public abstract class Package
    {
        #region "Atributos"
        private string code;
        private Person sender;
        private Person recipients;
        private double weight;
        private double cost;
        #endregion

        #region "Propiedades"
        public string Code
        {
            get { return code; }
            set { code = value; }
        }
        public Person Sender
        {
            get { return sender; }
            set { sender = value; }
        }
        public Person Recipients
        {
            get { return recipients; }
            set { recipients = value; }
        }
        public double Weight
        {
            get { return weight; }
            set { weight = value; }
        }
        public double Cost
        {
            get { return cost; }
            set { cost = value; }
        }
        #endregion

        #region "Constructores"

        public Package()
        {
            this.code = "XXXXX";
            this.sender = new Person();
            this.recipients = new Person();
            this.weight = 0.0;
            this.cost = 0.0;
        }

        public Package(string code, Person sender, Person recipients, double weight, double cost)
        {
            this.code = code;
            this.sender = sender;
            this.recipients = recipients;
            this.weight = weight;
            this.cost = cost;
        }

        #endregion

        #region "Métodos SobreEscritos"
       /* public override string ToString()
        {
            return "Code: " + this.code +
                        "\nSender: " + this.sender.ToString() +
                        "\nRecipients: " + this.recipients.ToString() +
                        "\nWight: " + this.weight +
                        "\ncosx " + this.cost +
                        "\n";
                               
        }*/
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            Package o = (Package)obj;
            bool result = false;

            if ((this.code == o.code) &&
                (this.sender == o.sender) &&
                (this.recipients == o.recipients) &&
                (this.weight == o.weight) &&
                (this.cost == o.cost))

                result = true;

            return result;
        }
        #endregion

        #region "Métodos"

        public abstract double calculateCost();
        /*{
            return (this.weight * this.cost);
        }*/

        #endregion

    }
}