<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Principal2.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Calqueta.Modulos.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Estilos/estiloRegistro.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p> Hola, prueba de registro</p><br />
    <div class="contRegistro"> <!--ContenedorRegistro -->
        <table class="tbRegistro">
             <tr>
                 <td colspan="2">
                     <label class="tittleRegisto"> Registro</label></td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td>
                     <label> Usuario </label> <br />
                </td>
                <td>
                    <input id="txUser" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                     <label> Tipo de Identificación </label> <br />
                     <asp:DropDownList CssClass="dlTipoDoc" ID="dlTipoDoc" runat="server">
                         <asp:ListItem></asp:ListItem>
                         <asp:ListItem>Cedula de Ciudadania</asp:ListItem>
                         <asp:ListItem>Tarjeta de Identidad</asp:ListItem>
                         <asp:ListItem>Pasaporte</asp:ListItem>
                         <asp:ListItem>Cedula de Extranjeria</asp:ListItem>
                     </asp:DropDownList>
                </td>
                <td>
                     <label> Identificación </label> <br />
                     <input id="txIdentificacion" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                     <label> Nombre </label> <br />
                    <input id="txNombre" type="text" runat="server"/>
                </td>
                <td>
                    <label> Apellido </label> <br />
                    <input id="txApellido" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                     <label> Correo </label> <br />
                    <input id="txCorreo" type="email" runat="server"/>
                </td>
                <td>
                     <label> Confirmar Correo </label> <br />
                    <input id="txCorreo2" type="email" runat="server"/>

                </td>
            </tr>
            <tr>
                <td>
                     <label> Contraseña </label> <br />
                    <input id="txContra" type="password" runat="server"/>
                </td>
                <td>
                     <label> Confirmar Contraseña </label> <br />
                     <input id="txContra2" type="password" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                     &nbsp;</td>
                <td>
                     &nbsp;</td>
            </tr>
        </table>
    </div><!--Fin ContendorRegistro -->

</asp:Content>
