using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Baseball.Models.Repositories
{
    public class PlayerRepository
    {
        private BaseballDataContext db = new BaseballDataContext();
        public Player GetByID(int playerID)
        {
            return db.Players.SingleOrDefault(player => player.PlayerID == playerID);
        }

        public IQueryable<Player> GetAll()
        {
            return db.Players;
        }

        public IQueryable<Player> GetAllByTeam(int teamID)
        {
            return from players in db.Players
                   where players.TeamID == teamID
                   select players;
        }

        public void Create(Player player)
        {
            db.Players.InsertOnSubmit(player);
        }

        public void Save()
        {
            db.SubmitChanges();
        }
    }
}
