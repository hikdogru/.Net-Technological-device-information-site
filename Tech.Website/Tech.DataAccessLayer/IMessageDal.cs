using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface IMessageDal
    {
        void Add(Message message);
        List<Message> GetMessages();
        List<Message> GetMessage(int Id);
    }
}
