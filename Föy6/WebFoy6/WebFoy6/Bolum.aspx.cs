using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class Bolum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BolumBilgileriniGetir(); 
        }
        protected void ButtonBolumEkle_Click(object sender, EventArgs e)
        {
            try
            {
                vtys6Entities db = new vtys6Entities();
                tBolum bolum = new tBolum();
                bolum.bolumAd = TextBoxBolumAdi.Text;
                bolum.fakulteID = Int32.Parse(DropDownListFakulte.SelectedValue);
                db.tBolums.Add(bolum);
                db.SaveChanges();
                errorLabel.Text = "Kayıt Başarılı";
                BolumBilgileriniGetir();
            }
            catch (Exception)
            {
                errorLabel.Text = "Kayıt Başarısız.";
            }
        }
        public void BolumBilgileriniGetir()
        {
            vtys6Entities db = new vtys6Entities();
            GridViewBolum.DataSource = db.tBolums.ToList();
            GridViewBolum.DataBind();
        }


        protected void DropDownListFakulte_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}