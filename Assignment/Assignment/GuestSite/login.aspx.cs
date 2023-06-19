using E_commerceAssignment.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.GuestSite
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserCredentials userCredentials = new UserCredentials();
            userCredentials.Username = txtUsername.Text;
            userCredentials.Password = txtPassword.Text;
            var loginUserResult = userCredentials.validateUserLogin();

            if (loginUserResult)
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                Session["UserName"] = txtUsername.Text;
                Session["User_id"] = userCredentials.User_id;
            }
            else
            {
                lblError.Text = @"<div class='alert alert-danger' role='alert'>
                                  Invalid Login Credentials!
                                 </ div > ";
            }
        }
    }
}