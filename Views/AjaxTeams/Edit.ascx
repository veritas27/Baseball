<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Baseball.Models.Team>" %>

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


