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
                                        <table class="ui striped table">
                                            <thead>
                                            <tr>
                                                <th>{L_name}</th>
                                                <th>{L_priv}</th>
                                                <th>{L_email}</th>
                                                <th>{L_address}</th>
                                                <th>{L_tel}</th>
                                                <th>{L_action}</th>
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
                                                <td>{$employee.actions}</td>
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
                    <div class="centered row">
                        <div class="sixteen wide tablet six wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <form class="ui form" action="{$base}employee/employees/edit" method="get">
                                            <h1 class="ui header center aligned"></h1>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_firstname}</label>
                                                    <input type="text" name="firstname" placeholder="{L_firstname}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_lastname}</label>
                                                    <input type="text" name="lastname" placeholder="{L_lastname}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_email}</label>
                                                    <input type="email" name="email" placeholder="{L_email}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_password}</label>
                                                    <input type="password" name="passwd" placeholder="{L_password}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_repeat_password}</label>
                                                    <input type="password" name="passwd1" placeholder="{L_repeat_password}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_street}</label>
                                                    <input type="text" name="street" placeholder="{L_street}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_number}</label>
                                                    <input type="text" name="hsnr" placeholder="{L_number}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_city}</label>
                                                    <input type="text" name="city" placeholder="{L_city}" required>
                                                </div>
                                                <div class="field">
                                                    <label>{L_zip}</label>
                                                    <input type="text" name="zip" placeholder="{L_zip}" required>
                                                </div>
                                            </div>
                                            <div class="two fields">
                                                <div class="field">
                                                    <label>{L_tel}</label>
                                                    <input type="text" name="tel" placeholder="{L_tel}" required>
                                                </div>
                                            </div>
                                            <br>
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