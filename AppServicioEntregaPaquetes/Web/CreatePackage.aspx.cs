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
    public partial class CreatePackage : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            double weight = double.Parse(tbWeight.Text);
            double costG = double.Parse(tbCosG.Text);

            string shipping_type= type.SelectedItem.Value;

            Person senderObj = (Person)sender2.DataSource;
            Person receiptObj = (Person)receipt2.DataSource;


            if (shipping_type == "twodaypackage")
            {
                double FixedFee = double.Parse(tbFixedFee.Text);
                TwoDayPackage p1 = new TwoDayPackage(tbCode.Text, senderObj, receiptObj, weight, costG, FixedFee);
                PackagesRepositories pp = new PackagesRepositories();

                pp.addPackage(p1);
            }

            else if (shipping_type == "ordanypackage")
            {
                byte days = byte.Parse(tbDays.Text);
                OrdinaryPackage p2 = new OrdinaryPackage(tbCode.Text, senderObj, receiptObj, weight, costG, days,22.00);
                PackagesRepositories pp = new PackagesRepositories();
                pp.addPackage(p2);
            }

            else if (shipping_type == "overnightpackage")
            {
                double additionalCharge = double.Parse(tbAdditionalCharge.Text);
                OvernightPackage p3 = new OvernightPackage(tbCode.Text, senderObj, receiptObj, weight, costG, additionalCharge);
                PackagesRepositories pp = new PackagesRepositories();

                pp.addPackage(p3);
            }

            
            Response.Redirect("CreatePackage.aspx");
        }
    
    }
}