//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace App_manager.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ShangJiaJiaoYiJiLu
    {
        public int id { get; set; }
        public string name { get; set; }
        public int shangjiaid { get; set; }
        public string jilu { get; set; }
        public string wancheng { get; set; }
        public string pingjia { get; set; }
        public Nullable<System.DateTime> wanchengjiaoyishijian { get; set; }
    
        public virtual ShangJiaXinXi ShangJiaXinXi { get; set; }
    }
}
