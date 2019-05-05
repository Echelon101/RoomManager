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
                <div class="ui width padded grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                            <thead>
                                            <tr>
                                                <th>{L_id}</th>
                                                <th>{L_status}</th>
                                                <th>{L_total_rooms}</th>
                                                <th>{L_email}</th>
                                                <th>{L_action}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {for order in orders}
                                            <tr>
                                                <td>{$order.id}</td>
                                                <td>{$order.status}</td>
                                                <td>{$order.total_rooms}</td>
                                                <td>{$order.email}</td>
                                                <td>{$order.actions}</td>
                                            </tr>
                                            {endfor}
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    <div class="content">
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