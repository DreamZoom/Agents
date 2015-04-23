using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
namespace Agents.Models
{
    public class Metadata_Product
    {
        [Display(Name="产品名称")]
        [Required]
        public string ProductName { get; set; }

        [Display(Name = "产品描述")]
        [Required]
        public string ProductDiscription { get; set; }
    }

    [MetadataType(typeof(Metadata_Product))]
    public partial class Product
    {

    }
}