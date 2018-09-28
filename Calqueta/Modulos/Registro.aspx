<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Calqueta.Modulos.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/Registro.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="FormRegistro" CssClass="FormRegistro" runat ="server" Width="60%" HorizontalAlign="Center">
        <table class="tableResgitro">
            <tr>
                <td>
                    <label>Tipo de documento (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <asp:DropDownList CssClass="txbT" ID="txTipoDocumento" runat="server">
                        <asp:ListItem>CC</asp:ListItem>
                        <asp:ListItem>TI</asp:ListItem>
                        <asp:ListItem>Pasaporte</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <label>Número de documento (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input id="txDocumento" type="text" runat="server" ClientIDMode="Static" onkeypress="return checkDocumento(event)"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Nombre (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input id="txNombre" type="text" runat="server" ClientIDMode="Static" onkeypress="return checkNombre(event)"/>
                </td>
                <td>
                    <label>Segundo nombre:</label><br />
                    <input id="txSegundoNombre" type="text" runat="server" ClientIDMode="Static" onkeypress="return checkNombre(event)"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Apellido (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <asp:TextBox CssClass="txbT" type="text" ID="txApellido" runat="server"></asp:TextBox>
                </td>
                <td>
                    <label>Segundo apellido:</label><br />
                    <asp:TextBox ID="txSegundoApellido" runat="server" CssClass="txbT" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Correo electrónico (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input id="txCorreo" type="text" runat="server" ClientIDMode="Static"/>
                </td>
                <td>
                    <label>Confirmar correo eletrónico (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input id="txCorreo2" type="text" onchange="validar_correo()" runat="server" ClientIDMode="Static"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Contraseña (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input type="password" id="txContrasenia" runat="server" ClientIDMode="Static"/>
                </td>
                <td>
                    <label>Confirmar contraseña (</label><label Class="asteriscos">*</label><label>):</label><br />
                    <input type="password" id="txContrasenia2" onchange="validar_clave()" runat="server" ClientIDMode="Static" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="contentBts">
                        <asp:Button class="button" ID="btRegistrar" runat="server" OnClick="btIngresar_Click" onSubmit="return validar_clave()" Text="Registrarse" />
                        <asp:Button class="button" ID="btSalir" runat="server" OnClick="btSalir_Click" Text="   Salir   " />
                   </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
