using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Baseball.Models.Repositories
{
    public class TeamRepository
    {
        private BaseballDataContext db = new BaseballDataContext();
        public Team GetById(int teamID)
        {
            return db.Teams.SingleOrDefault(team => team.TeamID == teamID);
        }

        public IQueryable<Team> GetAll()
        {
            return db.Teams;
        }

        public void Create(Team team)
        {
            db.Teams.InsertOnSubmit(team);
        }

        public void Save()
        {
            db.SubmitChanges();
        }
    }
}
