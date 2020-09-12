using Environment_Green.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Environment_Green.Controllers
{
    public class SampleController : Controller
    {
        // GET: Sample
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Result()
        {
            return View();
        }

        // GET: Sample/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Sample/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Sample/Create
        [HttpPost]
        public ActionResult Create(FormOneViewModel model)
        {
            try
            {
                // TODO: Add insert logic here
                String states = nameof(model.States);
                int occupants = model.Occupants;
                double income = model.Income;
                double energyBills = model.EnergyBills;
                double waterBills = model.WaterBills;
                String heaterType =Convert.ToString(model.HeaterTypes);
                int heaterDuration = model.HeaterDuration;
                String wmType = Convert.ToString(model.WMTypes);
                int washingFrequency = model.WashingFrequency;
                int room = model.Room;
                String bulbType = Convert.ToString(model.BulbTypes);
                int bulbDuration = model.BulbDuration;

                ViewBag.States = states;

                return RedirectToAction("Result");
            }
            catch
            {
                return View();
            }
        }

        // GET: Sample/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Sample/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Sample/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Sample/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
