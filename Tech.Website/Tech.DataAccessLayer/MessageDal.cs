using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class MessageDal : IMessageDal
    {
        public void Add(Message message)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(message);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public List<Message> GetMessages()
        {
            using (TechContext context = new TechContext())
            {
                var messageList = context.Messages.ToList();
                return messageList;
            }
        }

        public List<Message> GetMessage(int Id)
        {
            using (TechContext context = new TechContext())
            {
                var messageList = context.Messages.Where(p=>p.Id==Id).ToList();
                return messageList;
            }
        }
    }
}
