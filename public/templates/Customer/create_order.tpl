{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    {include file="Customer/sidemenue.tpl"}
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="mainWrap navslide">
            <div class="ui equal width center aligned padded grid stackable">
                <!--Site Content-->
                <div class="ui width padded grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <table class="ui table stackable selectable dataTable celled">
                                            <thead>
                                                <tr>
                                                    <th>{L_room_size}</th>
                                                    <th>{L_available}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            {for room_available in rooms_available}
                                                <tr>
                                                    <td>{$room_available.size}</td>
                                                    <td>{$room_available.max}</td>
                                                </tr>
                                            {endfor}
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    <div class="ui segment no-padding-bottom">
                                        <form class="ui form" action="{$base}customer/order/new" method="post">
                                            <h1 class="ui header center aligned"></h1>
                                            {for room_type in room_types}
                                            <div class="field">
                                                <label>{$room_type.size} m²</label>
                                                <input name="{$room_type.size}" value="0" max="{$room_type.max}" min="0" type="number">
                                            </div>
                                            {endfor}
                                            <input type="hidden" name="ident" value="createorder">
                                            <button type="submit" class="ui button blue">{L_order}</button>
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