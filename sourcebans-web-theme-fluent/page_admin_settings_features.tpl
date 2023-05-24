<div class="admin_tab_content_title">
    <h2><i class="fas fa-cogs"></i> Sourcebans++ Features</h2>
</div>

<div class="padding">
    <div class="margin-bottom">
        有关某个项目的更多信息或帮助，请将鼠标移到问号上。
    </div>

    <form action="" method="post">
        <input type="hidden" name="settingsGroup" value="features" />

        <div class="margin-bottom:half">
            <input type="checkbox" name="export_public" class="form-check" id="export_public" />

            <label for="export_public" class="form-label form-label:left">
                启用公共封禁
            </label>

            <div class="form-desc">
                选中此框可公开下载和共享整个封禁列表。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_kickit" class="form-check" id="enable_kickit" />

            <label for="export_public" class="form-label form-label:left">
                开启KickIt
            </label>

            <div class="form-desc">
                选中此框可在发布封禁时踢出玩家。
            </div>
        </div>

        <div class="margin-bottom:half">
            {if $steamapi}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" />
            {else}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" disabled />
            {/if}

            <label for="enable_groupbanning" class="form-label form-label:left">
                开启组封禁
            </label>

            {if !$steamapi}
                <div class="message message:error margin-top:half">
                    您尚未在配置中设置有效的steamapi密钥。
                </div>
            {/if}

            <div class="form-desc">
                如果要启用禁止整个steam社区组，请选中此框。
            </div>

            <div id="enable_groupbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_friendsbanning" class="form-check" id="enable_friendsbanning" />

            <label for="enable_friendsbanning" class="form-label form-label:left">
                开启好友封禁
            </label>

            <div class="form-desc">
                选中此框，如果您想启用禁止一个玩家的所有steam社区好友。
            </div>

            <div id="enable_friendsbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_adminrehashing" class="form-check" id="enable_adminrehashing" />

            <label for="enable_adminrehashing" class="form-label form-label:left">
                启用管理员刷新
            </label>

            <div class="form-desc">
                如果要在每次更改管理员/组时启用管理员重新设置，请选中此框。
            </div>

            <div id="enable_adminrehashing.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_steamlogin" class="form-check" id="enable_steamlogin" />

            <label for="enable_steamlogin" class="form-label form-label:left">
                开启普通登录
            </label>

            <div class="form-desc">
                如果要在登录窗口上启用正常登录选项，请选中此框。
            </div>

            <div id="enable_steamlogin.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_publiccomments" class="form-check" id="enable_publiccomments" />

            <label for="enable_publiccomments" class="form-label form-label:left">
                开启公开评论
            </label>

            <div class="form-desc">
                如果您想使所有人都可以查看有关封禁的管理注释，请选中此框。
            </div>

            <div id="enable_publiccomments.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            {sb_button text="保存更改" class="button button-success" id="fsettings" submit=true}
            {sb_button text="返回" class="button button-light" id="fback"}
        </div>
    </form>
</div>