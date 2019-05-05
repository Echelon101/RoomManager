<html>
{include file="header.tpl"}
{if $loginstatus == 1}
    <a class="ui button primary">Login</a>
{else}
    <a class="ui button">Logout</a>
{endif}

{if $loginstatus == 0}
<a class="ui button primary">Login</a>
{else}
<a class="ui button">Logout</a>
{endif}
{include file="footer.tpl"}
</html>

