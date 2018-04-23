<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="How_To_Change_EditForm_Editor_Value" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>How to change an EditForm editor's value</title>
	<script language= "javascript">
		function ChangeMaxLvlValue(editor) {
			grid.GetEditor("max_lvl").SetValue(editor.GetValue());
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		&nbsp; &nbsp;&nbsp;

		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
			DataSourceID="AccessDataSource1" Width="729px" ClientInstanceName="grid" KeyFieldName="job_id" OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize">
			<Columns>
				<dxwgv:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True">
					</EditButton>
				</dxwgv:GridViewCommandColumn>
				<dxwgv:GridViewDataTextColumn Caption="job_id" FieldName="job_id" ReadOnly="True"
					VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataComboBoxColumn Caption="min_lvl" FieldName="min_lvl" VisibleIndex="2">
					<PropertiesComboBox>
						<Items>
							<dxe:ListEditItem Text="0" Value="0">
							</dxe:ListEditItem>
							<dxe:ListEditItem Text="1" Value="1">
							</dxe:ListEditItem>
							<dxe:ListEditItem Text="2" Value="2">
							</dxe:ListEditItem>
						</Items>
					</PropertiesComboBox>
				</dxwgv:GridViewDataComboBoxColumn>
				<dxwgv:GridViewDataTextColumn Caption="max_lvl" FieldName="max_lvl" VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="job_desc" Visible="False" VisibleIndex="4">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
			SelectCommand="SELECT * FROM [jobs]" DeleteCommand="DELETE FROM [jobs] WHERE [job_id] = ?" InsertCommand="INSERT INTO [jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [jobs] SET [job_desc] = ?, [min_lvl] = ?, [max_lvl] = ? WHERE [job_id] = ?">
			<DeleteParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
			</DeleteParameters>
			<UpdateParameters>
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
				<asp:Parameter Name="job_id" Type="Int16" />
			</UpdateParameters>
			<InsertParameters>
				<asp:Parameter Name="job_id" Type="Int16" />
				<asp:Parameter Name="job_desc" Type="String" />
				<asp:Parameter Name="min_lvl" Type="Byte" />
				<asp:Parameter Name="max_lvl" Type="Byte" />
			</InsertParameters>
		</asp:AccessDataSource>
	</form>
</body>
</html>