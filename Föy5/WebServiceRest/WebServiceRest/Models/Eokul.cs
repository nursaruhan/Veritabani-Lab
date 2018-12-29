using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebServiceRest.Models
{
    public class Eokul
    {
        public int OgrenciNo { get; set; }
        public string OgrenciAd { get; set; }
        public string OgrenciSoyad { get; set; }
        public int SinifNo { get; set; }
        public string DanismanAdi { get; set; }
        public int BolumId { get; set; }
    }
}
