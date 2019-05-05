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
                <div class="item">
                    <a href="{$base}login" class="ui button"><i class="sign in icon"></i>{L_sign_in}</a>
                </div>
            </div>
            <div class="ui equal width center aligned padded grid stackable">
                <!--Site Content-->
                <div class="ui width padded grid " style="width: 23%">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <form method="post" action="{$base}password/reset" class="ui form">
                                            <h1 class="ui header center aligned"></h1>
                                            <div class="field">
                                                <label>{L_email}</label>
                                                <div class="ui fluid icon input">
                                                    <input name="email" id="email" type="email" autocomplete="off" style="width:100%!important;min-width:100%;" placeholder="example@example.org" required><i class="icon mail outline"></i>
                                                </div>
                                            </div>
                                            <button class="ui blue right labeled icon button fluid" type="submit">{L_send_password_reset}</button>
                                        </form>
                                        {$error}
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
{include file="footer.tpl"}