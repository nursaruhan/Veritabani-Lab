using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebServiceRest.Models;
using System.Collections;

namespace WebServiceRest.Controllers{
    public class EokulController : ApiController{
        // GET: api/Eokul
        /*public ArrayList Get(){

            EokulPersistence eokulPersistence = new EokulPersistence();
            return eokulPersistence.GetButunOgrenciler();
        }
        */
        // GET: api/Eokul/5
        public Tablo Get(int id)
        {
            EokulPersistence eokulPersistence = new EokulPersistence();
            Tablo tablo = eokulPersistence.tablo(id);
            return tablo;
        }
        /*  public Eokul Get(int id)
          {
              EokulPersistence eokulPersistence = new EokulPersistence();
              Eokul eokul = eokulPersistence.GetEokul(id);
              return eokul;
          }*/
        // POST: api/Eokul
        public void Post([FromBody]string value)
        {    
        }
        // PUT: api/Eokul/5
        public void Put(int id, [FromBody]string value)
        {
        }
        // DELETE: api/Eokul/5
        public void Delete(int id)
        {
        }
    }
}
