using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppServicioEntregaPaquetes.Modelo
{
    public class Person
    {

        #region "Atributos"
        private long id;
        private string name;
        private string address;
        private string city;
        private string state;
        private long box;
        #endregion

        #region "Propiedades"
        public long Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string City
        {
            get { return city; }
            set { city = value; }
        }
        public string State
        {
            get { return state; }
            set { state = value; }
        }
        public long Box
        {
            get { return box; }
            set { box = value; }
        }
        #endregion

        #region "Constructores"
        public Person()
        {
            this.id = 12345;
            this.name = "nombre y Apellidos";
            this.address = "Mi dirección";
            this.city = "Mi Ciudad";
            this.state = "Bolivar";
            this.box = 13001;

        }
        public Person(long id, string name, string address, string city, string state, long box)
        {
            this.id = id;
            this.name = name;
            this.address = address;
            this.city = city;
            this.state = state;
            this.box = box;

        }
        #endregion

        #region "Métodos SobreEscritos"
        public override string ToString()
        {
            return "\nIdentification: " + this.id +
                    "\nNames: " + this.name +
                    "\nAddress: " + this.address +
                    "\nCity: " + this.city +
                    "\nState/Province: " + this.state +
                    "\nPostal Code: " + this.box;
        }
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            Person o = (Person)obj;
            bool result = false;

            if ((this.id == o.id) &&
                (this.name == o.name) &&
                (this.address == o.address) &&
                (this.city == o.city) &&
                (this.state == o.state) &&
                (this.box == o.box))

                result = true;

            return result;
        }
        #endregion

    }
}
