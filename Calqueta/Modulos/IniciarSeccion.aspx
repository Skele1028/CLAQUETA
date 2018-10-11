<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Principal2.Master" AutoEventWireup="true" CodeBehind="IniciarSeccion.aspx.cs" Inherits="Calqueta.Modulos.IniciarSeccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Estilos/estiloInicioSeccion.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p> Hola, prueba de registro</p><br />
    <div class="contInicioSeccion"> <!--ContenedorInicioSeccion-->
        <table class="tbInicioSeccion">
            <tr>
                <td colspan="3">
                    <label class="tittleInicioS">Inicio de Sección</label></td>
            </tr>
            <tr>
                <td class="tdContIma"><asp:Image CssClass="images" ID="imaUser" runat="server" ImageUrl="~/Images/user.png" /></td>
                
                <td class="tdMed">&nbsp;</td>
                <td><input id="txUser" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="tdContIma"><asp:Image CssClass="images" ID="imaContra" runat="server" ImageUrl="~/Images/lock.png" /></td>
                <td class="tdMed">&nbsp;</td>
                <td><input id="txContra" type="password" runat="server"/></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
        
    </div> <!--Fin ContenedorInicioSeccion-->
</asp:Content>
