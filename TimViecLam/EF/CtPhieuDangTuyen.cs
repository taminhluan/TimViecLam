//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TimViecLam.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class CtPhieuDangTuyen
    {
        public int MaPhieuDangTuyen { get; set; }
        public int MaDanhSachCongViec { get; set; }
        public string TrinhDo { get; set; }
        public Nullable<System.DateTime> ThoiHan { get; set; }
        public Nullable<int> SoLuongTuyenDung { get; set; }
        public string NoiLamViec { get; set; }
        public string MoTaYeuCau { get; set; }
        public Nullable<double> LuongKhoiDiem { get; set; }
    
        public virtual DanhSachCongViec DanhSachCongViec { get; set; }
        public virtual PhieuDangTuyen PhieuDangTuyen { get; set; }
    }
}
