using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTracker.Model;
namespace GameTracker
{
    public partial class Game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the student data
                this.GetGames();
            }
        }
        /**
               * <summary>
               * This method gets the student data from the DB
               * </summary>
               * 
               * @method GetStudents
               * @returns {void}
               */
        protected void GetGames()
        {
            // connect to EF
            using (DefaultConnection db = new DefaultConnection())
            {
                // query the Students Table using EF and LINQ
             //   var Games = (from allGames in db.Game_info
                  //           select allGames);

                // bind the result to the GridView
           //     WeeklyGame.DataSource = Games.AsQueryable().ToList();
            //    WeeklyGame.DataBind();
            }
        }

        protected void WeekDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}