<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password recovery.aspx.cs" Inherits="stock_grade.password_recovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      body {
  background-image: url('images/MY BOOK.jpg');
  background-repeat: no-repeat;
            /*background-repeat: no-repeat;
            background-position:center;*/
            background-size:  cover;
            /*background-attachment:scroll;
           width:1300px;
           height:700px;*/
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" >
            <p></p><p></p><p><p></p><p></p><p><p></p><p></p><p><p></p><p></p>
            <asp:TextBox align="center" ID="TextBoxmail" runat="server"></asp:TextBox>
        </div>
        
        <p align="center">
            <asp:Button align="center" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </p>
        
        <p align="center">
            <asp:Label ID="Labeleror" runat="server" Text="מייל לא תקין" Visible="False"></asp:Label>
            </p>
        
    </form>
</body>
</html>
