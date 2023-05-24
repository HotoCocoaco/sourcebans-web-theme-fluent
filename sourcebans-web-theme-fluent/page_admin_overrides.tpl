<div class="layout_box flex:11 admin_tab_content tabcontent" id="Overrides">
    {if NOT $permission_addadmin}
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
            <h2><i class="fas fa-cogs"></i> 覆盖</h2>
        </div>

        <div class="padding">
            {if $overrides_error != ""}
                <script type="text/javascript">
                    ShowBox("Error", "{$overrides_error}", "red");
                </script>
            {/if}
            {if $overrides_save_success}
                <script type="text/javascript">
                    ShowBox("覆盖已更新", "更改保存成功。", "green",
                        "index.php?p=admin&c=admins");
                </script>
            {/if}

            <div>
                使用覆盖，您可以全局地或针对特定的
                组，不编辑插件源代码。
            </div>
            <div>
                阅读: <a href="http://wiki.alliedmods.net/Overriding_Command_Access_%28SourceMod%29"
                    title="Overriding Command Access (SourceMod)" target="_blank" class="text:bold text:italic"
                    rel="noopener">overriding command
                    access</a> 在 AlliedModders Wiki!
            </div>
            <p class="text:italic">在覆盖的名称上留空将进行删除</p>

            <form action="" method="post">
                <div class="table table_box">
                    <table>
                        <thead>
                            <tr>
                                <th>类型</th>
                                <th>名字</th>
                                <th>标记</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$overrides_list item="override"}
                                <tr>
                                    <td>
                                        <select class="form-select form-full" name="override_type[]">
                                            <option{if $override.type == "command"} selected="selected" {/if} value="command">
                                                命令</option>
                                                <option{if $override.type == "group"} selected="selected" {/if} value="group">
                                                    组</option>
                                        </select>
                                        <input type="hidden" name="override_id[]" value="{$override.id}" />
                                    </td>
                                    <td>
                                        <input name="override_name[]" value="{$override.name|smarty_htmlspecialchars}"
                                            class="form-input form-full" />
                                    </td>
                                    <td>
                                        <input name="override_flags[]" value="{$override.flags|smarty_htmlspecialchars}"
                                            class="form-input form-full" />
                                    </td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td>
                                    <select class="form-select form-full" name="new_override_type">
                                        <option value="command">命令</option>
                                        <option value="group">组</option>
                                    </select>
                                </td>
                                <td>
                                    <input class="form-input form-full" name="new_override_name" />
                                </td>
                                <td>
                                    <input class="form-input form-full" name="new_override_flags" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="flex flex-ai:center flex-jc:space-between margin-top">
                    <button type="submit" name="oversave" class="button button-success"
                        onmouseover="ButtonOver(&quot;oversave&quot;)" onmouseout="ButtonOver(&quot;oversave&quot;)"
                        id="oversave">保存</button>
                    <button onclick="history.go(-1)" name="oback" class="button button-light"
                        onmouseover="ButtonOver(&quot;oback&quot;)" onmouseout="ButtonOver(&quot;oback&quot;)"
                        id="oback">返回</button>
                </div>
            </form>
        </div>
    {/if}
</div>
</div>