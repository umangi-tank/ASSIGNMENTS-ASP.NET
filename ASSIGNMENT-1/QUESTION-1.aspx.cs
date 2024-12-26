using System;

namespace ASSIGNMENTS.ASSIGNMENT_1
{
    public partial class QUESTION_1 : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            if (!string.IsNullOrEmpty(name))
            {
                lblMessage.Text = "Welcome, " + name + "!";
            }
            else
            {
                lblMessage.Text = "Please enter your name.";
            }
        }
    }
}
