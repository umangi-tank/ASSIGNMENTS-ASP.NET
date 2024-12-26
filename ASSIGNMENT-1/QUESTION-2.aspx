<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUESTION-2.aspx.cs" Inherits="ASSIGNMENTS.ASSIGNMENT_1.QUESTION_2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Conversion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 100px auto;
            max-width: 400px;
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
            <h2>Temperature Conversion</h2>
            <label for="txtTemperature">Enter Temperature:</label>
            <asp:TextBox ID="txtTemperature" runat="server" CssClass="form-control" />
            
            <h2><label>Select Conversion:</label></h2>
            <asp:RadioButton ID="rbToCelsius" runat="server" GroupName="Conversion" Text="Convert to Celsius" />
            <asp:RadioButton ID="rbToFahrenheit" runat="server" GroupName="Conversion" Text="Convert to Fahrenheit" />

            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" CssClass="btn" />
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
