using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AppServicioEntregaPaquetes.Modelo;

namespace AppServicioEntregaPaquetes.Datos
{
    public class PackagesRepositories
    {
        private static List<Package> data = new List<Package>();
        private static List<Person> people = new List<Person>();

        Person sender = new Person(001, "Alfredo Rodelo", "Barrio Buenos Aires Dig 46",
        "Cartagena", "Bolívar", 23233);

        Person recipients = new Person(002, "Edwin Puertas", "Barrio Campestre C:",
            "Cartagena", "Bolívar", 23232);

        public PackagesRepositories()
        {
            //people.Add(sender);
            //people.Add(recipients);

        }

        public IEnumerable<Package> getPackages()
        {


            /*OrdinaryPackage package1 = new OrdinaryPackage("001", sender, addresse, 12.0, 1000.00, 5, 2000.0);*/
            //OvernightPackage package2 = new OvernightPackage("002", sender, recipients, 12.0, 2300.00, 2000.0);
            //TwoDayPackage package3 = new TwoDayPackage("003", sender, recipients, 12.0, 1500.00, 1500.00);

            //data.Add(package2);
           // data.Add(package3);

            return data;
        }

        public void addPerson(Person p)
        {
            people.Add(p);
        }

        public void addPackage(Package p)
        {
            data.Add(p);
        }

        public IEnumerable<Person> getPeople()
        {

            return people;
        }
    }
}