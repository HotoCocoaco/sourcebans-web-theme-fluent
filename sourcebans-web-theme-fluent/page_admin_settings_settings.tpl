<form action="" method="post">
    <input type="hidden" name="settingsGroup" value="mainsettings" />
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-cogs"></i> Main Settings</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            有关特定主题的详细信息或帮助
            请将鼠标移动到问号。
        </div>

        <div class="margin-bottom:half">
            <label for="template_title" class="form-label form-label:bottom">
                标题
            </label>

            <input type="text" TABINDEX=1 class="form-input form-full" id="template_title" name="template_title"
                value="{$config_title}" />

            <div class="form-desc">
                定义浏览器标题中显示的标题。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="template_logo" class="form-label form-label:bottom">
                logo路径
            </label>

            <input type="text" TABINDEX=2 class="form-input form-full" id="template_logo" name="template_logo"
                value="{$config_logo}" />

            <div class="form-desc">
                在这里，您可以为logo定义一个新的位置，这样您就可以使用自己的图像。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="config_password_minlength" class="form-label form-label:bottom">
                最小密码长度
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="config_password_minlength"
                name="config_password_minlength" value="{$config_min_password}" />

            <div class="form-desc">
                定义密码最小允许的长度。
            </div>

            <div id="minpasslength.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="config_dateformat" class="form-label form-label:bottom">
                日期格式 <a href="http://www.php.net/date" target="_blank" rel="noopener">查阅: PHP date()</a>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="config_dateformat" name="config_dateformat"
                value="{$config_dateformat}" />

            <div class="form-desc">
                在这里，您可以更改显示在封禁列表和其他页面中的日期格式。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife" class="form-label form-label:bottom">
                授权最大时间 <span class="text:italic">(分钟)</span>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife" name="auth_maxlife"
                value="{$auth_maxlife}" />

            <div class="form-desc">
                身份验证令牌的最大有效期。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife_remember" class="form-label form-label:bottom">
                授权最大时间 (记住我) <span class="text:italic">(分钟)</span>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife_remember"
                name="auth_maxlife_remember" value="{$auth_maxlife_remember}" />

            <div class="form-desc">
                启用记住我的身份验证令牌的最长有效期。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife_steam" class="form-label form-label:bottom">
                授权最大时间 (steam登录) <span class="text:italic">(分钟)</span>
            </label>


            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife_steam" name="auth_maxlife_steam"
                value="{$auth_maxlife_steam}" />

            <div class="form-desc">
                通过steam登录的身份验证令牌的最长有效期。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=6 name="config_debug" class="form-check" id="config_debug" />

            <label for="config_debug" class="form-label form-label:left">
                调试模式
            </label>

            <div class="form-desc">
                选中此项永久打开调试模式。
            </div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-home"></i> 仪表盘设定</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="dash_intro_title" class="form-label form-label:bottom">
                简介标题
            </label>

            <input type="text" TABINDEX=7 class="form-input form-full" id="dash_intro_title" name="dash_intro_title"
                value="{$config_dash_title}" />

            <div class="form-desc">
                设置仪表板简介的标题。
            </div>

            <div id="dash.intro.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="dash_intro_text" class="form-label form-label:bottom">
                简介文本
            </label>

            <textarea TABINDEX=6 cols="80" rows="20" class="form-text" id="dash_intro_text"
                name="dash_intro_text">{$config_dash_text}</textarea>

            <div class="form-desc">
                设置仪表盘简介的文本。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=8 name="dash_nopopup" class="form-check" id="dash_nopopup" />

            <label for="dash_nopopup" class="form-label form-label:left">
                关闭日志弹出
            </label>

            <div class="form-desc">
                选中此框可禁用日志信息弹出窗口并使用直接链接。
            </div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-sliders-h"></i> 页面设定</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=9 name="enable_protest" class="form-check" id="enable_protest" />

            <label for="enable_protest" class="form-label form-label:left">
                开启封禁申诉
            </label>

            <div class="form-desc">
                选中此框开启封禁申诉。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=10 name="enable_submit" class="form-check" id="enable_submit" />

            <label for="enable_submit" class="form-label form-label:left">
                开启封禁检举
            </label>

            <div class="form-desc">
                选中此框开启封禁检举。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=10 name="enable_commslist" class="form-check" id="enable_commslist" />

            <label for="enable_commslist" class="form-label form-label:left">
                开启交流列表
            </label>

            <div class="form-desc">
                选中此框开启交流列表。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" class="form-check"
                id="protest_emailonlyinvolved" />

            <label for="protest_emailonlyinvolved" class="form-label form-label:left">
                只发一邮件
            </label>

            <div class="form-desc">
                选中此框仅向封禁申诉玩家的管理员发送申诉通知电子邮件。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="default_page" class="form-label form-label:bottom">
                默认界面
            </label>

            <select class="form-select form-full" TABINDEX=11 name="default_page" id="default_page">
                <option value="0">仪表盘</option>
                <option value="1">封禁页面</option>
                <option value="2">服务器</option>
                <option value="3">检举封禁</option>
                <option value="4">申诉封禁</option>
            </select>

            <div class="form-desc">
                选择人们看到的第一个页面。
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="clearcache" class="form-label form-label:bottom">
                清理缓存
            </label>

            {sb_button text="Clear Cache" onclick="xajax_ClearCache();" class="button button-light" id="clearcache" submit=false}

            <div class="form-desc">
                点击按钮清理缓存文件夹。
            </div>

            <div id="clearcache.msg"></div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-ban"></i> 封禁列表设置</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="banlist_bansperpage" class="form-label form-label:bottom">
                每页项目
            </label>

            <input type="text" TABINDEX=12 class="form-input form-full" id="banlist_bansperpage"
                name="banlist_bansperpage" value="{$config_bans_per_page}" />

            <div class="form-desc">
                选择每页显示的项目。
            </div>

            <div id="bansperpage.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=13 name="banlist_hideadmname" class="form-check" id="banlist_hideadmname" />

            <label for="banlist_hideadmname" class="form-label form-label:left">
                隐藏管理员名称
            </label>

            <div class="form-desc">
                选中此项会隐藏管理员信息。
            </div>

            <div id="banlist_hideadmname.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" class="form-check"
                id="banlist_nocountryfetch" />

            <label for="banlist_nocountryfetch" class="form-label form-label:left">
                无国家搜索
            </label>

            <div class="form-desc">
                选中此项禁用根据IP显示国家，在遇到问题时使用。
            </div>

            <div id="banlist_nocountryfetch.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=15 name="banlist_hideplayerips" class="form-check"
                id="banlist_hideplayerips" />

            <label for="banlist_hideplayerips" class="form-label form-label:left">
                隐藏玩家IP
            </label>

            <div class="form-desc">
                选择此项则不会公开玩家IP。
            </div>

            <div id="banlist_hideplayerips.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlist_hideplayerips" class="form-label form-label:right">
                自定义封禁原因
            </label>

            <table width="100%" border="0" style="border-collapse:collapse;" id="custom.reasons" name="custom.reasons">
                {foreach from=$bans_customreason item="creason"}
                    <tr>
                        <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]"
                                value="{$creason}" /></td>
                    </tr>
                {/foreach}
                <tr>
                    <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]" /></td>
                </tr>
                <tr>
                    <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]" /></td>
                </tr>
            </table>
            <a href="javascript:void(0)" onclick="MoreFields();" title="Add more fields">[+]</a>

            <div class="form-desc">
                键入你想在下拉菜单使用的自定义封禁原因。
            </div>

            <div id="bans_customreason.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>
    </div>
    
	<div class="admin_tab_content_title">
        <h2><i class="fa-solid fa-paper-plane"></i></i> 邮件设定</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            假如留空，邮件功能将无法使用并返回500。
        </div>

        <div class="margin-bottom:half">
            <label for="mail_host" class="form-label form-label:bottom">
                主机
            </label>

            <input type="text" TABINDEX=16 class="form-input form-full" id="mail_host" name="mail_host"
                value="{$config_smtp[0]}" />

            <div class="form-desc">
                输入你的主机。
            </div>
			
			<div id="mailhost.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="mail_user" class="form-label form-label:bottom">
                用户名
            </label>

            <input type="text" TABINDEX=17 class="form-input form-full" id="mail_user" name="mail_user"
                value="{$config_smtp[1]}" />

            <div class="form-desc">
                输入的用户名。
            </div>
			
			<div id="mail_user.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="mail_pass" class="form-label form-label:bottom">
                密码
            </label>

            <input type="text" TABINDEX=18 class="form-input form-full" id="mail_pass"
                name="mail_pass" placeholder="*******" />

            <div class="form-desc">
                输入你的密码。
            </div>

            <div id="mail_pass.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>
		
		<div class="margin-bottom:half">
            <label for="mail_port" class="form-label form-label:bottom">
                端口
            </label>

            <input type="text" TABINDEX=19 class="form-input form-full" id="mail_port"
                name="mail_port" value="{$config_smtp[2]}" />

            <div class="form-desc">
                输入使用的端口。
            </div>

            <div id="mail_port.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>
		
		<div class="margin-bottom:half">
			<input type="checkbox" TABINDEX=20 name="mail_verify_peer" class="form-check" id="mail_verify_peer" />
			
            <label for="mail_verify_peer" class="form-label form-label:bottom">
                验证SSL证书
            </label>

            <div class="form-desc">
                需要SSL证书使用。
            </div>

            <div id="mail_verify_peer.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

    </div>

    <div class="padding flex flex-ai:center flex-jc:space-between">
        {sb_button text="保存更改" class="button button-success" id="asettings" submit=true}
        {sb_button text="返回" class="button button-light" id="aback"}
    </div>
</form>
<script type="text/javascript" src="./includes/tinymce/tinymce.min.js"></script>
{literal}
    <script language="javascript" type="text/javascript">
        tinyMCE.init({
            selector: "textarea",
            height: 500,
            theme : "silver",
            plugins : "advlist, autolink, lists, link, image, charmap, print, preview, hr, anchor, pagebreak, searchreplace, wordcount, visualblocks, visualchars, code, fullscreen, insertdatetime, media, nonbreaking, save, table, directionality, emoticons, template, paste, textpattern, imagetools, codesample, toc",
            extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]"
        });
    </script>
{/literal}
