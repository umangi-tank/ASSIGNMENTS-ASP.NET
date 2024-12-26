<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUESTION-3.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_1.QUESTION_3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Algebraic Operations</title>
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

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #555;
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
            <h2>CALCULATOR</h2>
            <label for="txtNumber1">Enter First Number:</label>
            <asp:TextBox ID="txtNumber1" runat="server" CssClass="form-control" />

            <label for="txtNumber2">Enter Second Number:</label>
            <asp:TextBox ID="txtNumber2" runat="server" CssClass="form-control" />

            <label>Select Operation:</label>
            <asp:DropDownList ID="ddlOperation" runat="server" CssClass="form-control">
                <asp:ListItem Text="Addition" Value="Add"></asp:ListItem>
                <asp:ListItem Text="Subtraction" Value="Subtract"></asp:ListItem>
                <asp:ListItem Text="Multiplication" Value="Multiply"></asp:ListItem>
                <asp:ListItem Text="Division" Value="Divide"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="btn" />
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
