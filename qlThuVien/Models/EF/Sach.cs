namespace qlThuVien.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sach")]
    public partial class Sach
    {
        [Key]
        [StringLength(50)]
        public string maSach { get; set; }

        [StringLength(250)]
        public string tenSach { get; set; }

        public DateTime? namXuatBan { get; set; }

        public int? soLuong { get; set; }

        [StringLength(50)]
        public string maLoaiSach { get; set; }

        [StringLength(50)]
        public string maTacGia { get; set; }

        public virtual LoaiSach LoaiSach { get; set; }

        public virtual TacGia TacGia { get; set; }
    }
}
