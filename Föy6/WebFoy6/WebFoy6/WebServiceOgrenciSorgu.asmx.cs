using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebFoy6
{
    /// <summary>
    /// WebServiceOgrenciSorgu için özet açıklama
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Bu Web Hizmeti'nin, ASP.NET AJAX kullanılarak komut dosyasından çağrılmasına, aşağıdaki satırı açıklamadan kaldırmasına olanak vermek için.
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceOgrenciSorgu : System.Web.Services.WebService
    {
        SqlConnection bag = new SqlConnection(@"Data Source=LAPTOP-UK1FELKG; Initial Catalog=vtys6hafta; Integrated Security=True");
        [WebMethod]
        public DataTable OgrenciSorgula(int ogrenciID)
        {
            bag.Open();
            string kayit = String.Format("SELECT * from tOgrenci where ogrenciID = '{0}'", ogrenciID);
            SqlDataAdapter da = new SqlDataAdapter(kayit, bag);
            da.SelectCommand.ExecuteNonQuery();
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }

    }
}
