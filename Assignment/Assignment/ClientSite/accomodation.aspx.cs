using ECommerce.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ClientSite
{
    public partial class accomodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Product product = new Product();
                product.Category_Id = 1;
                dtListProducts.DataSource = product.GetAllProductsByCategoryId();
                dtListProducts.DataBind();
            }
        }
    }
}