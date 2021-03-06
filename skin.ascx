<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %> 
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1.0" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="css/normalize.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude2" runat="server" FilePath="css/foundation.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude3" runat="server" FilePath="css/orbitslider.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/vendor/modernizr.js" PathNameAlias="SkinPath"  />

<!-- Begin top functions bar -->


<!-- Begin header -->
<section class="header-holder">
    <!-- Begin Logo area -->
    <div class="row">
        <div class="medium-8 columns text-center large-text-left medium-text-left">
            <div class="logo-holder"><dnn:LOGO runat="server" id="dnnLOGO" /></div>
        </div>
    <div class="hide-for-small medium-4 columns medium-text-right">
        <div class="social-holder">
            <!--#include file = "includes/socialButtons.inc" -->
        </div>
        <div class="search-holder">
            <!-- Begin search -->
            <!--#include file = "includes/search.inc" -->
            <!-- End search -->
         </div>
     </div>            
    </div><!-- End Logo area -->

    <!-- Begin Mobile social buttons -->
    <div class="row">
        <div class="small-12 show-for-small-only text-center social-mobile-holder"></div>
    </div><!-- End Mobile social buttons -->
</section><!-- End header -->

<!-- nav bar same size as grid -->
<div class="contain-to-grid sticky"><!-- nav bar same size as grid -->
    <!-- Begin navigation -->    
    <nav class="top-bar" data-topbar data-options="is_hover: true; back_text: &lt;&lt;&nbsp;BACK">
        <ul class="title-area">
            <li class="name"></li>
            <li class="toggle-topbar menu-icon"><a href="#"><span>menu</span></a></li>
        </ul>

        <section class="top-bar-section"> 
            <dnn:MENU ID="foundationMenu" MenuStyle="foundation-menu" runat="server" /> 
        </section>
    </nav><!-- End navigation -->

</div><!-- nav bar same size as grid -->

   
<section class="content-holder">
 <div class="row"> 
   <div class="large-12 columns"> 
     <ul class="breadcrumbs"> 
       <li> 
 	    <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" LegacyMode="false" RootLevel="0" Separator="&lt;/li&gt;&lt;li&gt;"/> 
 	  </li> 
 	</ul> 
   </div> 
</div>     
   <div id="ContentPane" runat="server"></div>
    <!-- Begin big slider -->
    <div class="row">
        <div class="large-12 columns hide-for-small">

        </div>
    </div><!-- End big slider -->

    <!-- Begin mobile slider 
    <div class="row">
        <div class="large-12 columns show-for-small">
            <img src="http://placehold.it/1200x700&text=Mobile Header">
        </div>
    </div> End mobile slider -->
     
    <!-- Begin Content areas -->
    <!--#include file = "includes/contentAreas.inc" -->
    <!-- End Content areas -->
</section>    

<!-- Begin footer -->
<footer class="footer-holder">
    <!--#include file = "includes/footerContent.inc" -->
    <!--#include file = "includes/footerInfo.inc" -->
</footer><!-- End footer -->

<!--ForceProvider="DnnFormBottomProvider"-->
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="js/foundation.min.js" PathNameAlias="SkinPath"   />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="js/vendor/fastclick.js" PathNameAlias="SkinPath"  />

<script>
    $(document).foundation();
</script>
<!-- END FOUNDATION temaplate -->

