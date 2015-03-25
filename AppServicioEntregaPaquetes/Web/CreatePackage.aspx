<%@ Page Title="" Language="C#" MasterPageFile="~/Web/web.Master" AutoEventWireup="true" CodeBehind="CreatePackage.aspx.cs" Inherits="AppServicioEntregaPaquetes.Web.CreatePackage" %>
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
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label1" runat="server" Text="Code"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbCode" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label3" runat="server" Text="Sender"></asp:Label>
                        <div class="col-sm-9">
                            <asp:DropDownList CssClass="form-control" ID="sender2" runat="server" DataSourceID="person" DataTextField="Name" DataValueField="Id">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="person" runat="server" SelectMethod="getPeople" TypeName="AppServicioEntregaPaquetes.Datos.PackagesRepositories">
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                    

                    
        
                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label4" runat="server" Text="Receipt"></asp:Label>
                        <div class="col-sm-9">
                            <asp:DropDownList CssClass="form-control" ID="receipt2" runat="server" DataSourceID="person" DataTextField="Name" DataValueField="Id">
                             </asp:DropDownList>
                        </div>
                    </div> 

                    <div class="form-group">
                          
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label2" runat="server" Text="Shipping type"></asp:Label>
                        <div class="col-sm-9">
                        <asp:DropDownList onChange="javascript:mostrar(this.value);" CssClass="form-control" ID="type" runat="server">
                            <asp:ListItem Value="0">Select shiiping</asp:ListItem>
                            <asp:ListItem Value="twodaypackage">Two Day Package</asp:ListItem>
                            <asp:ListItem Value="ordanypackage">Ordany Package</asp:ListItem>
                            <asp:ListItem Value="overnightpackage">Over Night Package</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                    </div> 

                    <div id="twodaypackage" style="display: none;" class="form-group">                        
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label7" runat="server" Text="Fixed Fee"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbFixedFee" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div id="ordanypackage" style="display: none;" class="form-group">                        
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label9" runat="server" Text="Days"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbDays" runat="server"></asp:TextBox>
                        </div>
                    </div> 

                    <div id="overnightpackage" style="display: none;" class="form-group">                        
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label8" runat="server" Text="Additional Charge "></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbAdditionalCharge" runat="server"></asp:TextBox>
                        </div>
                    </div> 

                    <div class="form-group">                        
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label5" runat="server" Text="Weight in grams"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbWeight" runat="server"></asp:TextBox>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label CssClass="col-sm-3 control-label" ID="Label6" runat="server" Text="Cost x gram"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox CssClass="form-control" ID="tbCosG" runat="server"></asp:TextBox>
                        </div>
                    </div>

                   
                    <div class="form-group">
                        <div class="col-sm-12 text-right">
                                <asp:Button CssClass="btn btn-default preview-add-button" ID="Button1" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
             
                        </div>
                    </div>
                </div>
            </div>            
        </div> <!-- / panel preview -->
        <div class="col-sm-7">
            <h4>List of Packages:</h4>
            <div class="row">

                 <div class="col-xs-12">
                    <div class="table-responsive">
                           <asp:GridView  CssClass="table preview-table" ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="Packages">
                    <Columns>
                        <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="Packages" runat="server" SelectMethod="getPackages" TypeName="AppServicioEntregaPaquetes.Datos.PackagesRepositories"></asp:ObjectDataSource>

                    </div>                            
                </div>
            </div>



            <h4>List of Persons:</h4>
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                          <asp:GridView ID="GridView2" runat="server" CssClass="table preview-table" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
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
                    <hr style="border:1px dashed #dddddd;"/>
                    <button type="button" class="btn btn-primary btn-block">Submit all and finish</button>
                </div>                

              

                
            </div>
        </div>
	</div>

    </div>



       
</asp:Content>
