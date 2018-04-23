Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxTabControl
Imports DevExpress.Xpo
Imports System.Drawing
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors
Imports System.Collections.Generic
Imports DevExpress.Data
Imports DevExpress.Web.ASPxDataView
Imports System.Collections

Partial Public Class How_To_Change_EditForm_Editor_Value
	Inherits System.Web.UI.Page
	 Protected Sub ASPxGridView1_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
		If e.Column.FieldName = "min_lvl" Then
			Dim editor As ASPxComboBox = TryCast(e.Editor, ASPxComboBox)
			editor.ClientSideEvents.SelectedIndexChanged = "function(s, e) {ChangeMaxLvlValue(s);}"
		End If
	 End Sub
End Class


