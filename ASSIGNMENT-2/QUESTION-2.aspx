<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUESTION-2.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_2.QUESTION_2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current Day and Selected Date</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>Date Selector</h1>
            
            <!-- Display the current day -->
            <asp:Label ID="lblCurrentDay" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
            <br /><br />
            
            <!-- Calendar control for date selection -->
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br /><br />

            <!-- Display the selected date -->
            <asp:Label ID="lblSelectedDate" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
