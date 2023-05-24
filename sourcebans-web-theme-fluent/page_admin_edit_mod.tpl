<div class="admin_tab_content_title">
    <h2><i class="fas fa-cogs"></i> Mod详细信息</h2>
</div>

<div class="padding">
    <div class="margin-bottom">
        有关某个项目的更多信息或帮助，请将鼠标移到问号上。
    </div>

    <form action="" method="post">
        <input type="hidden" name="insert_type" value="add">

        <div class="margin-bottom:half">
            <label for="name" class="form-label form-label:bottom">
                Mod名称
            </label>

            <input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
            <input type="text" TABINDEX=1 class="form-input form-full" id="name" name="name" value="{$name}" />

            <div class="form-desc">
                键入要添加的mod的名称。
            </div>

            <div id="name.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="folder" class="form-label form-label:bottom">
                Mod文件夹
            </label>

            <input type="text" TABINDEX=2 class="form-input form-full" id="folder" name="folder" value="{$folder}" />

            <div class="form-desc">
                键入此mods文件夹的名称。例如，Counter Strike:Source的mod文件夹是“cstrike”。
            </div>

            <div id="folder.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="steam_universe" class="form-label form-label:bottom">
                Steam Universe 数字
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam_universe" name="steam_universe"
                value="{$steam_universe}" />

            <div class="form-desc">
                (STEAM_<span class="text:bold">X</span>:Y:Z) 某些游戏显示SteamID的方式与其他游戏不同。
                根据此模组显示SteamID的方式， (<span class="text:bold">X</span>) 输入SteamID中的第一个数字
                （默认是0）。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=4 id="enabled" class="form-check" name="enabled" value="1" />

            <label for="enabled" class="form-label form-label:left">
                Mod启用
            </label>

            <div class="form-desc">
                选择此mod是否已启用并可分配给封禁和服务器。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="enabled" class="form-label form-label:button">
                上传图标
            </label>

            {sb_button text="Upload MOD Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="button button-primary" id="upload" submit=false}

            <div class="form-desc">
                单击此处上传一个图标以与此mod关联。
            </div>

            {if $mod_icon}
                <div id="icon.msg" class="message message:info margin-top:half">
                    <span class="text:bold">Uploaded:</span> {$mod_icon}
                </div>
            {/if}
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            {sb_button text="保存更改" class="button button-success" id="editmod" submit=true}
            {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="back" submit=false}
        </div>
    </form>
</div>