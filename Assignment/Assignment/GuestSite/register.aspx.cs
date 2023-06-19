using E_commerceAssignment.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.GuestSite
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Country country = new Country();
                drpCountry.DataSource = country.GetAllCountries();
                drpCountry.DataValueField = "id";
                drpCountry.DataTextField = "name";
                drpCountry.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.Address1 = txtAddress1.Text;
            user.Address2 = txtAddress2.Text;
            user.PhoneNumber = txtPhoneNumber.Text;
            user.MobileNumber = txtMobileNumber.Text;
            user.EmailAddress = txtEmail.Text;
            user.NIC = txtNIC.Text;
            user.GenderId = Convert.ToInt32(drpGender.SelectedItem.Value);
            user.CountryId = Convert.ToInt32(drpCountry.SelectedItem.Value);

            if (user.RegisterUser(txtPassword.Text))
            {
                btnSave.Enabled = false;
                lblError.Text = @"<div class='info' role='alert'>
                                  Registration successful, you can now proceed to login.
                                 </ div > ";
            }
            else
            {
                lblError.Text = @"<div class='alert alert-danger' role='alert'>
                                  Error occured during registration, please review.
                                 </ div > ";
            }
        }
    }
}