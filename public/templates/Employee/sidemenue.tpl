<div class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  black" style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;" data-color="white">
    <div class="ui accordion inverted">
        <a href="{$base}employee" class="ui item primary"><i class="home icon"></i>{L_dashboard}</a>
        <a href="{$base}employee/profile" class="ui item"><i class="user icon"></i>{L_profile}</a>
        <a href="{$base}employee/customers" class="ui item"><i class="users icon"></i>{L_customers}</a>
        <a href="{$base}employee/keys" class="ui item"><i class="key icon"></i>{L_room_keys}</a>
        <a href="{$base}employee/orders" class="ui item"><i class="history icon"></i>{L_orders}</a>
        {if $is_employer == 1}
        <div class="ui divider"></div>
        <a href="{$base}employee/employees" class="ui item"><i class="list icon"></i>{L_employees}</a>
        <a href="{$base}employee/room/new" class="ui item"><i class="add circle icon"></i>{L_new_room}</a>
        <a href="{$base}employee/location/new" class="ui item"><i class="add circle icon"></i>{L_new_location}</a>
        <a href="{$base}employee/eval" class="ui item"><i class="pie chart icon"></i>{L_evaluation}</a>
        <a href="{$base}employee/csv/new" class="ui item"><i class="file text outline icon"></i>{L_new_csv_export}</a>
        {endif}
        <a href="{$base}logout" class="ui item" style="position: fixed; bottom: 0px; width: 100%"><i class="sign out icon"></i>{L_logout}</a>
    </div>
</div>