{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    {include file="Admin/sidemenue.tpl"}
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
                                        <table class="ui striped table">
                                            <thead>
                                            <tr>
                                                <th>{L_name}</th>
                                                <th>{L_route}</th>
                                                <th>{L_function}</th>
                                                <th>{L_priv}</th>
                                                <th>{L_action}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {for route in routes}
                                            <tr>
                                                <td>{$route.name}</td>
                                                <td>{$route.route}</td>
                                                <td>{$route.function}</td>
                                                <td>{$route.priv_name}</td>
                                                <td><a class="ui small button blue" href="{$base}admin/route/edit?route={$route.name}"><i class="icon edit"></i>{L_edit}</a><a class="ui small button red" href="{$base}admin/route/delete?route={$route.name}"><i class="icon delete"></i>{L_delete}</a> </td>
                                            </tr>
                                            {endfor}
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    <div class="content">
                                        <form class="ui form" action="{$base}admin/route/create" method="post">
                                            <h1 class="ui header center aligned"></h1>
                                            <div class="field">
                                                <label>{L_name}</label>
                                                <input type="text" name="name" placeholder="{L_name}" required>
                                            </div>
                                            <div class="field">
                                                <label>{L_route}</label>
                                                <input type="text" name="route" placeholder="{L_route}" required>
                                            </div>
                                            <div class="field">
                                                <label>{L_function}</label>
                                                <input type="text" name="function" placeholder="{L_function}" required>
                                            </div>
                                            <div class="field">
                                                <label>{L_priv}</label>
                                                <div class="ui fluid search selection scrolling dropdown">
                                                    <input type="hidden" name="priv">
                                                    <i class="dropdown icon"></i>
                                                    <div class="default text">{L_choose_priv_lv}</div>
                                                    <div class="menu">
                                                        {for priv in privs}
                                                        <div class="item">{$priv.id} - {$priv.name}</div>
                                                        {endfor}
                                                    </div>

                                                </div>
                                            </div>
                                            <br>
                                            <button class="ui teal right labeled icon button fluid" type="submit">{L_create}<i class="icon"></i></button>
                                        </form>
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