using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebTourProject.Models;
namespace WebTourProject.Controllers
{
    public class TourController : Controller
    {
        QLDuLich db = new QLDuLich();
        // GET: Tour
        public ActionResult Details(int id)
        {
            var sach = from s in db.SACHes
                       where s.Masach == id
                       select s;
            return View(sach.Single());
        }
    }
}