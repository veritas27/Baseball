<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Baseball.Models.Player>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../jquery-ui-1.7.2.custom/css/ui-lightness/jquery-ui-1.7.2.custom.css"
        rel="stylesheet" type="text/css" />
    <style type="text/css">
        body { background-color: White;}
    </style>
    
        
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                PlayerID
            </th>
            <th>
                First
            </th>
            <th>
                Last
            </th>
            <th>
                Position
            </th>
            <th>
                TeamID
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.PlayerID }) %> |
            </td>
            <td>
                <%= Html.Encode(item.PlayerID) %>
            </td>
            <td>
                <%= Html.Encode(item.PlayerFirstName) %>
            </td>
            <td>
                <%= Html.Encode(item.PlayerLastName) %>
            </td>
            <td>
                <%= Html.Encode(item.PlayerPosition) %>
            </td>
            <td>
                <%= Html.Encode(item.TeamID) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>
    <br />
    <p>
    <%= Html.ActionLink("Return to Teams","Index","Teams") %>
    </p>
</body>
</html>

