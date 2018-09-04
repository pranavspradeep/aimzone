<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advimageupload.aspx.cs" Inherits="Advimageupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  
        <div>
            <form id="form2" runat="server">

    <div>

        &nbsp;Upload_Add:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" runat="server" />

        &nbsp;

        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button_Click" />

        &nbsp;

        <br />

        &nbsp;Navigate_Url:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />

        Alternate_Text:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        <br />

        Impression:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        <br />

        Keyword:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Save_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />

        <br />

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="navi">Show ads</asp:LinkButton>

    </div>
                </form>
        </div>
    
</body>
</html>
