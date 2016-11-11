<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="DewateringReport.aspx.vb" Inherits="NOT_DewateringReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/NonOpTime.css" rel="stylesheet"/>
    <link href="../Styles/NOTDewateringReport.css" rel="stylesheet" />

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
                <div id="DewateringReport_DataEntryContainer" class="DewateringReportEntryForm">
                    <section id="Process2_DewateringReportContainer" class="Process2">
                        <p><span id="Process2_ReportHeader">Process2</span></p>
                        <article>
                            <table class="DewateringReportTable">
                                <tbody>
                                    <tr>
                                        <td>18 Dryer</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="hiddenColumn"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                    </section>
                    <section id="Process3_DewateringReportsContainer" class="Process3">
                        <p><span id="Process3_ReportHeader">Process2</span></p>
                        <article>
                            <table class="DewateringReportTable">
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="hiddenColumn"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                    </section>
                </div>
                <div class="DewateringDataForm">
                    <article id="DryerUpOrDownForm" >
                        <table>
                            <tbody>
                                <tr>
                                    <td><span class="dataFormTitle">This dryer is...</span></td>
                                </tr>
                                <tr><td><asp:RadioButton ID="DryerUpRadioButton" runat="server" Text="Up?" /></td></tr>
                                <tr>
                                    <td>or</td>
                                </tr>
                                <tr><td><asp:RadioButton ID="DryerDownRadioButton" runat="server" Text="Down?" /></td></tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="NextButton" runat="server" Text="Next" />
                                        <asp:Button ID="CancelButton" runat="server" Text="Cancel" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                    <article id="UpForm">
                        <table>
                            <tbody>
                                <tr>
                                    <td colspan="3"><span class="dataFormTitle">This dryer came up at...</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="wentUpDateDDL" runat="server">
                                            <asp:ListItem>Date</asp:ListItem>
                                            <asp:ListItem>10/29/2016</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                     <td>
                                         <asp:DropDownList ID="wentUpHourDDL" runat="server">
                                             <asp:ListItem>Hour</asp:ListItem>
                                         </asp:DropDownList>
                                         :
                                         <asp:DropDownList ID="wentUpMinDDL" runat="server">
                                             <asp:ListItem>Minute</asp:ListItem>
                                         </asp:DropDownList>
                                    </td>

                                    <td>
                                        <asp:DropDownList ID="wentUpampmDDL" runat="server">
                                            <asp:ListItem>-ampm-</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <span class="dataFormTitle">Select the Product Type and Crumb Unit</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="wentUpProductTypeDDL" runat="server">
                                            <asp:ListItem>Product Type</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="wentUpCrumbUnitDDL" runat="server">
                                            <asp:ListItem>Crumb Unit</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="wentUpSubmitButton" runat="server" Text="Submit" CssClass="dewateringFormButton"/>
                                        <asp:Button ID="wentUpCancelButton" runat="server" Text="Cancel" CssClass="dewateringFormButton"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                    <article id="DownForm">
                        <table>
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <span class="dataFormTitle">This Dryer went down at...</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="wentDownDateDDL" runat="server">
                                            <asp:ListItem>Date</asp:ListItem>
                                            <asp:ListItem>10/29/2016</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                     <td>
                                         <asp:DropDownList ID="wentDownHourDDL" runat="server">
                                             <asp:ListItem>Hour</asp:ListItem>
                                         </asp:DropDownList>
                                         :
                                         <asp:DropDownList ID="wentDownMinuteDDL" runat="server">
                                             <asp:ListItem>Minute</asp:ListItem>
                                         </asp:DropDownList>
                                    </td>

                                    <td>
                                        <asp:DropDownList ID="wentDownampmDDL" runat="server">
                                            <asp:ListItem>-ampm-</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <span class="dataFormTitle">Select the Product Type and Crumb Unit</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="wentDownProductTypeDDL" runat="server">
                                            <asp:ListItem>Product Type</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="wentDownCrumbUnitDDL" runat="server">
                                            <asp:ListItem>Crumb Unit</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <span class="dataFormTitle">Enter the NOT Code and Subcode</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="wentDownCodeDDL" runat="server">
                                            <asp:ListItem>Select a Code</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="wentDownSubCodeDDL" runat="server">
                                            <asp:ListItem>Select a SubCode</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:TextBox ID="wentDownReasonTextBox" CssClass="dewateringReportTextBox" runat="server" TextMode="MultiLine" placeholder="Enter a reason (255 chars)"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="wentDownSubmitButton" runat="server" Text="Submit" CssClass="dewateringFormButton"/>
                                        <asp:Button ID="wentDownCancelButton" runat="server" Text="Cancel" CssClass="dewateringFormButton"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
        </div>

    <script src="../Scripts/NonOpTime.js" type="text/javascript"></script>
    <script src="../Scripts/NOTDewateringReport.js" type="text/javascript"></script>
</asp:Content>

