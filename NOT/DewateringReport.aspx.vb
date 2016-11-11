
Partial Class NOT_DewateringReport
    Inherits System.Web.UI.Page
    Protected Sub HomeLinkButton_Click(sender As Object, e As EventArgs) Handles HomeLinkButton.Click
        Response.Redirect("../NOT/Default.aspx")
    End Sub

    Protected Sub UnderReviewLinkButton_Click(sender As Object, e As EventArgs) Handles UnderReviewLinkButton.Click
        Response.Redirect("../NOT/UnderReview.aspx")
    End Sub

    Protected Sub DewateringReportLinkButton_Click(sender As Object, e As EventArgs) Handles DewateringReportLinkButton.Click
        Response.Redirect("../NOT/DewateringReport.aspx")
    End Sub

    Protected Sub FinalizingLinkButton_Click(sender As Object, e As EventArgs) Handles FinalizingLinkButton.Click
        Response.Redirect("../NOT/Finalizing.aspx")
    End Sub

End Class
