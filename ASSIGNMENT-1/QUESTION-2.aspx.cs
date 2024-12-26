using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASSIGNMENTS.ASSIGNMENT_1
{
    public partial class QUESTION_2 : System.Web.UI.Page
    {
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double temperature;
            if (double.TryParse(txtTemperature.Text.Trim(), out temperature))
            {
                if (rbToCelsius.Checked)
                {
                    double celsius = (temperature - 32) * 5 / 9;
                    lblResult.Text = $"Temperature in Celsius: {celsius:F2}°C";
                }
                else if (rbToFahrenheit.Checked)
                {
                    double fahrenheit = (temperature * 9 / 5) + 32;
                    lblResult.Text = $"Temperature in Fahrenheit: {fahrenheit:F2}°F";
                }
                else
                {
                    lblResult.Text = "Please select a conversion option.";
                }
            }
            else
            {
                lblResult.Text = "Please enter a valid temperature value.";
            }
        }
    }
}