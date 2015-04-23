<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<object>" %>

<%  List<object> li = new List<object>();
    foreach (int s in Enum.GetValues(typeof(Agents.Models.AgentLevel)))
    {
        li.Add(new 
        {
            Value = s.ToString(),
            Text = Enum.GetName(typeof(Agents.Models.AgentLevel), s)
        });
    }

    var list = new SelectList(li, "Value","Text",Model);
    %>
<%: Html.DropDownList("",list,string.Empty) %>