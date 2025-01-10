using System;

namespace ASSIGNMENTS.ASSIGNMENT_2
{
    public partial class QUESTION_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Display the current day when the page loads for the first time
                lblCurrentDay.Text = "Today is: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Display the selected date
            lblSelectedDate.Text = "You selected: " + Calendar1.SelectedDate.ToString("dddd, MMMM dd, yyyy");
        }
    }
}
