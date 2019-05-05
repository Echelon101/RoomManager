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
                                        <h1>CSV Create</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="stretched row">
                        <div class="sixteen wide tablet sixteen wide computer column">
                            <div class="ui segments">
                                <div class="ui segment no-padding-bottom">
                                    <div class="content">
                                        <form class="ui form" method="post" action="{$base}employee/csv/new">
                                            <div>{L_choose_time}</div>
                                            <div class="three fields">
                                                <div class="ui input field">
                                                    <input type="date" class="datedrop" placeholder="startDate" data-large-mode="true" data-large-default="true" data-modal="true" data-translate-mode="true" data-id="datedropper-1" data-format="d.m.Y" data-default-date="{$begin}" name="begin">
                                                </div>
                                                <div class="ui input field">
                                                    <input type="date" class="datedrop" placeholder="endDate" data-large-mode="true" data-large-default="true" data-modal="true" data-translate-mode="true" data-id="datedropper-2" data-format="d.m.Y" data-default-date="{$end}" name="end">
                                                </div>
                                                <div class="field">
                                                    <button class="ui button blue" style="margin-bottom: 0">{L_export}</button>
                                                </div>
                                            </div>
                                            <input type="hidden" name="ident" value="generate">
                                        </form>

                                        <div class="ui divider"></div>
                                        <table class="ui compact selectable striped celled table tablet stackable dataTable no-footer">
                                            <thead>
                                            <tr>
                                                <th>{L_id}</th>
                                                <th>{L_true_filename}</th>
                                                <th>{L_evaluation_period}</th>
                                                <th>{L_filename}</th>
                                                <th>{L_export_date}</th>
                                                <th>{L_action}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {for export in exports}
                                            <tr>
                                                <td>{$export.id}</td>
                                                <td>{$export.sha}.csv</td>
                                                <td>{$export.begin_export} - {$export.end_export}</td>
                                                <td>{$export.filename}</td>
                                                <td>{$export.create_date}</td>
                                                <td>{$export.actions}</td>
                                            </tr>
                                            {endfor}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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

{include file="footer.tpl"}