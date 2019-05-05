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
                <div class="ui width padded grid " style="width: 23%">
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content center aligned">
                                        <form class="ui form" action="{$base}customer/profile/edit" method="post">
                                            <h1 class="ui header center aligned"></h1>
                                            {for customer in customers}
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_firstname}</label>
                                                    <input type="text" name="firstname" value="{$customer.firstname}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_lastname}</label>
                                                    <input type="text" name="lastname" value="{$customer.lastname}" required>
                                                </div>
                                            </div>
                                            <div class="field disabled">
                                                <label>{L_email}</label>
                                                <input type="email" name="email" value="{$customer.email}" required>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_street}</label>
                                                    <input type="text" name="street" value="{$customer.street}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_number}</label>
                                                    <input type="text" name="hsnr" value="{$customer.hsnr}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_city}</label>
                                                    <input type="text" name="city" value="{$customer.city}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_zip}</label>
                                                    <input type="text" name="zip" value="{$customer.zip}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_iban}</label>
                                                    <input type="text" name="iban" value="{$customer.iban}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_bic}</label>
                                                    <input type="text" name="bic" value="{$customer.bic}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_company}</label>
                                                    <input type="text" name="company" value="{$customer.company}">
                                                </div>
                                                <div class="field">
                                                    <label>{L_tel}</label>
                                                    <input type="text" name="tel" value="{$customer.tel}" required>
                                                </div>
                                            </div>
                                            {endfor}
                                            <br>
                                            <input type="hidden" name="ident" value="customer_edit">
                                            <button class="ui teal right labeled icon button fluid" type="submit">{L_save}</button>
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