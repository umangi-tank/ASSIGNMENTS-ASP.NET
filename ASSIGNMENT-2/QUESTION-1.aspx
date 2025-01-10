<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUESTION-1.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_2.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ad Rotator Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>Ad Rotator </h1>
            <asp:AdRotator 
                ID="AdRotator1" 
                runat="server" 
                AdvertisementFile="~/ASSIGNMENT-2/XMLFile1.xml" 
                Width="300px" 
                Height="250px">
            </asp:AdRotator>
        </div>
    </form>
</body>
</html>