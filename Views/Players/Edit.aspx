<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Baseball.Models.Player>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../jquery-ui-1.7.2.custom/css/ui-lightness/jquery-ui-1.7.2.custom.css"
        rel="stylesheet" type="text/css" />
    <style type="text/css">
        body { background-color: White;}
    </style>    
</head>
<body>
    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <p>
                <label for="PlayerID">PlayerID:</label>
                <%= Html.TextBox("PlayerID", Model.PlayerID) %>
                <%= Html.ValidationMessage("PlayerID", "*") %>
            </p>
            <p>
                <label for="PlayerFirstName">PlayerFirstName:</label>
                <%= Html.TextBox("PlayerFirstName", Model.PlayerFirstName) %>
                <%= Html.ValidationMessage("PlayerFirstName", "*") %>
            </p>
            <p>
                <label for="PlayerLastName">PlayerLastName:</label>
                <%= Html.TextBox("PlayerLastName", Model.PlayerLastName) %>
                <%= Html.ValidationMessage("PlayerLastName", "*") %>
            </p>
            <p>
                <label for="PlayerPosition">PlayerPosition:</label>
                <%= Html.TextBox("PlayerPosition", Model.PlayerPosition) %>
                <%= Html.ValidationMessage("PlayerPosition", "*") %>
            </p>
            <p>
                <label for="TeamID">TeamID:</label>
                <%= Html.TextBox("TeamID", Model.TeamID) %>
                <%= Html.ValidationMessage("TeamID", "*") %>
            </p>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</body>
</html>

