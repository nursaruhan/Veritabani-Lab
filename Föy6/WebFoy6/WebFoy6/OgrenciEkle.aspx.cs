using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OgrenciBilgileriniGetir();
        }

        protected void ButtonOgrenciEkle_Click(object sender, EventArgs e)
        {
            try
            {
                vtys6Entities db = new vtys6Entities();
                tOgrenci ogrenci = new tOgrenci();
                ogrenci.ad = TextBoxOgrenciAd.Text;
                ogrenci.soyad = TextBoxOgrenciSoyad.Text;
                ogrenci.bolumID= Int32.Parse(DropDownListBolum.SelectedValue);
                db.tOgrencis.Add(ogrenci);
                db.SaveChanges();
                errorLabel.Text = "Kayıt Başarılı";
                OgrenciBilgileriniGetir();
            }
            catch (Exception)
            {
                errorLabel.Text = "Kayıt Başarısız.";
            }
        }
        public void OgrenciBilgileriniGetir()
        {
            vtys6Entities db = new vtys6Entities();
            GridViewOgrenci.DataSource = db.tOgrencis.ToList();
            GridViewOgrenci.DataBind();
        }
    }
}