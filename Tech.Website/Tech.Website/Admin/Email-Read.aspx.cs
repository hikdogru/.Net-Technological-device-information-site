using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;

namespace Tech.Website.Admin
{
    public partial class Email_Read : System.Web.UI.Page
    {
        MessageDal _messageDal = new MessageDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["messageId"];

            if (!String.IsNullOrEmpty(Id))
            {
                LoadEmail(Id);
            }
        }

        private void LoadEmail(string id)
        {
            int emailId = int.Parse(id);
            var emailList = _messageDal.GetMessage(emailId);
            rptEmail.DataSource = emailList;
            rptEmail.DataBind();
        }
    }
}