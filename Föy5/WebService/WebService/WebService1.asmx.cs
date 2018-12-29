using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace WebService
{
    /// <summary>
    /// WebService1 için özet açıklama
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Bu Web Hizmeti'nin, ASP.NET AJAX kullanılarak komut dosyasından çağrılmasına, aşağıdaki satırı açıklamadan kaldırmasına olanak vermek için.
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        [WebMethod]
        public DataSet KisiGetir(int id)
        {
            MySqlConnection connection = new MySqlConnection();
            connection.ConnectionString = "server=localhost; uid=root; pwd=1331; database=eOkul; SslMode = none";
            connection.Open();
           /* MySqlDataAdapter adapter = new MySqlDataAdapter("Select ogrenciAd, ogrenciSoyad, sinifNo, danismanAdi From eOgrenci Where ogrenciNo = '" + id + "'", connection);
            adapter.SelectCommand.ExecuteNonQuery();
            DataSet dt = new DataSet();
            adapter.Fill(dt);
            return dt;  */
            MySqlDataAdapter adapter = new MySqlDataAdapter("Select * From eOgrenci Where id = '" + id + "'", connection);
            adapter.SelectCommand.ExecuteNonQuery();
            DataSet dt = new DataSet();
            adapter.Fill(dt);
            return dt; 
        }
    }
}
