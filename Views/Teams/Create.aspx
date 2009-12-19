<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Baseball.Models.Team>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create</title>
</head>
<body>
    <%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <p>
                <label for="TeamID">TeamID:</label>
                <%= Html.TextBox("TeamID") %>
                <%= Html.ValidationMessage("TeamID", "*") %>
            </p>
            <p>
                <label for="TeamName">TeamName:</label>
                <%= Html.TextBox("TeamName") %>
                <%= Html.ValidationMessage("TeamName", "*") %>
            </p>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</body>
</html>

