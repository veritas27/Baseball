<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Baseball.Models.Team>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../jquery-ui-1.7.2.custom/css/ui-lightness/jquery-ui-1.7.2.custom.css"
        rel="stylesheet" type="text/css" />


    <script src="<%= Url.Content("~/Scripts/jquery-1.3.2.min.js") %>" type="text/javascript"></script>
    <script src="<%= Url.Content("~/Scripts/MicrosoftAjax.js") %>" type="text/javascript"></script>
    <script src="<%= Url.Content("~/Scripts/MicrosoftMvcAjax.js") %>" type="text/javascript"></script>
    <script src="<%= Url.Content("~/jquery-ui-1.7.2.custom/js/jquery-ui-1.7.2.custom.min.js") %>" type="text/javascript"></script>


    <style type="text/css">
        body { background-color: White;}
    </style>

        
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                TeamID
            </th>
            <th>
                TeamName
            </th>
            <th>Players
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Ajax.ActionLink("Edit", "Edit", "AjaxTeams", new { id = item.TeamID }, new AjaxOptions { UpdateTargetId = "dialog", HttpMethod = "Get", OnSuccess = "function(){$('#dialog').dialog('open');}" }, null)%>
            </td>
            <td>
                <%= Html.Encode(item.TeamID) %>
            </td>
            <td>
                <%= Html.Encode(item.TeamName) %>
            </td>
            <td>
                <%= Html.ActionLink("Players", "List", "Players", new {id=item.TeamID},null) %>           
            </td>
        </tr>
    
    <% } %>

    </table>
    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

<div id="dialog">A dialog</div>

    <script type="text/javascript">
        $(function() {
            $('#dialog').dialog({
                autoOpen: false,
                modal: true,
                hide: 'highlight',
                resizable: false,
                width: 450,
                show: 'highlight'
            });
        });
        var Dialog_open = function() {
            $('#dialog').dialog('open');
        }
	    </script>
</body>
</html>

