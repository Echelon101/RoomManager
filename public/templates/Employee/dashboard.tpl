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
                <div class="ui width padded stackable grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        {for logged_in in logged_in_employee}
                                        <h1>{L_hello} {$logged_in.firstname} {$logged_in.lastname}!</h1>
                                        -{$logged_in.priv_name}-
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
                                        <th>{L_email}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for order in orders}
                                    <tr>
                                        <td>{$order.id}</td>
                                        <td>{$order.status}</td>
                                        <td>{$order.total_rooms}</td>
                                        <td>{$order.email}</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="column">
                            <div class="ui segment">
                                <h2 class="ui header">{L_customers}<br><small>{L_customers_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer" style="width: 100%">
                                    <thead>
                                    <tr>
                                        <th>{L_name}</th>
                                        <th>{L_company}</th>
                                        <th>{L_email}</th>
                                        <th>{L_address}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for customer in customers}
                                    <tr>
                                        <td>{$customer.firstname} {$customer.lastname}</td>
                                        <td>{$customer.company}</td>
                                        <td>{$customer.email}</td>
                                        <td>{$customer.street} {$customer.hsnr}<br>{$customer.zip} {$customer.city}<br>{$customer.country}</td>
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
                                <h2 class="ui header">{L_room_keys}<br><small>{L_room_keys_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer" style="width: 100%">
                                    <thead>
                                    <tr>
                                        <th>{L_room}</th>
                                        <th>{L_email}</th>
                                        <th>{L_key}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for key in keys}
                                    <tr>
                                        <td>{$key.name}</td>
                                        <td>{$key.email}</td>
                                        <td>{$key.room_key}</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {if $is_employer == 1}
                        <div class="column">
                            <div class="ui segment">
                                <h2 class="ui header">{L_employees}<br><small>{L_employees_descr}</small></h2>
                                <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                    <thead>
                                    <tr>
                                        <th>{L_name}</th>
                                        <th>{L_priv}</th>
                                        <th>{L_email}</th>
                                        <th>{L_address}</th>
                                        <th>{L_tel}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {for employee in employees}
                                    <tr>
                                        <td>{$employee.firstname} {$employee.lastname}</td>
                                        <td>{$employee.priv}</td>
                                        <td>{$employee.email}</td>
                                        <td>{$employee.street} {$employee.hsnr}<br>{$employee.zip} {$employee.city}</td>
                                        <td>{$employee.tel}</td>
                                    </tr>
                                    {endfor}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {endif}
                    </div>
                </div>
                <!--Site Content-->
            </div>
        </div>
        <!--maincontent-->
    </div>
</div>
{include file="footer.tpl"}