<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUESTION-4.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_1.QUESTION_4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoPostBack Demonstration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 100px auto;
            max-width: 500px;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .result {
            text-align: center;
            margin-top: 15px;
            font-size: 18px;
            color: #28a745;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <h2>AutoPostBack Demonstration</h2>
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />

            <label for="txtAge">Age:</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" />

            <label for="ddlCity">City:</label>
            <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true" CssClass="form-control">
                <asp:ListItem Text="Select State" Value="" />
                <asp:ListItem Text="gujrat" Value="Gujrat" />
                <asp:ListItem Text="goa" Value="Goa" />
                <asp:ListItem Text="panjab" Value="panjab" />
                <asp:ListItem Text="maharastra" Value="maharastra" />
                <asp:ListItem Text="tamilnadu" Value="tamilnadu" />
            </asp:DropDownList>

            <label>Gender:</label>
            <asp:RadioButtonList ID="rblGender" runat="server" CssClass="form-control">
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
            </asp:RadioButtonList>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />

            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
