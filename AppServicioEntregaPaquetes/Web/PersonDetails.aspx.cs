using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppServicioEntregaPaquetes.Modelo;
using AppServicioEntregaPaquetes.Datos;

namespace AppServicioEntregaPaquetes.Web
{
    public partial class PersonDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            long id = long.Parse(tbId.Text);
            long box = long.Parse(tbBox.Text);

            Person p = new Person(id, tbNames.Text, tbAddress.Text, tbCity.Text,
                                  tbState.Text, box);

            PackagesRepositories pp = new PackagesRepositories();

            pp.addPerson(p);

            Server.Transfer("People.aspx", true);
        }
    }
}