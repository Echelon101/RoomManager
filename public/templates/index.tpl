{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="mainWrap">
            <div class="ui menu stackable borderless">
                <div class="item">
                    <a href="{$base}" class="ui primary button"><i class="home icon"></i>{L_start}</a>
                </div>
                <div class="right menu">     
                    {if $login_status == 1 && $is_customer == 1}
                    <div class="item">
                        <a href="{$base}logout" class="ui button"><i class="sign out icon"></i>{L_logout}</a>
                    </div>
                    <div class="item">
                        <a href="{$base}customer" class="ui button "><i class="id card icon"></i>{L_dashboard}</a>
                    </div>
                    {endif}
                    {if $login_status == 1 && $is_customer == 0 && $is_admin == 0 && $is_accountant == 0}
                    <div class="item">
                        <a href="{$base}logout" class="ui button"><i class="sign out icon"></i>{L_logout}</a>
                    </div>
                    <div class="item">
                        <a href="{$base}employee" class="ui button "><i class="id card icon"></i>{L_dashboard}</a>
                    </div>
                    {endif}
                    {if $login_status == 1 && $is_admin == 1}
                    <div class="item">
                        <a href="{$base}logout" class="ui button"><i class="sign out icon"></i>{L_logout}</a>
                    </div>
                    <div class="item">
                        <a href="{$base}admin" class="ui button "><i class="id card icon"></i>{L_dashboard}</a>
                    </div>
                    {endif}
                    {if $login_status == 1 && $is_accountant == 1}
                    <div class="item">
                        <a href="{$base}logout" class="ui button"><i class="sign out icon"></i>{L_logout}</a>
                    </div>
                    <div class="item">
                        <a href="{$base}download" class="ui button "><i class="id card icon"></i>{L_download_area}</a>
                    </div>
                    {endif}
                    {if $login_status == 0}
                    <div class="item">
                        <a href="{$base}login" class="ui button"><i class="sign in icon"></i>{L_sign_in}</a>
                    </div>
                    {endif}
                </div>
            </div>
            <div class="ui equal width center aligned padded grid stackable">
                <!--Site Content-->
                <div class="ui width padded grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        {L_welcome}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <div class="ui three column stackable grid">
                                            <div class="column">
                                                <div class="ui fluid card">
                                                    <div class="image">
                                                        <img src="{$base}/img/small.jpg">
                                                    </div>
                                                    <div class="content">
                                                        <div class="header">5 m²</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="column">
                                                <div class="ui fluid card">
                                                    <div class="image">
                                                        <img src="{$base}/img/middle.jpg">
                                                    </div>
                                                    <div class="content">
                                                        <div class="header">10 m²</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="column">
                                                <div class="ui fluid card">
                                                    <div class="image">
                                                        <img src="{$base}/img/big.jpg">
                                                    </div>
                                                    <div class="content">
                                                        <div class="header">50 m²</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Site Content-->
            </div>
        </div>
        <!--maincontent-->
    </div>
</div>
{include file="footerLegal.tpl"}
{include file="footer.tpl"}