using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void FakulteEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fakulte.aspx");
        }
        protected void BolumEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bolum.aspx");
        }
        protected void OgrenciEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciEkle.aspx");
        }
        protected void OgrenciSorgula_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciSorgula.aspx");
        }
        protected void OgrenciSorgulaWeb_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebServiceOgrenciSorgu.asmx");
        }
    }
}