using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;
using DevExpress.Xpo;
using System.Drawing;
using System.Collections.Generic;
using DevExpress.Data;
using System.Collections;

public partial class How_To_Change_EditForm_Editor_Value : System.Web.UI.Page 
{
     protected void ASPxGridView1_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e) {
        if(e.Column.FieldName == "min_lvl") {
            ASPxComboBox editor = e.Editor as ASPxComboBox;
            editor.ClientSideEvents.SelectedIndexChanged = "function(s, e) {ChangeMaxLvlValue(s);}";
        }
    }
}


