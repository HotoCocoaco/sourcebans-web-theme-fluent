{if NOT $permission_listmods}
    <section class="error padding">
        <i class="fas fa-exclamation-circle"></i>
        <div class="error_title">哎呀，出现了个问题 (╯°□°)╯︵ ┻━┻</div>

        <div class="error_content">
            拒绝访问！
        </div>

        <div class="error_code">
            错误代码: <span class="text:bold">403 Forbidden</span>
        </div>
    </section>
{else}
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-gamepad"></i> 服务器 Mods ({$mod_count})</h2>
    </div>

    <div class="padding">
        <div class="table table_box">
            <table>
                <thead>
                    <tr>
                        <th>Mod icon</th>
                        <th class="text:left">Name</th>
                        <th class="text:left">Mod Folder</th>
                        <th>
                            <span title="SteamID Universe (X of STEAM_X:Y:Z)">SU</span>
                        </th>
                        {if $permission_editmods || $permission_deletemods}
                            <th>操作</th>
                        {/if}
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$mod_list item="mod" name="gaben"}
                        <tr id="mid_{$mod.mid}">
                            <td class="text:center">
                                <img src="images/games/{$mod.icon}" alt="{$mod.mid}" />
                            </td>
                            <td>
                                {$mod.name|smarty_htmlspecialchars}
                            </td>
                            <td>
                                {$mod.modfolder|smarty_htmlspecialchars}
                            </td>
                            <td class="text:center">
                                {$mod.steam_universe|smarty_htmlspecialchars}
                            </td>
                            {if $permission_editmods || $permission_deletemods}
                                <td class="flex flex:ai:center flex-jc:center">
                                    {if $permission_editmods}
                                        <a href="index.php?p=admin&c=mods&o=edit&id={$mod.mid}"
                                            class="button button-light margin-right:half">
                                            Edit
                                        </a>
                                    {/if}
                                    {if $permission_deletemods}
                                        <button onclick="RemoveMod('{$mod.name|escape:'quotes'|smarty_htmlspecialchars}', '{$mod.mid}');"
                                            class="button button-light">
                                            删除
                                        </button>
                                    {/if}
                                </td>
                            {/if}
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
{/if}