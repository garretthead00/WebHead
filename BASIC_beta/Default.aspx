<%@ Page Title="WebHead | BASIC beta" Language="VB" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="BASIC_beta_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/slideOut.css" rel="stylesheet" /> 
    <link href="../Styles/basicBeta.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="defaultMainBody">

        <section>
            <!--    RateReasoning:  Current vs Max rates by Dryer   -- Stacked Bar; Vertical-->
            <article class="boxFrame" id="currentRates">
                <asp:UpdatePanel ID="currentVsMaxRatesUpdatePanel" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                    <div class="boxBody" id="barDryer">
                        <div class="boxHeader">
                            <div class="helpControl" data-popup-open="popup-1"><span>?</span></div>
                        </div>
                        <div id="barHolder">
                            <div id="barLegend" class="chartLegend"><span class="chartTitle">Current vs Max Rates by Dryer</span></div>
                            <div class="chartControlContainer" id="RateReasonBarChartControlContainer">
                                <span>Select a date and time:</span>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span class="CalendarDatePicker">
                                                    <asp:TextBox ID="CurrentVsMaxRatesDateTextBox" runat="server" CssClass="CurrentVsMaxDatePicker" placeholder="Select a Date"></asp:TextBox>
                                                </span>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="CurrentVsMaxRatesTimeDDL" runat="server"></asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="CurrentVsMaxBarRefreshButton" runat="server" ImageUrl='../Styles/Images/refreshIcon.png' Width="35" Height="35" OnClientClick="refreshCurrentVsMaxRatesValues(); return false;"></asp:ImageButton>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> 
                            <div id="currentVsMaxCanvasContainer" class="canvasContainer">
                                <canvas id="currentVsMaxByDryerBarCanvas" class="chartCanvas" data-popup-open="popup-2"></canvas>
                            </div>                      
                           
                            <div id="reasonsTableContainer">
                                <table id="reasonsTable">
                                    <thead>
                                        <tr>
                                            <th>Dryer</th>
                                            <th>Reason</th>
                                            <th>SubReason</th>
                                            <th>SubReason 2</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="CurrentVsMaxBarRefreshButton"/>
                    </Triggers>
                </asp:UpdatePanel>
            </article>
            <article class="boxFrame" id="inCat">
                <div class="boxBody" id="polarArea">
                    <div class="boxHeader">
                        <div class="helpControl" data-popup-open="popup-1"><span>?</span></div>
                    </div>
                    <div id="polarHolder">
                        <div id="polarLegend" class="chartLegend"><span class="chartTitle">Resolved In Category</span><span class="chartDesc"></span></div>
                        <canvas id="polarCanvas" data-popup-open="popup-2"></canvas>
                    </div>
                </div>
            </article>
            <article class="boxFrame" id="rateReasonsByTypeChart">
            <asp:UpdatePanel ID="rateReasonsByTypeChartUpdatePanel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                        <div class="boxBody" id="radarArea">
                            <div class="boxHeader">
                                <div class="helpControl" data-popup-open="popup-1"><span>?</span></div>
                            </div>
                            <div id="radarHolder">
                                <div id="radarLegend" class="chartLegend"><span class="chartTitle">Rate Reasons by Product Type</span></div>
                                <div class="chartControlContainer" id="RateReasonRadarChartControlContainer">
                                    <span>Select a date range and product type:</span>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <span class="CalendarDatePicker">
                                                        <asp:TextBox ID="RateReasonFromDateTextBox" runat="server" CssClass="RateReasonFromDatePicker" placeholder="From"></asp:TextBox>
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="CalendarDatePicker">
                                                        <asp:TextBox ID="RateReasonToDateTextBox" runat="server" CssClass="RateReasonToDatePicker" placeholder="To"></asp:TextBox>
                                                    </span> 
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="RateReasonProductTypeDDL" runat="server"></asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="RateReasonRadarRefreshButton" runat="server" ImageUrl='../Styles/Images/refreshIcon.png' Width="35" Height="35" OnClientClick="refreshRateReasonRadarValues(); return false;"></asp:ImageButton>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="radarCanvasContainer" class="canvasContainer">
                                    <canvas id="radarCanvas" class="chartCanvas" data-popup-open="popup-2"></canvas>
                                </div>
                           
                            </div>
                        </div>
                   
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger  ControlID="RateReasonRadarRefreshButton"/>
                </Triggers>
            </asp:UpdatePanel>
                 </article>
            <article class="boxFrame" id="inArea">
                <div class="boxBody" id="bubbleArea">
                    <div class="boxHeader">
                        <div class="helpControl" data-popup-open="popup-1"><span>?</span></div>
                    </div>
                    <div id="bubbleHolder">
                        <div id="bubbleLegend" class="chartLegend">Reports in Area</div>
                    	<canvas id="bubbleCanvas"></canvas>
                    </div>
                </div>
            </article>
            <article class="boxFrame" id="goalDoughnut">
                <div class="boxBody" id="ResolveGoals">
                    <div class="boxHeader">
                        <div class="helpControl" data-popup-open="popup-1"><span>?</span></div>
                    </div>
                    <div id="doughnutHolder">
                        <div id="doughnutLegend" class="chartLegend">
                        <p>Resolved Goal: <br/>this month: <span id="monthGoalVal"><asp:Label ID="monthPercentageLabel" runat="server" Text=""></asp:Label></span><br/>this year: <span id="yearGoalVal"><asp:Label ID="yearPercentageLabel" runat="server" Text=""></asp:Label></span></p>
                        </div>
                        <canvas id="d1" data-popup-open="popup-2"></canvas>
                        <canvas id="d2" data-popup-open="popup-2"></canvas>
                    </div>
                </div>
            </article>
        </section>

    </div>
    <script src="../Scripts/basicBeta.js"></script>
</asp:Content>

