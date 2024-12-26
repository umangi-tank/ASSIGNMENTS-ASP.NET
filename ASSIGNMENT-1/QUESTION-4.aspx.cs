using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASSIGNMENTS.ASSIGNMENT_1
{
    public partial class QUESTION_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string age = txtAge.Text;
            string city = ddlCity.SelectedValue;
            string gender = rblGender.SelectedValue;

            lblResult.Text = $"Name: {name}<br />Age: {age}<br />City: {city}<br />Gender: {gender}";
        }
    }
}