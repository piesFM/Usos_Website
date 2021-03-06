﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Usososo.Controllers.Strategy;
using WebApplication4.Controllers.Builder;
using WebApplication4.Controllers.Command;
using WebApplication4.Data;
using WebApplication4.Data.Strategy;

namespace WebApplication4.Controllers
{
    public class MarketPlaceController : Controller
    {
        // GET: MarketPlace
        public ActionResult Index()
        {
            Director director = new Director();
            Builder.Builder builder = new ConcreteBuilder();
            var label = director.Construct(builder);

            Order order = new Order(CheckDepartment.BuyForECTSFunction(int.Parse((string)Session["ID"])));
            var yourSubjectsYouCanBuy = order.ContextInterface(label);
            return View(yourSubjectsYouCanBuy);
        }

        [HttpPost]
        public ActionResult Marketplace(Data.Subject sub)
        {
            return View();
        }

        public ActionResult Buy(int id = 0)
        {
            Data.Subject sub;
            using (SimpleDataBase db = new SimpleDataBase())
            {
                sub = db.Subject.Find(id);
                if (sub == null)
                {
                    return HttpNotFound();
                }
            }
            Receiver receiver = new Receiver();
            Command.Command command = new ConcreteCommand(receiver);
            Invoker invoker = new Invoker();
            invoker.SetCommand(command);
            invoker.ExecuteCommand(int.Parse((string)Session["ID"]), sub);
            Session["ECTS"] = invoker.ExecuteCommand(int.Parse((string)Session["ID"]));
            return View(sub);
        }

        [HttpPost]
        public ActionResult Buy(Data.Subject sub)
        {
            using (SimpleDataBase db = new SimpleDataBase())
            {
                if (sub == null)
                {
                    db.Entry(sub).State = EntityState.Modified;
                    db.SaveChanges();
                    return View();
                }
            }
            return View(sub);
        }

        public ActionResult Cancel(int id = 0)
        {
            Data.Subject sub;
            using (SimpleDataBase db = new SimpleDataBase())
            {
                sub = db.Subject.Find(id);
                if (sub == null)
                {
                    return HttpNotFound();
                }
            }
            Receiver receiver = new Receiver();
            Command.Command command = new ConcreteCommand(receiver);
            Invoker invoker = new Invoker();
            invoker.SetCommand(command);
            invoker.RemoveExam(int.Parse((string)Session["ID"]), sub);
            Session["ECTS"] = invoker.ExecuteCommand(int.Parse((string)Session["ID"]));
            return View(sub);
        }

        [HttpPost]
        public ActionResult Cancel(Data.Subject sub)
        {
            using (SimpleDataBase db = new SimpleDataBase())
            {
                if (sub == null)
                {
                    db.Entry(sub).State = EntityState.Modified;
                    db.SaveChanges();
                    return View();
                }
            }
            return View(sub);
        }
    }
}
