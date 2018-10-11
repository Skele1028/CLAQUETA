<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Principal2.Master" AutoEventWireup="true" CodeBehind="InicioSeccion.aspx.cs" Inherits="Calqueta.Modulos.InicioSeccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/InicioSeccion.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contInicio">
        <div>Fondo</div>
        <div class="formuInicio">
            <asp:Panel ID="FormInicio" runat="server">
                <table class="tableInicio">
                    <tr>
                        <td class="tdIma"></td>
                        <td class="tdTx"></td>
                    </tr>
                    <tr>
                        <td class="tdIma" >
                            <asp:Image ID="imaUser" CssClass="imagenes" runat="server" ImageUrl="~/Images/user.png" />
                        </td>
                        <td class="tdTx">
                            <label>
                            <input id="txUser" type="text" runat="server" ClientIDMode="Static" onkeypress="return checkUsuario(event)"/>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdIma">
                            <asp:Image ID="imaLock" CssClass="imagenes" runat="server" ImageUrl="~/Images/lock.png" />
                        </td>
                        <td class="tdTx">
                            <input id="txContraseniaInicio" type="password" runat="server" ClientIDMode="Static"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdIma"></td>
                        <td class="tdTx">
                            <label> Registrese </label>
                            <asp:HyperLink  ID="lkRegistrarse" runat="server" CssClass="enlace" NavigateUrl="~/Modulos/registro.aspx">Aquí</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdIma"></td>
                        <td class="tdTx">
                            <asp:Button ID="btIngresar" runat="server" CssClass="button" OnClick="btIngresar_Click" onSubmit="return validar_clave()" Text="Ingresar" />
                            <asp:Button ID="btSalir" runat="server" CssClass="button" Text="   Salir   "  OnClick="btSalir_Click"/>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
