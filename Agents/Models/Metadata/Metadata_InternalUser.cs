using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace Agents.Models
{
    public class Metadata_InternalUser
    {
        [Display(Name = "账户名")]
        [Required]
        public string UserName { get; set; }

        [Display(Name = "密码")]
        [Required]
        public string Password { get; set; }

        [Display(Name = "创建时间")]
        [HiddenInput]
        public System.DateTime AddTime { get; set; }

        [Display(Name = "最后登录时间")]
        [HiddenInput]
        public System.DateTime LastLoginTime { get; set; }
    }

    [MetadataType(typeof(Metadata_InternalUser))]
    public partial class InternalUser
    {

    }
}