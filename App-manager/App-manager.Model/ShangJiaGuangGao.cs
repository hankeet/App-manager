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
    
    public partial class ShangJiaGuangGao
    {
        public int id { get; set; }
        public string sahngjianame { get; set; }
        public int shangjiaid { get; set; }
        public string neirong { get; set; }
        public byte[] tupian { get; set; }
    
        public virtual ShangJiaXinXi ShangJiaXinXi { get; set; }
    }
}
