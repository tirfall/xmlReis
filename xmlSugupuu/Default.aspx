<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xmlSugupuu._Default" %>

<DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <h1>xml ja xslt andmete kuvamine</h1>
        <div>
            <asp:Xml runat="server" 
                DocumentSource="~/Autod.xml"
                TransformSource="~/autodandmed.xslt"></asp:Xml>
        </div>
    </body>
</html>