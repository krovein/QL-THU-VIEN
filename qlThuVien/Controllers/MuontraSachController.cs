using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using qlThuVien.Models.EF;

namespace qlThuVien.Controllers
{
    public class MuontraSachController : Controller
    {
        qlThuViendataModel db = new qlThuViendataModel();

        // GET: Tacgia
        public ActionResult Index(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 8;
            return View(db.Muon_Tra.ToList().OrderBy(n => n.maDocGia).ToPagedList(pageNumber, pageSize));
        }

        // Thêm mới
        [HttpGet]//yêu cầu dữ liệu từ 1 nguồn nhất định (có thể được lưu lại)
        public ActionResult Them()
        {
            return View();
        }
        [HttpPost]//Gửi dữ liệu để xử lý tới một nguồn nhất định (không bao giờ được lưu trữ)
        public ActionResult Them(Muon_Tra muon_tra)
        {
            db.Muon_Tra.Add(muon_tra);
            db.SaveChanges();
            return View();
        }

        //Chỉnh sửa
        [HttpGet]
        public ActionResult Sua(string maSach)
        {
            // lấy ra đối tượng theo mã sách
            Sach sach = db.Saches.SingleOrDefault(n => n.maSach == maSach);

            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sach);
        }
        [HttpPost]
        public ActionResult Sua(Sach sach)
        {
            db.Entry(sach).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return View();
        }

        // Hiển thị
        public ActionResult HienThi(string maSach)
        {
            //lấy ra đối tượng theo mã sách
            Sach sach = db.Saches.SingleOrDefault(n => n.maSach == maSach);
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sach);
        }

        // Xóa
        public ActionResult Xoa(string maSach)
        {
            //lấy đối tượng theo mã sách
            Sach sach = db.Saches.SingleOrDefault(n => n.maSach == maSach);
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sach);
        }

        [HttpPost, ActionName("Xoa")]
        public ActionResult xacNhanXoa(string maSach)
        {
            //lấy đối tượng theo mã sách
            Sach sach = db.Saches.SingleOrDefault(n => n.maSach == maSach);
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            db.Saches.Remove(sach);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}