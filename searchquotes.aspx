<%@ Page Language="C#" %>

<%
   
    List<String> quotes = new List<string> 
      { "You Never Fail Until You Stop Trying", 
        "None But Ourseleves Can Free Our Minds" , 
        "When you cease to dream, you cease to live",
        "Be the change you wish to see in the world"};

    String term = Request.QueryString["term"]; // term is what is sent from client 

    var selquotes = quotes.Where(q => q.ToUpper().Contains(term.ToUpper()));



    System.Web.Script.Serialization.JavaScriptSerializer js =
        new System.Web.Script.Serialization.JavaScriptSerializer();
    string result = js.Serialize(selquotes);
    Response.Write(result);
    
   
%>    
    
