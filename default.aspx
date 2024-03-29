﻿<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<div class="col-md-3">
    <a class="twitter-timeline" data-dnt="true" href="https://twitter.com/MSCI3300_SLPL" data-widget-id="541646861627449344">Tweets by @MSCI3300_SLPL</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
<div style="align-content:center">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_library %>" SelectCommand="Select Count(*) as [Number of Materials] from  library_Materials;"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="Number of Materials" HeaderText="Number of Materials" ReadOnly="True" SortExpression="Number of Materials" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
</div>
<div class="col-md-9" >
    <h3 style="color: #800000; font-weight: bold; text-decoration: underline; font-size: x-large;">Welcome to the South Liberty Public Library!</h3>
    
    <asp:image runat="server" ImageUrl="~/LibraryQuote.jpg"></asp:image>

</div>
</asp:Content>

