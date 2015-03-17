<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1_3_konvertera_temperaturer._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="left">
            <div>Starttemperatur:</div>
            <asp:TextBox ID="StartTextBox" runat="server"></asp:TextBox><br />
            <div>Sluttemperatur:</div>
            <asp:TextBox ID="EndTextBox" runat="server"></asp:TextBox><br />
            <div>Steg:</div>
            <asp:TextBox ID="StepTextBox" runat="server"></asp:TextBox><br />
            <br />
            <asp:RadioButton ID="CtoF" GroupName="Conversion" runat="server" Text="Celcius till Farenheit"/>
            <br />
            <asp:RadioButton ID="FtoC" GroupName="Conversion" runat="server" Text="Farenheit till Calcius"/>
            <br />
            <asp:Button ID="Convert" runat="server" Text="Button" onclick="Convert_Click"/>
        </div>
        <div class="left">
            <asp:PlaceHolder ID="TablePlaceHolder" runat="server">
                <asp:Table ID="Table" runat="server" CssClass="table"></asp:Table>
            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
