<%@ Page Language="C#"  %>
<script runat="server">
   
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.ContentType = "application/json";
        
        var contacts = new List<Contact>();
        contacts.Add(new Contact { Name = "Scott Guthrie", Email = "scottgu@microsoft.com", Mobile = "9999999999" });
        contacts.Add(new Contact { Name = "Stephen Walther", Email = "steverw@microsoft.com", Mobile = "8888888888" });
        contacts.Add(new Contact { Name = "Jessy Liberty", Email = "jliberty@microsoft.com", Mobile = "1212121212" });
        
        var result  = new  { Result = "OK", Records = contacts};

        System.Web.Script.Serialization.JavaScriptSerializer js = 
              new System.Web.Script.Serialization.JavaScriptSerializer();
        Response.Write(js.Serialize(result)) ;
    }
</script>

