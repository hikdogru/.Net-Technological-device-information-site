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
    public partial class Contact : System.Web.UI.Page
    {
        MessageDal _messageDal = new MessageDal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitMessage_OnServerClick(object sender, EventArgs e)
        {
            var dt = DateTime.Now;
            var time = dt.ToShortTimeString();
            _messageDal.Add(new Message
            {
                Name = name.Value,
                Email = email.Value,
                Subject = msg_subject.Value,
                MessageText = message.Value,
                Time = time,
            });
            lblResult.Text = "Message is sent";
        }
    }
}