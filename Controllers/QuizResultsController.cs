using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Environment_Green.Models;

namespace Environment_Green.Controllers
{
    public class QuizResultsController : Controller
    {
        private QuizModelContainer db = new QuizModelContainer();

        // GET: QuizResults
        public ActionResult Index()
        {
            return View(db.QuizResults.ToList());
        }

        // GET: QuizResults/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            QuizResult quizResult = db.QuizResults.Find(id);
            if (quizResult == null)
            {
                return HttpNotFound();
            }
            return View(quizResult);
        }

        // GET: QuizResults/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: QuizResults/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,State,Occupants,Income,EnergyBills,WaterBills,HeaterType,HeaterDuration,WMType,WashingFrequency,Room,BulbType,BulbDuration")] QuizResult quizResult)
        {
            if (ModelState.IsValid)
            {
                db.QuizResults.Add(quizResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(quizResult);
        }

        // GET: QuizResults/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            QuizResult quizResult = db.QuizResults.Find(id);
            if (quizResult == null)
            {
                return HttpNotFound();
            }
            return View(quizResult);
        }

        // POST: QuizResults/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,State,Occupants,Income,EnergyBills,WaterBills,HeaterType,HeaterDuration,WMType,WashingFrequency,Room,BulbType,BulbDuration")] QuizResult quizResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(quizResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(quizResult);
        }

        // GET: QuizResults/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            QuizResult quizResult = db.QuizResults.Find(id);
            if (quizResult == null)
            {
                return HttpNotFound();
            }
            return View(quizResult);
        }

        // POST: QuizResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            QuizResult quizResult = db.QuizResults.Find(id);
            db.QuizResults.Remove(quizResult);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
