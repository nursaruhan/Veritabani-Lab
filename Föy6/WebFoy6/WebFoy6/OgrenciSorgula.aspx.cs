using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFoy6
{
    public partial class OgrenciSorgula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ButtonOgrenciSorgula_Click(object sender, EventArgs e)
        {
            try
            {
                vtys6Entities db = new vtys6Entities();
                int ogrenciKey = int.Parse(TextBoxOgrenciID.Text.ToString());
                var query = from o in db.tOgrencis
                            join b in db.tBolums on o.bolumID equals b.bolumID
                            join f in db.tFakultes on b.fakulteID equals f.fakulteID
                            where o.ogrenciID == ogrenciKey
                            select new { o.ogrenciID, o.ad, o.soyad, b.bolumAd, f.fakulteAd };
                GridViewOgrenci.DataSource = query.ToList();
                GridViewOgrenci.DataBind();
            }
            catch (Exception)
            {
                errorLabel.Text = "Hata Oluştu";
            }
        }

    }
}