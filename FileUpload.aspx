<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="Fileupload.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            font-family:Cambria;
        }
        body{
            height:1600px;
            width:1320px;
            background-color:white;
            background-image:url("https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=");         
            background-size:contain;
        }
        

        .form-content{
            width:800px;
            padding:50px 0px;
            background-color:#8eb1e9;
            margin:auto;
            margin-top:60px;
            background-repeat:no-repeat;
            background-size:cover;
            border-radius:10px;
            box-shadow:0px 0px 10px 5px #f6e6e6;
           
            
        }

        .form-content h1{
            margin-top:8px;
            text-align:center;
            text-shadow:0 0 15px #0000FF;
            color:white;
        }

        .form-content h3{
            text-align:center;
            color:white;
        }

        .form-content img{
            margin-top:-20px;
            margin-left:100px;
        }

        .name {
            margin-left: 65px;
        }
        input[type=text]{
            margin-left: 25px;
            height:25px;
            width:260px;
            border-radius:4px;
            border:none;
             border-bottom:2px solid grey;
        }
        input[type=email]{
            margin-left: 25px;
            height:25px;
            width:260px;
            border-radius:4px;
            border:none;
            border-bottom:2px solid grey;
        }

        input[type=tel]{
             margin-left: 25px;
             height:25px;
             width:260px;
             border-radius:4px;
             border:none;
             border-bottom:2px solid grey;
        }
        .option{
            margin-left:90px;
        }
        .upload{
            margin-left:90px;
        }
        .btn{
            margin-left:90px;
            margin-top:10px;
        }
        .aspbtn{
            background-color:#5272dd;
            color:white;
            width:135px;
            height:35px;
            border-radius:5px;
            font-size:20px;
        }

        .aspbtn:hover{
            background-color:#0000FF;
            text-shadow: 2px 2px 5px white;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="form-content">
                <img src="reliablelogo.jpg" />
                <h1>ReliableSoft Technologies Pvt. Ltd</h1>
                <h3>Job Application Form</h3>
                <div class="name">
                    <input id="Text1" type="text"  placeholder="First Name" required="" />
                    <input id="Text2" type="text"  placeholder="Last Name"  required=""/>
                    <br />
                <br />
                    <input id="Text3" type="email" placeholder="Email" required=""/>
                    <input id="Text4" type="tel" placeholder="Mobile Number" required=""/>
                </div>
                <br />
                <div class="option">
                <asp:Label ID="Label3" runat="server" Text="What is your current employement status?"></asp:Label>
                <br />

                <asp:RadioButton ID="RadioButton1" runat="server" Text="Employed" GroupName="emp" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Unemployed" GroupName="emp" />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Self Employed" GroupName="emp" />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="Student" GroupName="emp" />
                <br />
                </div>
                <br />
                <div class="upload">
                <asp:Label ID="Label2" runat="server" Text="Upload Resume!"></asp:Label>           
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Upload your resume here!" />
                <asp:Label ID="Fileuploadstatus" runat="server" ForeColor="Black"></asp:Label>
                <br />
                    <asp:Label ID="FileInfoLabel" runat="server"></asp:Label>
                </div>
                
              
                <div class="btn">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="aspbtn" />
                </div>
               

            </div>
       
    </form>
</body>
</html>
