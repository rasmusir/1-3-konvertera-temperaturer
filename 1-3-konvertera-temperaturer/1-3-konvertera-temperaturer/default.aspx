<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1_3_konvertera_temperaturer._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="left settings">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <label for="StartTextBox">Starttemperatur:</label>
            <asp:TextBox ID="StartTextBox" runat="server"></asp:TextBox><br />
            <label for="EndTextBox">Sluttemperatur:</label>
            <asp:TextBox ID="EndTextBox" runat="server"></asp:TextBox><br />
            <label for="StepTextBox">Steg:</label>
            <asp:TextBox ID="StepTextBox" runat="server"></asp:TextBox><br />
            <br />
            <asp:RadioButton ID="CtoF" GroupName="Conversion" runat="server" Text="Celcius till Farenheit" Checked="true"/>
            <br />
            <asp:RadioButton ID="FtoC" GroupName="Conversion" runat="server" Text="Farenheit till Calcius"/>
            <br />
            <asp:Button ID="Convert" runat="server" Text="Konvertera" onclick="Convert_Click"/>

            <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemperatur" ControlToValidate="StartTextBox" ></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en sluttemperatur" ControlToValidate="EndTextBox" ></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i en stegstorlek" ControlToValidate="StepTextBox" ></asp:RequiredFieldValidator>

            <asp:CompareValidator Display="None" ID="CompareValidator1" runat="server" ErrorMessage="Starttemperaturen måste vara ett heltal" ControlToValidate="StartTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:CompareValidator Display="None" ID="CompareValidator2" runat="server" ErrorMessage="Sluttemperaturen måste vara ett heltal och större än Starttemperaturen" ControlToValidate="EndTextBox" Type="Integer" ControlToCompare="StartTextBox" Operator="GreaterThan"></asp:CompareValidator>
            <asp:CompareValidator Display="None" ID="CompareValidator3" runat="server" ErrorMessage="Stegen måste vara ett heltal" ControlToValidate="StepTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>

            <asp:RangeValidator Display="None" ID="RangeValidator1" runat="server" ErrorMessage="Stegen måste vara mellan 1 och 100" MinimumValue="1" MaximumValue="100" ControlToValidate="StepTextBox" Type="Integer"></asp:RangeValidator>
        
        </div>
        <asp:PlaceHolder ID="TablePlaceHolder" runat="server" Visible="false">
            <div class="left">
                    <asp:Table ID="Table" runat="server" CssClass="table"></asp:Table>
            </div>
        </asp:PlaceHolder>
    </form>
</body>
</html>
