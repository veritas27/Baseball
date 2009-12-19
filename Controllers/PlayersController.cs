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
    public class PlayersController : Controller
    {
        PlayerRepository _playerRepository;
        public PlayersController()
        {
            _playerRepository = new PlayerRepository();
        }

        //
        // GET: /Players/

        public ActionResult Index()
        {
            IList<Player> players = _playerRepository.GetAll().ToList();
            return View(players);
        }
        public ActionResult List(int id)
        {
            IList<Player> players = _playerRepository.GetAllByTeam(id).ToList();
            return View("Index", players);
        }
        
        // GET: /Players/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Players/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Players/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(FormCollection collection)
        {
            Player player = new Player();
            try
            {
                UpdateModel(player, new string[] {"PlayerName"
                                                    , "PlayerFirstName"
                                                    , "PlayerLastName"
                                                    , "PlayerPosition"
                                                    , "TeamID"
                                                    });
                _playerRepository.Create(player);
                _playerRepository.Save();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(player);
            }
        }

        //
        // GET: /Players/Edit/5
 
        public ActionResult Edit(int id)
        {
            Player player = _playerRepository.GetByID(id);
            return View(player);
        }

        //
        // POST: /Players/Edit/5

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection collection)
        {
            Player player = _playerRepository.GetByID(id);
            try
            {
                UpdateModel(player, new string[] {"PlayerName"
                                                    , "PlayerFirstName"
                                                    , "PlayerLastName"
                                                    , "PlayerPosition"
                                                    , "TeamID"
                                                    });
                _playerRepository.Save();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
