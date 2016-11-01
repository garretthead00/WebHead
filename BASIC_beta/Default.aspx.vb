Imports System.Web.Script.Serialization
Imports System.Web.Script.Services
Imports System.Web.Services


Partial Class BASIC_beta_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            FillRateReasonByProductTypeControls()
            FillCurrentVsMaxRatesControls()
        End If

    End Sub

    Private Sub FillCurrentVsMaxRatesControls()
        Dim times = New List(Of String)()
        times.Add("5:00 AM")
        times.Add("11:00 AM")
        times.Add("5:00 PM")
        times.Add("11:00 PM")
        CurrentVsMaxRatesTimeDDL.DataSource = times
        CurrentVsMaxRatesTimeDDL.DataBind()

    End Sub
    Private Sub FillRateReasonByProductTypeControls()
        Using ent As New WebHeadEntities()
            ' handle the product type drop list
            Dim types = (From t In ent.ProductTypes Select t.ProductTypeName).ToList()
            RateReasonProductTypeDDL.DataSource = types
            RateReasonProductTypeDDL.DataBind()
        End Using
    End Sub

    ' This function returns the most recentRate Reason data from the Holding_RateReasonData table ordered by Dryer
    <System.Web.Services.WebMethod()>
    Public Shared Function GetMostRecentRateReasoningHoldingData() As String
        Using ent As New WebHeadEntities()
            'Dim data = ent.Holding_RateReasonData.SqlQuery("SELECT TOP 5 * FROM  Holding_RateReasonData WHERE CoordinatorId IS NOT NULL ORDER BY LogDateTime DESC, Dryer ASC)").ToListAsync()

            Dim data = (From recs In ent.Holding_RateReasonData Where recs.CoordinatorId IsNot Nothing
                        Order By recs.LogDateTime Descending, recs.Dryer Ascending
                        Select New With {recs.LogDateTime, recs.Dryer, recs.ReactorLine, recs.ProductType, recs.CoordinatorId, recs.HoursRunning, recs.FinishedRate, recs.MaxRate, recs.PercentMaxRate, recs.Reason, recs.SubReason, recs.SubReason2}).Take(5).Distinct().ToList()


            Dim dataSerializer = New JavaScriptSerializer()
            Dim dataJSON = dataSerializer.Serialize(Data)
            Return dataJSON
        End Using
    End Function

    <System.Web.Services.WebMethod()>
    Public Shared Function GetResolvedNearMissDataByCategory() As String
        Using ent As New WebHeadEntities()
            Dim yearsResolved = (From thisYearsResolvedReports In ent.NearMissReports
                        Where thisYearsResolvedReports.NearMissReportsResolved.DateResolved.Year() = Now.Year()
                        Select thisYearsResolvedReports).ToList()
            Dim resolvedByCategory = (From byCat In yearsResolved
                                      Group byCat By Key = byCat.Category.CategoryName Into Group
                                      Select New With {.catNamesList = Key, .catCountList = Group.Count()}).ToList()

            Dim dataSerializer = New JavaScriptSerializer()
            Dim dataJSON = dataSerializer.Serialize(resolvedByCategory)
            Return dataJSON
        End Using
    End Function

    <System.Web.Services.WebMethod>
    Public Shared Function GetResolvedNearMissDataByArea() As String
        Using ent As New WebHeadEntities()
            Dim yearsResolved = (From thisYearsResolvedReports In ent.NearMissReports
                                 Where thisYearsResolvedReports.NearMissReportsResolved.DateResolved.Year() = Now.Year()
                                 Select thisYearsResolvedReports).ToList()

            Dim resolvedByArea = (From byArea In yearsResolved
                                  Group byArea By Key = byArea.Area.AreaName Into Group
                                  Select New With {.areaNamesList = Key, .areaCountList = Group.Count()}).ToList()

            Dim dataSerializer = New JavaScriptSerializer()
            Dim dataJSON = dataSerializer.Serialize(resolvedByArea)
            Return dataJSON
        End Using
    End Function

    <System.Web.Services.WebMethod>
    Public Shared Function GetCurrentYearResolvedNearMissReports() As String
        Using ent As New WebHeadEntities()
            Dim yearsResolved = (From thisYearsResolvedReports In ent.NearMissReports
                     Where thisYearsResolvedReports.NearMissReportsResolved.DateResolved.Year() = Now.Year()
                     Select thisYearsResolvedReports).ToList()

            Dim currentData = (From recs In yearsResolved
                     Join goal In ent.NearMissGoals On goal.Year Equals recs.NearMissReportsResolved.DateResolved.Year()
                     Let yrGoal As Double = goal.Goal
                     Let yrCount As Double = yearsResolved.Count()
                     Let moCount As Double = Aggregate mRecs In yearsResolved
                     Where mRecs.NearMissReportsResolved.DateResolved.Month() = Now.Month() Into Count()
                     Let moGoal As Double = Math.Ceiling(yrGoal / 12)
                     Select New With {yrCount, yrGoal, moCount, moGoal}).FirstOrDefault()
            Dim dataSerializer = New JavaScriptSerializer()
            Dim dataJSON = dataSerializer.Serialize(currentData)
            Return dataJSON
        End Using
    End Function

    <System.Web.Services.WebMethod>
    Public Shared Function GetRateReasonsForYearByProductType(fromDate As String, toDate As String, type As String) As String

        Dim fromD As Date = Convert.ToDateTime(fromDate)
        Dim toD As Date = Convert.ToDateTime(toDate)

        Using ent As New WebHeadEntities()
            Dim rrData = (From r In ent.Staging_RateReason_Entries Where (r.LogDate.Value >= fromD And r.LogDate.Value <= toD) And r.ProductType = type And Not String.IsNullOrEmpty(r.Reason)
                        Group By x = New With {Key .dryer = r.Dryer, Key .reason = r.Reason} Into g = Group
                        Order By x.dryer Ascending, x.reason Ascending
                        Select New With {
                            .dryer = x.dryer,
                            .reason = x.reason,
                            .reasonCount = g.Count()}).ToList()

            Dim dataSerializer = New JavaScriptSerializer()
            Dim dataJSON = dataSerializer.Serialize(rrData)
            Return dataJSON
        End Using
    End Function
End Class
