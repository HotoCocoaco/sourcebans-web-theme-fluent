{if NOT $permission_import}
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
        <h2><i class="fas fa-file-import"></i> Import Bans</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            有关某个项目的更多信息或帮助，请将鼠标移到问号上。
        </div>
        <form action="" method="post" enctype="multipart/form-data">
            <div class="margin-bottom:half">
                <label for="importFile" class="form-label form-label:bottom">
                    文件
                </label>

                <input type="file" TABINDEX=1 class="form-input form-full" id="importFile" name="importFile" />
                <div class="form-desc">
                    选择 <span class="text:bold">banned_users.cfg</span> 或 <span
                        class="text:bold">banned_ip.cfg</span>
                    文件来上传和添加封禁。
                </div>

                <div id="file.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="margin-bottom:half">
                <input type="checkbox" class="form-check" name="friendsname" id="friendsname" />
                <label for="friendsname" class="form-label form-label:left">
                    获取名字
                </label>

                <div class="form-desc">
                    如果你想从他们的steam社区档案中获得玩家的名字，请选中此框。 <span
                        class="text:italic">(仅对 banned_users.cfg 有效)</span>.
                </div>

                <div id="friendsname.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="flex flex-ai:center flex-jc:space-between margin-top">
                {sb_button text="导入" class="button button-success" id="iban" submit=true}
                {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="iback"}
            </div>
        </form>
    </div>
    {if !$extreq}
        <script type="text/javascript">
            $('friendsname').disabled = true;
        </script>
    {/if}
{/if}