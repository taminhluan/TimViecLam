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
    
    public partial class HoSoXinViec
    {
        public int MaHoSoXinViec { get; set; }
        public Nullable<System.DateTime> NgayLap { get; set; }
        public Nullable<int> MaNguoiTimViec { get; set; }
        public Nullable<int> MaNhanVien { get; set; }
        public Nullable<int> MaDanhSachCongViec { get; set; }
        public string MoTa { get; set; }
        public Nullable<int> TrangThai { get; set; }
    
        public virtual DanhSachCongViec DanhSachCongViec { get; set; }
        public virtual NguoiTimViec NguoiTimViec { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}