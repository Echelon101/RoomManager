<div class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  black" style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;" data-color="white">
    <div class="ui accordion inverted">
        <a href="{$base}admin" class="ui item primary"><i class="home icon"></i>{L_dashboard}</a>
        <a href="{$base}admin/routes" class="ui item"><i class="fork icon"></i>{L_routes}</a>
        <a href="{$base}admin/user/new" class="ui item"><i class="add user icon"></i>{L_new_admin}</a>
    <div class="title item">
        <i class="dropdown icon"></i> <span>Debug</span>
    </div>
    <div class="content">
        <a href="{$base}debug/arrays" class="ui item" style="margin-left:0px;"><i class="fire icon"></i>Arrays</a>
        <a href="{$base}debug/dump" class="ui item" style="margin-left:0px;"><i class="fire icon"></i>Dump</a>
        <a href="{$base}debug/if" class="ui item" style="margin-left:0px;"><i class="fire icon"></i>If</a>
    </div>
    <a href="{$base}logout" class="ui item" style="position: fixed; bottom: 0px; width: 100%"><i class="sign out icon"></i>{L_logout}</a>
    </div>
</div>