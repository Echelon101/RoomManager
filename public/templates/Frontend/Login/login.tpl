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
            </div>
            <div class="ui equal width center aligned padded centered grid stackable">
                <!--Site Content-->
                <div class="ui container" style="padding-top:5%">
                    <div class="ui grid center aligned">
                        <div class="row">
                            <div class="sixteen wide tablet six wide computer column">
                                <div class="ui left aligned segment">
                                    <form method="post" action="{$base}login" class="ui form">
                                        <h1 class="ui header center aligned"></h1>
                                        <div class="field">
                                            <label>
                                                {L_email}:
                                            </label>
                                            <div class="ui fluid icon input">
                                                <input name="email" id="u_name" type="email" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;" placeholder="example@example.org" required>
                                                <i class="icon mail outline"></i>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <label>
                                                {L_password}:
                                            </label>
                                            <div class="ui fluid icon input">
                                                <input name="password" id="u_pass" type="password" autocomplete="off" style="width:100%!important;min-width:100%;width:100%;" required placeholder="{L_password}">
                                                <i class="icon key"></i>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <button class="ui teal right labeled icon button fluid" type="submit">{L_sign_in}<i class="icon sign in"></i></button>
                                            <a class="ui blue right labeled icon button fluid" href="register">{L_sign_up}<i class="icon signup"></i></a>
                                        </div>
                                    </form>
                                    {$error}
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