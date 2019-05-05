{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="ui equal width center aligned padded grid stackable">
            <!--Site Content-->
            <div class="ui width padded grid ">
                <div class="stretched row">
                    <div class="sixteen wide tablet sixteen wide computer column">
                        <div class="ui segments">
                            <div class="ui segment no-padding-bottom">
                                <div class="content">
                                    <div class="ui cards">
                                        <div class="card">
                                            <div class="content">
                                                <div class="header">
                                                    Error 404 by opening {$request_path}
                                                </div>
                                                <div class="description">
                                                    Da war wohl etwas schief!<br>
                                                    Hier kommen Sie zur Startseite:
                                                </div>
                                            </div>
                                            <div class="extra content">
                                                <div class="ui buttons">
                                                    <a href="{$base}" class="ui basic green button">{L_start}</a>
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
{include file="footer.tpl"}