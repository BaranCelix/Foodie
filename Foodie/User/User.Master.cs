using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodie.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            
            }
            else
            {
                form1.Attributes.Remove("class");

                // Controlü ekleme
                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");

                    //Panele controlü ekleme
                    pnlSliderUC.Controls.Add(sliderUserControl);

            }

            if (Session["userId"] != null)
            {
                lblLoginOrLogout.Text = "Çıkış Yap";
                Utils utils = new Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"])).ToString();

            }
            else
            {
                lblLoginOrLogout.Text = "Giriş Yap";
                Session["cartCount"] = "0";
            }
        }

        protected void lblLoginOrLogout_Click(object sender, EventArgs e)
        {

            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                lbRegisterOrProfile.ToolTip = "Kullanıcı Profili";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                lbRegisterOrProfile.ToolTip = "Kayıt Ol";
                Response.Redirect("Registration.aspx");
            }
        }


    }
}