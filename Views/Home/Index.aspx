<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    </style>
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-1.3.2.js" type="text/javascript"></script>    
    <script src="http://ajax.microsoft.com/ajax/beta/0911/Start.debug.js" type="text/javascript"></script>
    <script src="http://ajax.microsoft.com/ajax/beta/0911/extended/ExtendedControls.debug.js" type="text/javascript"></script>


    <script src="../../Scripts/AspNetAjaxLibraryBeta0911/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="../../Scripts/AspNetAjaxLibraryBeta0911/Scripts/extended/AutoComplete/AutoCompleteBehavior.js"
        type="text/javascript"></script>

</head>
<body>
    <script type="text/javascript">
        $(function() {
            Sys.debug = true;
            Sys.require(Sys.components.autoComplete, function() {
                $("#tb1").autoComplete({
                    minimumPrefixLength: 1,
                    serviceMethod: "GetSuggestions",
                    servicePath: "/BaseballService.svc"
                });
            });
        });
    </script>
    
    Home Page

    <h2><%= Html.Encode(ViewData["Message"]) %></h2>
    <p>
        To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
    </p>
    <h2>Some Stuff</h2>
    <p>
    <input id="tb1" type="text" style="width:200px;"/>
        
    </p>
    


</body>
</html>




