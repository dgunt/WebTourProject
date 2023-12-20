using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebTourProject.Models;
namespace WebTourProject.Controllers
{
    public class HomeController : Controller
    {
        QLDuLich db = new QLDuLich();
        private List<SACH> Laysachmoi(int count)
        {
            return db.SACHes.Take(count).ToList();
        }
        // GET: BookStore
        public ActionResult Index()
        {
            var sachmoi = Laysachmoi(6);
            return View(sachmoi);
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}