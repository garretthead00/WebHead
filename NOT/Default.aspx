﻿<%@ Page Title="WebHead | NOT Home" Language="VB" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="NOT_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/NonOpTime.css" rel="stylesheet"/>
    <link href="../Styles/NOTHomePage.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
        <div id="defaultMainBody">
            <section id="mainHeader">
                <article>
                    <nav id="navMenu">
                        <ul>
                            <li><asp:LinkButton ID="HomeLinkButton" CssClass="notLinkButton" runat="server">Home</asp:LinkButton></li>
                            <li><asp:LinkButton ID="DewateringReportLinkButton" CssClass="notLinkButton" runat="server">Dewatering Report</asp:LinkButton></li>
                            <li><asp:LinkButton ID="UnderReviewLinkButton" CssClass="notLinkButton" runat="server">Under Review</asp:LinkButton></li>
                            <li><asp:LinkButton ID="FinalizingLinkButton" CssClass="notLinkButton" runat="server">Finalizing</asp:LinkButton></li>
                        </ul>
                    </nav>
                </article>
            </section>

            <section id="mainContainer">

            </section>
        </div>

    <script src="../Scripts/NonOpTime.js" type="text/javascript"></script>
    <script src="../Scripts/NOTHomePage.js" type="text/javascript"></script>
</asp:Content>

