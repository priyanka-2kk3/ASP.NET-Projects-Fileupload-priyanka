using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fileupload
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Define the path to save the uploaded file
                    string folderPath = Server.MapPath("~/Fileuploadsfiles/");

                    // Ensure the Uploads folder exists
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    // Get the file name and save it
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    string filePath = Path.Combine(folderPath, fileName);
                    FileUpload1.SaveAs(filePath);

                    // Display file information
                    Fileuploadstatus.Text = "Upload status: File uploaded successfully!";
                    FileInfoLabel.Text = $"<br />Name: {fileName}<br />Type: {FileUpload1.PostedFile.ContentType}<br />Size: {FileUpload1.PostedFile.ContentLength} bytes";
                }
                catch (Exception ex)
                {
                    Fileuploadstatus.Text = "Upload status: The file could not be uploaded. The following error occurred: " + ex.Message;
                }
            }
            else
            {
                Fileuploadstatus.Text = "Upload status: No file selected.";
            }
        }
    }
}