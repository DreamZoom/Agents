using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
namespace Agents.Models
{
    public class Metadata_Agent
    {
        [Display(Name = "编号")]
        public int ID { get; set; }
       
        [Display(Name="微信号")]
        [Required]
        public string Weixin { get; set; }

        [Display(Name = "上家微信号")]
        public string PrevWeixin { get; set; }

        [Display(Name = "代理商名称")]
        [Required]
        public string AgentName { get; set; }

        [Display(Name = "代理级别")]
        [DataType("AgentLevel")]
        public AgentLevel AgentLevel { get; set; }

        [Display(Name = "身份证")]
        [Required]
        public string IDCard { get; set; }

        [Display(Name = "电话")]
        public string Tell { get; set; }

        [Display(Name = "地址")]
        public string Address { get; set; }

        [Display(Name = "邮箱")]
        [Required]
        public string Emaill { get; set; }

        [Display(Name = "授权书编号")]
        public string AuthorizeBookNo { get; set; }

        [Display(Name = "授权开始日期")]
        public Nullable<System.DateTime> AuthorizeBooStartDate { get; set; }

        [Display(Name = "授权结束日期")]
        public Nullable<System.DateTime> AuthorizeBooEndDate { get; set; }

        [Display(Name = "产品名称")]
        [Required]
        public string ProductName { get; set; }

        [Display(Name = "状态")]
        [EnumDataType(typeof(AgentState))]
        public int State { get; set; }

        [Display(Name = "淘宝或拍拍店铺1")]
        [Required]
        public string ShopLink1 { get; set; }

        [Display(Name = "淘宝或拍拍账号1")]
        [Required]
        public string ShopAccount1 { get; set; }

        [Display(Name = "淘宝或拍拍店铺2")]
        public string ShopLink2 { get; set; }

        [Display(Name = "淘宝或拍拍账号2")]
        public string ShopAccount2 { get; set; }

        [Display(Name = "淘宝或拍拍店铺3")]
        public string ShopLink3 { get; set; }

        [Display(Name = "淘宝或拍拍账号3")]
        public string ShopAccount3 { get; set; }

        [Display(Name = "账户")]
        public string Bussiness { get; set; }

        [EnumDataType(typeof(RequestType))]
        public int RequestType { get; set; }
    }

    [MetadataType(typeof(Metadata_Agent))]
    public partial class Agent
    {

    }
}