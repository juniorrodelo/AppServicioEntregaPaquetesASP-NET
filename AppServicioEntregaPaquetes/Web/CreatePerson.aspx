<%@ Page Title="" Language="C#" MasterPageFile="~/Web/web.Master" AutoEventWireup="true" CodeBehind="CreatePerson.aspx.cs" Inherits="AppServicioEntregaPaquetes.Web.CreatePerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
	<div class="row">
        <div class="col-sm-12">
           
        </div>
        <!-- panel preview -->
        <div class="col-sm-5">
            <h4>Create person:</h4>
            <div class="panel panel-default">
                <div class="panel-body form-horizontal payment-form">

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label1" runat="server" Text="Identificacion"></asp:Label>
                        
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbId" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label2" runat="server" Text="Names"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbNames" runat="server"></asp:TextBox>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label3" runat="server" Text="Address"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbAddress" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label4" runat="server" Text="City"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control"  ID="tbCity" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label5" runat="server" Text="State"></asp:Label>
                        <div class="col-sm-9">
                              <asp:TextBox CssClass="form-control" ID="tbState" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label7" runat="server" Text="Box"></asp:Label>
                        <div class="col-sm-9">
                             <asp:TextBox CssClass="form-control" ID="tbBox" runat="server"></asp:TextBox>
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-sm-12 text-right">
                                <asp:Button CssClass="btn btn-default preview-add-button" ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
                           
                        </div>
                    </div>
                </div>
            </div>            
        </div> <!-- / panel preview -->
        <div class="col-sm-7">
            <h4>List of Persons:</h4>
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                          <asp:GridView ID="GridView1" runat="server" CssClass="table preview-table" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Box" HeaderText="Box" SortExpression="Box" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getPeople" TypeName="AppServicioEntregaPaquetes.Datos.PackagesRepositories"></asp:ObjectDataSource>

                    </div>                            
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <hr style="border:1px dashed #dddddd;" />
                    <button type="button" class="btn btn-primary btn-block">Submit all and finish</button>
                </div>                
            </div>
        </div>
	</div>



    </div>


   

    <br />
</asp:Content>

