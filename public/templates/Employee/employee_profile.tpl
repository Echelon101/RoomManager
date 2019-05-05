{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    {include file="Employee/sidemenue.tpl"}
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="mainWrap navslide">
            <div class="ui equal width center aligned padded grid stackable">
                <!--Site Content-->
                <div class="ui width padded stackable grid">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui no-padding-bottom">
                                    <div class="content">
                                        {for employee in employees}
                                        <div class="ui card">
                                            <div class="content">
                                                <div class="header">
                                                    {$employee.firstname} {$employee.lastname}<br>
                                                    -{$employee.priv_name}-
                                                </div>
                                                <div class="description">
                                                    {$employee.email}<br>
                                                    {$employee.street} {$employee.hsnr}<br>
                                                    {$employee.zip} {$employee.city}<br>
                                                    {$employee.tel}
                                                    <br>
                                                </div>
                                            </div>
                                            <div class="extra content">
                                                <a class="ui teal right labeled icon button fluid" href="{$base}employee/profile/edit"><i class="edit icon"></i>{L_edit}</a>
                                            </div>
                                        </div>
                                        {endfor}
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