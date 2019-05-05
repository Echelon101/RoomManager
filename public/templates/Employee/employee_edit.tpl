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
                <div class="ui width padded grid " style="width: 23%">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content center aligned">
                                        <form class="ui form" action="{$base}employee/profile/edit" method="post">
                                            <h1 class="ui header center aligned"></h1>
                                            {for employee in employees}
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_firstname}</label>
                                                    <input type="text" name="firstname" value="{$employee.firstname}">
                                                </div>
                                                <div class="field">
                                                    <label>{L_lastname}</label>
                                                    <input type="text" name="lastname" value="{$employee.lastname}">
                                                </div>
                                            </div>
                                            {endfor}
                                            <br>
                                            <input type="hidden" name="ident" value="employee_edit">
                                            <button class="ui teal right labeled icon button fluid" type="submit">{L_save}</button>
                                        </form>
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