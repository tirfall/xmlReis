<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xmlReis._Default" %>

<DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <h1>xml ja xslt andmete kuvamine</h1>
        <div>
            <asp:Xml runat="server" 
                DocumentSource="~/reis.xml"
                TransformSource="~/reisandmed.xslt"></asp:Xml>
        </div>
    </body>
</html>