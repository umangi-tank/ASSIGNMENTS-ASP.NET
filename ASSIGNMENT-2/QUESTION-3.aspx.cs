using System;
using System.IO;
using System.Web.UI;

namespace ASSIGNMENTS.ASSIGNMENT_2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization logic, if any, goes here.
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Define the path where the uploaded file will be saved
                    string uploadPath = Server.MapPath("~/UploadedFiles/");

                    // Check if the directory exists; if not, create it
                    if (!Directory.Exists(uploadPath))
                    {
                        Directory.CreateDirectory(uploadPath);
                    }

                    // Save the uploaded file
                    string filePath = Path.Combine(uploadPath, FileUpload1.FileName);
                    FileUpload1.SaveAs(filePath);

                    // Display success message
                    lblStatus.Text = "File uploaded successfully! File name: " + FileUpload1.FileName;
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    // Handle errors during upload
                    lblStatus.Text = "File upload failed. Error: " + ex.Message;
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Display message if no file was selected
                lblStatus.Text = "Please select a file to upload.";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
