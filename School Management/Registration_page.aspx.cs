using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void validate(object sender, ServerValidateEventArgs e)
    {
        if (e.Value.Length > 10 || e.Value.Length < 10)
        {
            e.IsValid = true;
        }
        else
        {
            e.IsValid = false;
        }
    }
}