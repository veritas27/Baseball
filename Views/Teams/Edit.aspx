<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Baseball.Models.Team>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>

    <script src="../../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="../../Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery-1.3.2-vsdoc.js" type="text/javascript"></script>
    
</head>
<body>
    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <p>
                <label for="TeamID">TeamID:</label>
                <%= Html.TextBox("TeamID", Model.TeamID) %>
                <%= Html.ValidationMessage("TeamID", "*") %>
            </p>
            <p>
                <label for="TeamName">TeamName:</label>
                <%= Html.TextBox("TeamName", Model.TeamName) %>
                <%= Html.ValidationMessage("TeamName", "*") %>
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

