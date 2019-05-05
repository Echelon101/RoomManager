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
                <div class="ui container" style="padding-top:5%">
                    <div class="ui grid center aligned">
                        <div class="row">
                            <div class="sixteen wide tablet six wide computer column">
                                <div class="ui left aligned segment">
                                    <form class="ui form" action="{$base}employee/room/new" method="post">
                                        <div class="field">
                                            <label>{L_room_size}</label>
                                            <div class="ui fluid search selection scrolling dropdown">
                                                <input type="hidden" name="size">
                                                <i class="dropdown icon"></i>
                                                <div class="default text">{L_choose_size}</div>
                                                <div class="menu">
                                                    {for size in sizes}
                                                    <div class="item">{$size.size} m²</div>
                                                    {endfor}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <label>{L_location}</label>
                                            <div class="ui fluid search selection scrolling dropdown">
                                                <input type="hidden" name="location">
                                                <i class="dropdown icon"></i>
                                                <div class="default text">{L_choose_location}</div>
                                                <div class="menu">
                                                    {for location in locations}
                                                    <div class="item">{$location.street} {$location.hsnr} | {$location.zip} {$location.city} | ID:{$location.id}</div>
                                                    {endfor}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <label>{L_amount}</label>
                                            <input type="number" min="1" max="50" value="1" name="amount">
                                        </div>
                                        <button type="submit" class="ui button blue">{L_create_room}</button>
                                    </form>
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