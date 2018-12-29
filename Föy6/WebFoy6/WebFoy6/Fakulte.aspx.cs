using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class Fakulte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FakulteBilgileriniGetir();
        }
        protected void ButtonFakulteEkle_Click(object sender, EventArgs e){
            try
            {
                vtys6Entities db = new vtys6Entities();
                tFakulte fakulte = new tFakulte();
                fakulte.fakulteAd = TextBoxFakulteAdi.Text.ToString();
                db.tFakultes.Add(fakulte);
                db.SaveChanges();
                errorLabel.Text = "Kayıt Başarılı";
                FakulteBilgileriniGetir();
            }
            catch (Exception){
                errorLabel.Text = "Kayıt Başarısız.";
            }
        }
        public void FakulteBilgileriniGetir(){
            vtys6Entities db = new vtys6Entities();
            GridViewFakulte.DataSource = db.tFakultes.ToList();
            GridViewFakulte.DataBind();
        }
    }
}