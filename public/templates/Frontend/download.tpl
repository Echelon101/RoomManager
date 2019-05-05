{include file="header.tpl"}
<div id="contextWrap">
    <!--sidebar-->
    <!--sidebar-->
    <div class="pusher">
        <!--maincontent-->
        <div class="mainWrap">
            <div class="ui menu stackable borderless">
                <div class="item">
                    <a href="{$base}" class="ui primary button"><i class="home icon"></i>{L_start}</a>
                </div>
            </div>
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