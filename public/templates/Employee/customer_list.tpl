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
                            <div class="sixteen wide tablet sixteen wide computer column">
                                <div class="ui left aligned segment">
                                    <div class="content">
                                        <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                            <thead>
                                            <tr>
                                                <th>{L_name}</th>
                                                <th>{L_company}</th>
                                                <th>{L_email}</th>
                                                <th>{L_address}</th>
                                                <th>{L_action}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {for customer in customers}
                                            <tr>
                                                <td>{$customer.firstname} {$customer.lastname}</td>
                                                <td>{$customer.company}</td>
                                                <td>{$customer.email}</td>
                                                <td>{$customer.street} {$customer.hsnr}<br>{$customer.zip} {$customer.city}<br>{$customer.country}</td>
                                                <td>{$customer.actions}</td>
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