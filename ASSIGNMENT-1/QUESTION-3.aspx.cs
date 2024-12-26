using System;
using System.Web.UI;

namespace ASSIGNMENTS.ASSIGNMENT_1
{
    public partial class QUESTION_3 : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double number1, number2, result = 0;
            string operation = ddlOperation.SelectedValue; // Selected operation

            // Try parsing the input values
            bool isNumber1Valid = double.TryParse(txtNumber1.Text.Trim(), out number1);
            bool isNumber2Valid = double.TryParse(txtNumber2.Text.Trim(), out number2);

            if (isNumber1Valid && isNumber2Valid)
            {
                // Switch statement to handle different operations
                switch (operation)
                {
                    case "Add":
                        result = number1 + number2;
                        lblResult.Text = $"Result: {number1} + {number2} = {result}";
                        break;
                    case "Subtract":
                        result = number1 - number2;
                        lblResult.Text = $"Result: {number1} - {number2} = {result}";
                        break;
                    case "Multiply":
                        result = number1 * number2;
                        lblResult.Text = $"Result: {number1} × {number2} = {result}";
                        break;
                    case "Divide":
                        // Handling division by zero
                        if (number2 != 0)
                        {
                            result = number1 / number2;
                            lblResult.Text = $"Result: {number1} ÷ {number2} = {result:F2}"; // Formatting result to 2 decimal places
                        }
                        else
                        {
                            lblResult.Text = "Error: Division by zero is not allowed.";
                        }
                        break;
                    default:
                        lblResult.Text = "Please select a valid operation.";
                        break;
                }
            }
            else
            {
                // Display error if invalid input is provided
                lblResult.Text = "Please enter valid numeric values for both numbers.";
            }
        }
    }
}
