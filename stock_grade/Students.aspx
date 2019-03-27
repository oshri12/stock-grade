<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="stock_grade.Students" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <title></title>
    <script>
        function myFunction() {
            alert("I am an alert box!");
        }
</script>
    <style>
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
        .hero-image {
  /*background-image: url('images/test5.png');*/
  height: 550px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
        body {
             margin: 0;
  font-family: Arial, Helvetica, sans-serif;
            /*background-image: url('images/books.jpg');
            background-repeat: no-repeat;
            position: relative;
            height: 100%;
            width: 100%;*/
            /*margin: 0 auto;
   bottom: 0;*/
            /*background-position: center;
            background-size: inherit;*/
            /*max-width: 800px;
  max-height:800px;
}*/
            /*.container {
  position: relative;
  max-width: 500px;
  margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
  
  bottom: 0;
  background: rgb(0, 0, 0); 
  background: rgba(0, 0, 0, 0.5);  
  color: #f1f1f1;
  width: 10%;
  padding: 20px;
}*/
        }
        #Div1{
    width:600px;
    margin-left:auto;
    margin-right:auto;
}
    </style>
</head>

<body>
   <div class="hero-image">
  <div class="hero-text">
    <form id="form1" runat="server">
   <%--<div class="container">
  <img src="images/test5.png" alt="Notebook" style="width:100%;">
  <div class="content">--%>
 
  

    
    
    <h1 align="center">מאגר ציונים</h1>

<%--<script>
    function myFunction() {
        alert("I am an alert box!");
    }
</script>--%>
       
        <asp:GridView horizontalalign="Center" ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#33cccc" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor=#434349 Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
          <div align="center" style="text-align:center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

              <asp:Button align="center" ID="Button1" runat="server" OnClick="Button1_Click" Text="ייצוא לאקסל" />
          </div>
       <%--  </div>
</div>--%>
    </form>
    </div>
       </div>
    </body>
</html>
