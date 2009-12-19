using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using Baseball.Models.Repositories;
using Baseball.Models;

namespace Baseball.Controllers
{
    public class TeamsController : Controller
    {
        TeamRepository _teamRepository;
        public TeamsController()
        {
            _teamRepository = new TeamRepository();
        }
        //
        // GET: /Teams/

        public ActionResult Index()
        {
            IList<Team> teams = _teamRepository.GetAll().ToList();
            return View(teams);
        }

        //
        // GET: /Teams/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Teams/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Teams/Create
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(FormCollection collection)
        {
            Team team = new Team();
            try
            {
                UpdateModel(team, new string[] {"TeamName" });
                _teamRepository.Create(team);
                _teamRepository.Save();
                return RedirectToAction("Edit", new { id = team.TeamID });
            }
            catch
            {
                //ModelState.AddRuleViolations(dinner.GetRuleViolations());
                return View(team);
            }
        }
        //
        // GET: /Teams/Edit/5
 
        public ActionResult Edit(int id)
        {
            Team team = _teamRepository.GetById(id);
            return View(team);
        }

        //
        // POST: /Teams/Edit/5

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection collection)
        {
            Team team = _teamRepository.GetById(id);

            try
            {
                UpdateModel(team, new string[] { "TeamName" });
                _teamRepository.Save();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }


    }
}
