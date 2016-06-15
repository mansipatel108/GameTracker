using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements required for EF DB access
using GameTracker.Model;
//using System.Web.ModelBinding;

namespace GameTracker
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetUser();
            }
        }

        protected void GetUser()
        {
            int userID = Convert.ToInt32(Request.QueryString["userID"]);

            //connect to EF to DB
            using (DefaultConnection db = new DefaultConnection())
            {
                // populate a student object instance with the StudentID from the URL Parameter
                User_info updatedUser = (from User_info in db.User_info
                                         where User_info.userID == userID
                                         select User_info).FirstOrDefault();

                // map the student properties to the form controls
                if (updatedUser != null)
                {
                    EmailTextBox.Text = updatedUser.email;
                    UserNameTextBox.Text = updatedUser.userName;
                    PasswordTextBox.Text = updatedUser.password;
                    DisplayNameTextBox.Text = updatedUser.displayName;
                }
            }

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (DefaultConnection db = new DefaultConnection())
            {
                // use the Student model to create a new student object and
                // save a new record
                User_info newUser = new User_info();

                int userID = 0;

                if (Request.QueryString.Count > 0) // our URL has a StudentID in it
                {
                    // get the id from the URL
                    userID = Convert.ToInt32(Request.QueryString["userID"]);

                    // get the current student from EF DB
                    newUser = (from User_info in db.User_info
                               where User_info.userID == userID
                               select User_info).FirstOrDefault();
                }

                // add form data to the new student record
                newUser.email = EmailTextBox.Text;
                newUser.userName = UserNameTextBox.Text;
                newUser.password = PasswordTextBox.Text;
                newUser.displayName = DisplayNameTextBox.Text;

                // use LINQ to ADO.NET to add / insert new student into the database

                if (userID == 0)
                {
                    db.User_info.Add(newUser);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated students page
                Response.Redirect("~/Login.aspx");
            }

        }
    }
}