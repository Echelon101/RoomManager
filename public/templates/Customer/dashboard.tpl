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
                <div class="ui width padded stackable grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        {for customer in customers}
                                        <h1>{L_hello} {$customer.firstname} {$customer.lastname}!</h1>
                                        {endfor}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tablet only computer only two column row">
                        <div class="column">
                            <div class="ui segment">
                                <h2 class="ui header">{L_orders}<br><small>{L_orders_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                    <thead>
                                    <tr>
                                        <th>{L_id}</th>
                                        <th>{L_status}</th>
                                        <th>{L_total_rooms}</th>
                                        <th>{L_action}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for order in orders}
                                    <tr>
                                        <td>{$order.id}</td>
                                        <td>{$order.status}</td>
                                        <td>{$order.total_rooms}</td>
                                        <td>{$order.actions}</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="column">
                            <div class="ui segment">
                                <h2 class="ui header">{L_key}<br><small>{L_room_keys_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                    <thead>
                                    <tr>
                                        <th>{L_name}</th>
                                        <th>{L_key}</th>
                                        <th>{L_address}</th>
                                        <th>{L_order_id}</th>
                                        <th>{L_action}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for room in rooms}
                                    <tr>
                                        <td>{$room.name}</td>
                                        <td>{$room.room_key}</td>
                                        <td>{$room.street} {$room.hsnr}<br>{$room.zip} {$room.city}<br>{$room.country}</td>
                                        <td>{$room.order_id}</td>
                                        <td>{$room.actions}</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tablet only computer only two column row">
                        <div class="column">
                            <div class="ui segment">
                                <h2 class="ui header">{L_costs}<br><small>{L_costs_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable">
                                    <thead>
                                    <tr>
                                        <th>{L_room_size}</th>
                                        <th>{L_total_rooms}</th>
                                        <th>{L_price_per_room}</th>
                                        <th>{L_total_costs}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for cost in costs}
                                    <tr>
                                        <td>{$cost.size}</td>
                                        <td>{$cost.rooms}</td>
                                        <td>{$cost.price} €</td>
                                        <td>{$cost.total} €</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                                {L_total_booked} {$total_booked}
                                {L_monthly_costs} {$total_cost}
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