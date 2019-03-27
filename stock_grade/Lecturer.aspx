<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecturer.aspx.cs" Inherits="stock_grade.Lecturer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 141px;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 138px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            width: 138px;
            height: 28px;
        }
        body {
  background-image: url('images/MY BOOK.jpg');
  background-repeat: no-repeat;
            background-repeat: no-repeat;
            background-position:center;
            background-size:  cover;
            /*background-attachment:scroll;
           width:1300px;
           height:700px;*/
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2 align="center" >
        הזנת ציונים&nbsp;&nbsp;
    </h2>
      <div style="font-size:20px; text-align:center; ">
        <table align="center" style="font-size:20px;" border="1" >
           <tr>
               
               <td style="font-size:20px; background-color:#434349;"> &nbsp;&nbsp;&nbsp; <span id="Label4">ציון</span></td>
               <td style="font-size:20px; background-color:#434349;" class="auto-style2"> <span id="Label3">מקצוע</span></td>
               <td style="font-size:20px; background-color:#434349;" class="auto-style1"> ת.ז</td>
           </tr>
              <tr>
               
               <td style="font-size:20px; background-color:#ffffcc;"> 
                   <asp:TextBox id="TextBoxg" runat="server"></asp:TextBox>
                  </td>
               <td style="font-size:20px; background-color:#ffffcc;" class="auto-style2"> 
                   <asp:DropDownList ID="DropDownListP" runat="server" AppendDataBoundItems="True" AutoPostBack="True" EnableTheming="True" OnSelectedIndexChanged="DropDownListP_SelectedIndexChanged1">
                   </asp:DropDownList>
                  </td>
               <td style="font-size:20px; background-color:#ffffcc;" class="auto-style1">
                   &nbsp;<asp:DropDownList ID="DropDownListID" runat="server" Height="32px" AppendDataBoundItems="True" AutoPostBack="True" EnableTheming="True" OnSelectedIndexChanged="DropDownListID_SelectedIndexChanged">
                   </asp:DropDownList>
                  </td>
           </tr>
        </table>
           </div>
      
        <p align="center">
<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Button align="center" ID="Button1" runat="server" OnClick="Button1_Click" Text="אישור" />
        </p>
        <p>
            &nbsp;</p>
      
    <h2 align="center">
        הוספת תלמיד חדש</h2>
     <table align="center" style="font-size:20px; margin-top: 0px;" border="1" >
           <tr>
               <td style="font-size:20px; background-color:#434349; text-align:center;"> &nbsp;&nbsp;&nbsp; <span id="Labelpas">ססמא</span></td>
               <td style="font-size:20px; background-color:#434349; text-align:center;"> &nbsp;&nbsp;&nbsp; <span id="Labeln"> ת.ז</span></td>
               <td style="font-size:20px;text-align:center; background-color:#434349;" class="auto-style3"> <span id="Labeli">שם תלמיד</span></td>
               
           </tr>
              <tr>
               <td style="font-size:20px; background-color:#ffffcc;" class="auto-style4"> 
                   <asp:TextBox id="TextBoxpas" runat="server"></asp:TextBox>
                  </td>
               <td style="font-size:20px; background-color:#ffffcc;" class="auto-style4"> 
                   <asp:TextBox id="TextBoxId" runat="server"></asp:TextBox>
                  </td>
                  <td style="font-size:20px; background-color:#ffffcc;" class="auto-style5"> 
                   <asp:TextBox id="TextBoxname" runat="server" Height="16px" Width="128px"></asp:TextBox>
                  </td>
              
           </tr>
        </table>
        <p align="center" >
            <asp:Button align="center" ID="ButtonOk" runat="server" OnClick="ButtonOk_Click1" Text="אישור" />
        </p>
          <h2 align="center">
        הוספת מקצוע חדש</h2>
     <table align="center" style="font-size:20px;" border="1" >
           <tr>
               
               <td style="font-size:20px; background-color:#434349; text-align:center;"> &nbsp;&nbsp;&nbsp; קוד מקצוע</td>
               <td style="font-size:20px;text-align:center; background-color:#434349;" class="auto-style3"> שם מקצוע</td>
                <tr>
               
               <td style="font-size:20px; background-color:#ffffcc;"> 
                   <asp:TextBox id="TextBoxidp" runat="server"></asp:TextBox>
                  </td>
                  <td style="font-size:20px; background-color:#ffffcc;" class="auto-style3"> 
                   <asp:TextBox id="TextBoxnp" runat="server" Height="16px" Width="128px"></asp:TextBox>
                  </td>
              
           </tr>
        </table>
        <p align="center"">
            <asp:Button ID="Buttonokp" runat="server" Text="אישור" OnClick="Buttonokp_Click"  />
            <%--<asp:Button align="center" ID="Button3" runat="server" OnClick="Button1_Click" Text="אישור" />--%>
            </p>
          
      
    </form>
    </body>
</html>
