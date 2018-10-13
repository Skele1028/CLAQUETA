<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Principal2.Master" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Calqueta.Modulos.IniciarSeccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Estilos/estiloInicioSesion.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p> Hola, prueba de registro</p><br />
    <div class="contInicioSesion"> <!--ContenedorInicioSesion-->
        <table class="tbInicioSesion">
            <tr>
                <td colspan="4">
                    <label class="tittleInicioS">Inicio de Sesión</label></td>
            </tr>
            <tr>
                <td class="tdContIma"><asp:Image CssClass="images" ID="imaUser" runat="server" ImageUrl="~/Images/user.png" /></td>
                
                <td class="tdMed" colspan="2">&nbsp;</td>
                <td><input id="txUser" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="tdContIma"><asp:Image CssClass="images" ID="imaContra" runat="server" ImageUrl="~/Images/lock.png" /></td>
                <td class="tdMed" colspan="2">&nbsp;</td>
                <td><input id="txContra" type="password" runat="server"/></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button class="button" ID="btIniciarS" runat="server" Text="Iniciar Sesión" />
                </td>
                <td colspan="2">
                    <asp:Button class="button" ID="btCancelarIS" runat="server" Text="Cancelar" />
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
        </table>
        
    </div> <!--Fin ContenedorInicioSesion-->
</asp:Content>
