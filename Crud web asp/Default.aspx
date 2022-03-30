<%@ Page Title="CRUD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 200px">
        <div style="font-size:x-large; margin-top: 17px;" aling="center">Manejo de informacion </div>
        <br />

        <table class="nav-justified">
            <tr>
                <td style="height: 22px"></td>
                <td class="modal-sm" style="width: 100px; height: 22px">ID</td>
                <td style="width: 887px; height: 22px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="351px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">Nombre</td>
                <td style="width: 887px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="351px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">Apellido</td>
                <td style="width: 887px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="351px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">Correo</td>
                <td style="width: 887px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="351px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">Cedula</td>
                <td style="width: 887px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="351px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">Telefono</td>
                <td style="width: 887px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="351px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#000099" BorderStyle="Groove" ForeColor="White" OnClick="Button1_Click" Text="Insertar" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Groove" ForeColor="Black" OnClick="Button2_Click1" Text="Actualizar" />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Groove" OnClick="Button3_Click" Text="Borrar" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">&nbsp;</td>
                <td style="width: 887px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="modal-sm" style="width: 100px">&nbsp;</td>
                <td style="width: 887px">
                    <asp:GridView ID="GridView1" runat="server" Width="602px">
                    </asp:GridView>
                </td>
                <td></td>
            </tr>
        </table>

    </div>
</asp:Content>
