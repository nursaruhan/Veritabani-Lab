using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class FakulteSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FakulteBilgileriniGetir();
        }
        protected void ButtonFakulteSil_Click(object sender, EventArgs e)
        {
            try
            {
                vtys6Entities db = new vtys6Entities();
                tFakulte fakulte = new tFakulte();
                int id = Convert.ToInt32(TextBoxFakulteId.Text);
                var sorgu = db.tFakultes.Where(w => w.fakulteID == id).FirstOrDefault();
                db.tFakultes.Remove(sorgu);
                db.SaveChanges();
                errorLabel.Text = "Başarılı";
                FakulteBilgileriniGetir();
            }
            catch (Exception)
            {
                errorLabel.Text = " Başarısız.";
            }
        }
        public void FakulteBilgileriniGetir()
        {
            vtys6Entities db = new vtys6Entities();
            GridViewFakulte.DataSource = db.tFakultes.ToList();
            GridViewFakulte.DataBind();
        }
    }
}