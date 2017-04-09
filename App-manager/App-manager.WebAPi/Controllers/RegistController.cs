using App_manager.BLL;
using App_manager.IBLL;
using App_manager.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web.Http;

namespace App_manager.WebAPi.Controllers
{
    public class RegistController : ApiController
    {
        IXueShengXinXiService userservice = new XueShengXinXiService();
        [HttpGet]
        public string Regist(string regist)
        {

            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(XueShengXinXi));           
            XueShengXinXi user = new XueShengXinXi();
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(regist));
            XueShengXinXi obj= (XueShengXinXi)ser.ReadObject(ms);
            string dd = obj.name;

            IQueryable<XueShengXinXi> query = userservice.Get(u => u.name == dd);

            if (query.Count() > 0)
            {
                return "用户名已经存在";
              
            }
            user.name = obj.name;
            user.pass = obj.pass;
            user.phone = obj.phone;
            userservice.Add(user);
            return "ok";
        }
    }
}
