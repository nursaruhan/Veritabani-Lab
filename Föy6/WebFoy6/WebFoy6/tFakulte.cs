//------------------------------------------------------------------------------
// <auto-generated>
//    Bu kod bir şablondan oluşturuldu.
//
//    Bu dosyada el ile yapılan değişiklikler uygulamanızda beklenmedik davranışa neden olabilir.
//    Kod yeniden oluşturulursa, bu dosyada el ile yapılan değişikliklerin üzerine yazılacak.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebFoy6
{
    using System;
    using System.Collections.Generic;
    
    public partial class tFakulte
    {
        public tFakulte()
        {
            this.tBolums = new HashSet<tBolum>();
        }
    
        public int fakulteID { get; set; }
        public string fakulteAd { get; set; }
    
        public virtual ICollection<tBolum> tBolums { get; set; }
    }
}
