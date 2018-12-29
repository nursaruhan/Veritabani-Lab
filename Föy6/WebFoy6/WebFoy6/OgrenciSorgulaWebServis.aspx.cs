using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class OgrenciSorgulaWebServis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSorgula_Click(object sender, EventArgs e)
        {
            WebServiceOgrenciSorgu servis = new WebServiceOgrenciSorgu();
            int id;
            id = Convert.ToInt32(TextBoxOgrenciID.Text);
            GridViewSorgu.DataSource = servis.OgrenciSorgula(id);
        }
    }
}