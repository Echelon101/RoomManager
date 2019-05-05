{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    {include file="Customer/sidemenue.tpl"}
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="mainWrap">
            <div class="ui equal width center aligned padded grid stackable">
                <!--Site Content-->
                <div class="ui width padded grid ">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        {for customer in customers}
                                        <div class="ui card">
                                            <div class="content">
                                                <div class="header">
                                                    {$customer.firstname} {$customer.lastname}
                                                </div>
                                                <div class="description">
                                                    {$customer.email}<br>
                                                    {$customer.street} {$customer.hsnr}<br>
                                                    {$customer.zip} {$customer.city}<br>
                                                    <br>
                                                    {$customer.iban}<br>
                                                    {$customer.bic}<br>
                                                    <br>
                                                    {$customer.company}<br>
                                                    {$customer.tel}
                                                </div>
                                            </div>
                                            <div class="extra content">
                                                <a class="ui teal right labeled icon button fluid" href="{$base}customer/profile/edit"><i class="edit icon"></i>{L_edit}</a>
                                            </div>
                                        </div>
                                        {endfor}
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