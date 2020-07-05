using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;

namespace Tech.Website
{
    public partial class Login : System.Web.UI.Page
    {
        UserDal _userDal = new UserDal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnLogin_OnServerClick(object sender, EventArgs e)
        {
            string username = tbxUsername.Value;
            string password = tbxPassword.Value;

            lbl.InnerText = _userDal.Login(username, password);
        }
    }
}