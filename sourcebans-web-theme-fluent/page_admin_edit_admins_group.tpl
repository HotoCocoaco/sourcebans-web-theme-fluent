<div class="layout_box flex:11 admin_tab_content">
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-user-edit"></i> 管理员组</h2>
    </div>

    <div class="padding">
        <div>
            有关某个项目的更多信息或帮助，请将鼠标移到问号上。
        </div>
        <div class="margin-bottom:half">
            选择你想要的新组 <span class="text:bold">{$group_admin_name}</span> 来进行应用。
        </div>

        <form action="" method="post">
            <div class="margin-bottom:half">
                <label for="wg" class="form-label form-label:bottom">
                    网页管理员组
                </label>

                <select name="wg" id="wg" class="form-select form-full">
                    <option value="-1">没有组</option>
                    <optgroup label="组" style="font-weight:bold;">
                        {foreach from=$web_lst item="wg"}
                            <option value="{$wg.gid}" {if $wg.gid == $group_admin_id} selected="selected" {/if}>
                                {$wg.name}</option>
                        {/foreach}
                    </optgroup>
                </select>

                <div id="wgroup.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="margin-bottom:half">
                <label for="sg" class="form-label form-label:bottom">
                    服务器管理员组
                </label>

                <select name="sg" id="sg" class="form-select form-full">
                    <option value="-1">没有组</option>

                    <optgroup label="Groups" style="font-weight:bold;">
                        {foreach from=$group_lst item="sg"}
                            <option value="{$sg.id}" {if $sg.id == $server_admin_group_id} selected="selected" {/if}>
                                {$sg.name}</option>
                        {/foreach}
                    </optgroup>
                </select>

                <div id="sgroup.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="flex flex-ai:center flex-jc:space-between margin-top">
                {sb_button text="保存更改" class="button button-success" id="agroups" submit=true}
                {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="aback"}
            </div>
        </form>
    </div>
</div>
</div>