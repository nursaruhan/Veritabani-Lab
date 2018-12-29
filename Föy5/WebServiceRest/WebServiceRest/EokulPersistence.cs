using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebServiceRest.Models;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;
using System.Collections;

namespace WebServiceRest{
    public class EokulPersistence{
        MySqlConnection connection = new MySqlConnection();
        public EokulPersistence(){
            connection.ConnectionString = "server=localhost; uid=root; pwd=1331; database=eOkul; SslMode = none";
            try{
                connection.Open();
            }
            catch (MySqlException ex){
            }
        }
        public Eokul GetEokul(int ogrenciNo){
            Eokul eokul = new Eokul();
            MySqlDataReader reader = null;
            MySqlCommand command = new MySqlCommand("Select * From eOgrenci Where ogrenciNo = '" + ogrenciNo + "'", connection);
            reader= command.ExecuteReader();
            if (reader.Read()){
                eokul.OgrenciNo = reader.GetInt32(0);
                eokul.OgrenciAd = reader.GetString(1);
                eokul.OgrenciSoyad = reader.GetString(2);
                eokul.SinifNo = reader.GetInt32(3);
                eokul.DanismanAdi = reader.GetString(4);
                eokul.BolumId = reader.GetInt32(5);
                return eokul;
            }
            else{
                return null;
            }
        }
        public Tablo tablo(int id)
        {
            Tablo tablo = new Tablo();
            MySqlDataReader reader = null;
            MySqlCommand command = new MySqlCommand("Select * From tablo Where id = '" + id + "'", connection);
            reader = command.ExecuteReader();
            if (reader.Read())
            {
                tablo.Id = reader.GetInt32(0);
                tablo.Ad= reader.GetString(1);
                tablo.Soyad=reader.GetString(2);
              
                return tablo;
            }
            else
            {
                return null;
            }
        }

        public ArrayList GetButunOgrenciler()
        {
            ArrayList eokulArray = new ArrayList();
            MySqlDataReader reader = null;
            MySqlCommand command = new MySqlCommand("Select * From eOgrenci", connection);
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                Eokul eokul = new Eokul();
                eokul.OgrenciNo = reader.GetInt32(0);
                eokul.OgrenciAd = reader.GetString(1);
                eokul.OgrenciSoyad = reader.GetString(2);
                eokul.SinifNo = reader.GetInt32(3);
                eokul.DanismanAdi = reader.GetString(4);
                eokul.BolumId = reader.GetInt32(5);
                eokulArray.Add(eokul);
            }
            return eokulArray;
        }
    }
}