<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_2.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>File Upload Control</h1>
            
            <!-- File Upload Control -->
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />

            <!-- Upload Button -->
            <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click" />
            <br /><br />

            <!-- Label to Display Status -->
            <asp:Label ID="lblStatus" runat="server" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
