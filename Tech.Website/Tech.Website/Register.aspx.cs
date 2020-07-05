using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website
{
    public partial class Register : System.Web.UI.Page
    {
        UserDal _userDal = new UserDal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnServerClick(object sender, EventArgs e)
        {
            if (retypePassword.Value == password.Value)
            {
                _userDal.UserAdd(new User
                {
                    UserName = userName.Value,
                    Password = password.Value,
                    Email = email.Value

                });
                lbl.InnerText = "User added!";
            }
            else
            {
                lbl.InnerText = "Error";
            }
        }
    }
}