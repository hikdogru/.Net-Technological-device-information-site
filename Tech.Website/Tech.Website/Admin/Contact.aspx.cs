using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;

namespace Tech.Website.Admin
{
    public partial class Contact : System.Web.UI.Page
    {
        MessageDal _messageDal = new MessageDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMessages();
        }

        private void LoadMessages()
        {
            var messageList = _messageDal.GetMessages();
            rptContact.DataSource = messageList;
            rptContact.DataBind();
        }
    }
}