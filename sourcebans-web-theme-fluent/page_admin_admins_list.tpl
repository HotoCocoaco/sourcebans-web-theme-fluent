<div class="layout_box flex:11 admin_tab_content tabcontent" id="List admins" style="display: block;">
    {if not $permission_listadmin}
        拒绝访问
    {else}
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-user-shield"></i> Admins - {$admin_count}</h2>
        </div>

        <div class="padding">
            <span>单击管理员以查看更多详细信息和要对其执行的操作。</span>

            {load_template file="admin.admins.search"}

            <div class="flex flex-jc:end flex-ai:center margin-bottom:half">
                {$admin_nav}
            </div>

            <div class="table">
                <div class="table_box">
                    <table class="table_box">
                        <thead>
                            <tr>
                                <th class="text:left">名字</th>
                                <th class="text:left">服务器管理员组</th>
                                <th class="text:left">网页管理员组</th>
                                <th class="text:left">免疫等级</th>
                                <th class="text:left">最后访问时间</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$admins item="admin"}
                                <tr class="collapse">
                                    <td>{$admin.user} (<a href="./index.php?p=banlist&advSearch={$admin.aid}&advType=admin"
                                            title="Show bans">{$admin.bancount} bans</a> | <a
                                            href="./index.php?p=banlist&advSearch={$admin.aid}&advType=nodemo"
                                            title="Show bans without demo">{$admin.nodemocount} w.d.</a>)</td>
                                    <td>{$admin.server_group}</td>
                                    <td>{$admin.web_group}</td>
                                    <td>{$admin.immunity}</td>
                                    <td>{$admin.lastvisit}</td>
                                </tr>
                                <tr class="table_hide">
                                    <td colspan="8">
                                        <div class="collapse_content">
                                            <div class="padding:half flex">
                                                <ul class="ban_action">
                                                    {if $permission_editadmin}
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editdetails&id={$admin.aid}">
                                                                <i class="fas fa-clipboard-list"></i> 编辑详情
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editpermissions&id={$admin.aid}">
                                                                <i class="fas fa-edit fa-lg"></i> 修改权限
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editservers&id={$admin.aid}">
                                                                <i class="fas fa-server"></i> 修改服务器权限
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editgroup&id={$admin.aid}">
                                                                <i class="fas fa-users"></i> 编辑组
                                                            </a>
                                                        </li>
                                                    {/if}
                                                    {if $permission_deleteadmin}
                                                        <li class="button button-important">
                                                            <a href="#" onclick="RemoveAdmin({$admin.aid}, '{$admin.user}');">
                                                                <i class="fas fa-trash"></i> 删除管理员
                                                            </a>
                                                        </li>
                                                    {/if}
                                                </ul>

                                                <div class="flex:11 margin-right">
                                                    <h3>服务器管理员权限</h3>
                                                    <ul>
                                                        {if $admin.server_flag_string}
                                                            {foreach from=$admin.server_flag_string item="permission"}
                                                                <li>{$permission}</li>
                                                            {/foreach}
                                                        {else}
                                                            <li>无</li>
                                                        {/if}
                                                    </ul>
                                                </div>

                                                <div class="flex:11">
                                                    <h3>网页管理员权限</h3>
                                                    <ul>
                                                        {if $admin.web_flag_string}
                                                            {foreach from=$admin.web_flag_string item="permission"}
                                                                <li>{$permission}</li>
                                                            {/foreach}
                                                        {else}
                                                            <li>无</li>
                                                        {/if}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>
    {/if}
</div>