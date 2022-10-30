using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class multiviewpractice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            multiview1.ActiveViewIndex = 0;
        }
    }
    protected void next(object sender, EventArgs e)
    {
        int counter = multiview1.ActiveViewIndex;
        multiview1.ActiveViewIndex = counter+1;
    }
    protected void previous(object sender, EventArgs e)
    {
        int counter = multiview1.ActiveViewIndex;
        multiview1.ActiveViewIndex = counter - 1;
    }
}