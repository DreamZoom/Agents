using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agents.Models
{
    public class AgentService
    {
        public static Models.Agent tryAgent(Models.Agent model)
        {
            db_AgentsEntities db = new db_AgentsEntities();
            var prevWeixin = db.Agents.Where(m => m.Weixin == model.PrevWeixin).FirstOrDefault();


            if (model.AgentLevel != (int)AgentLevel.总代)
            {
                if (prevWeixin == null)
                    throw new Exception("如果你不是申请的总代，则必须填写你的上家微信。");

                var l = prevWeixin.Business.Agents.FirstOrDefault(m => m.ProductName == model.ProductName);
                if (l == null) throw new Exception("你填写的商品不是你上家代理的，请核仔细核对。");

            }
            else
            {
                if (prevWeixin != null)
                    throw new Exception("如果你申请的是总代，请将上家微信置空。");
            }

            model.Address = Fomat(model.Address);
            model.IDCard = Fomat(model.IDCard);
            model.PrevWeixin = Fomat(model.PrevWeixin);
            model.ShopAccount2 = Fomat(model.ShopAccount2);
            model.ShopLink2 = Fomat(model.ShopLink2);
            model.ShopAccount3 = Fomat(model.ShopAccount3);
            model.ShopLink3 = Fomat(model.ShopLink3);
            model.Tell = Fomat(model.Tell);
            return model;
        }

        public static string Fomat(string o)
        {
            if (o == null) return string.Empty;
            return o;
        }

        /// <summary>
        /// 获取上家链(微信号)
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<string> getAgentChain(Agent agent)
        {
            db_AgentsEntities db = new db_AgentsEntities();

            while (agent != null)
            {
                agent = db.Agents.FirstOrDefault(m => m.Weixin == agent.PrevWeixin);
                if (agent != null)
                {
                    yield return agent.Weixin;
                }

            }

        }

        /// <summary>
        /// 判断是否需要商家审核（商家是否在上家链中，商家是否审核了。）
        /// </summary>
        /// <param name="username"></param>
        /// <param name="agent"></param>
        /// <returns></returns>
        public static bool CheckNeedCheck(string username, Agent agent)
        {
            var chain = getAgentChain(agent);
            var weixin = getWeixinByBusiness(username);
            foreach (var c in chain)
            {
                if (weixin.Contains(c))
                {
                    var log = agent.VerifyLogs.FirstOrDefault(m => weixin.Contains(m.Weixin));
                    if (log == null)
                        return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 获取商家微信
        /// </summary>
        /// <param name="Username"></param>
        /// <returns></returns>
        public static string[] getWeixinByBusiness(string Username)
        {
            db_AgentsEntities db = new db_AgentsEntities();
            return db.Businesses.Find(Username).Agents.ToList().ConvertAll(m => m.Weixin).ToArray();

        }


        /// <summary>
        /// 获取待审核的代理申请
        /// </summary>
        /// <param name="Username"></param>
        /// <returns></returns>
        public static IEnumerable<Agent> getCheckByBusiness(string Username)
        {
            db_AgentsEntities db = new db_AgentsEntities();
            var weixins = getWeixinByBusiness(Username);
            foreach (var agent in db.Agents)
            {
                if (CheckNeedCheck(Username, agent))
                {
                    yield return agent;
                }
            }
            
        }
    }
}