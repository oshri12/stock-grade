<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock_grades.aspx.cs" Inherits="stock_grade.stock_grades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background-image: url('images/MY BOOK.jpg');
  background-repeat: no-repeat;
            background-position:center;
            background-size:  cover;
            /*background-attachment:scroll;
           width:1300px;
           height:700px;*/
}

* {
  box-sizing: border-box;
}

/* Add padding to containers 
.container {       
                    border-style: solid;
                    text-align:center;
                    margin-top:100px;

    }

/* Full-width input fields */
input[type=text], input[type=password] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        padding: 15px;
  margin: 5px 0 22px 108;
        display: inline-block;
        background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50;
        color: white;
        padding: 16px 20px;
        margin: 8px 0;
        cursor: pointer;
        opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
    /*.container {
        height: 258px;
    }*/
    /*.auto-style1 {
        height: 23px;
    }*/
</style>
</head>
<body >
    <div id="con">
    <form id="form1" runat="server">
    
  <table  class="container" align="center">
      <tr><td style="text-align:center" class="auto-style1">
          <h1 align="center" >כניסה</h1>
          </td>
          </tr>
      <tr><td style="text-align:right" class="auto-style1">
          <label  for="email"><b>ת.ז</b></label>
         

          </td>
          </tr>
           <tr>
               <td>
                    <%--<asp:TextBox id="TextBoxID" runat="server"  Width="154px"  align="center" ></asp:TextBox>--%>
                   <asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
          </td>
      </tr>
            <tr><td style="text-align:right">
          <label  for="email"><b>ססמא</b></label>
         

          </td>
          </tr>
           <tr>
               <td>

         <asp:TextBox align="center" id="TextBoxPas" runat="server"    ></asp:TextBox>
          </td>
      </tr>
       <tr>
               <td style="text-align:center">

                   <asp:Button align="center" ID="Button1" class="registerbtn" runat="server" Text="אישור" OnClick="Button1_Click" Height="47px" Width="105px" />


          </td>
      </tr>
         <tr>
               <td style="text-align:center">

                     <asp:Label ID="Label1" runat="server" Text="שם משתמש או ססמא שגויים" Visible="False"></asp:Label>

                     <br />

          </td>
      </tr>
      
     
          </table>
        <table align="center">
         <tr align="center">
            <td >

                     <asp:Label ID="Label2" runat="server" Text="?משתמש חדש"></asp:Label>

          </td>
          
       <td >  </td>
          
            <td >

                    <a href="https://www.w3schools.com/html/" style="color:black">שכחתי סיסמה</a> 


          </td>
          </tr>
            </table>
       
    </form>
        </div>
</body>
</html>

