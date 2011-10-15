using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AzureRoadTripSite.Models;

namespace AzureRoadTripSite.Controllers
{ 
    public class StagesController : Controller
    {
        private RoadTripContext db = new RoadTripContext();

        //
        // GET: /Stages/

        public ViewResult Index()
        {
            return View(db.Stages.ToList());
        }

        //
        // GET: /Stages/Details/5

        public ViewResult Details(int id)
        {
            Stage stage = db.Stages.Find(id);
            return View(stage);
        }

        //
        // GET: /Stages/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Stages/Create

        [HttpPost]
        public ActionResult Create(Stage stage)
        {
            if (ModelState.IsValid)
            {
                db.Stages.Add(stage);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(stage);
        }
        
        //
        // GET: /Stages/Edit/5
 
        public ActionResult Edit(int id)
        {
            Stage stage = db.Stages.Find(id);
            return View(stage);
        }

        //
        // POST: /Stages/Edit/5

        [HttpPost]
        public ActionResult Edit(Stage stage)
        {
            if (ModelState.IsValid)
            {
                db.Entry(stage).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(stage);
        }

        //
        // GET: /Stages/Delete/5
 
        public ActionResult Delete(int id)
        {
            Stage stage = db.Stages.Find(id);
            return View(stage);
        }

        //
        // POST: /Stages/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Stage stage = db.Stages.Find(id);
            db.Stages.Remove(stage);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}