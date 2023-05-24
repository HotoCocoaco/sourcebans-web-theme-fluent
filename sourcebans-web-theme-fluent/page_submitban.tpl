<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-flag-checkered"></i> Submit a Report</h2>
        </div>

        <div class="padding">
            <div>
                In order to keep our servers running smoothly, offenders of our rules should be punished and we
                can't always be on call to help.
            </div>
            <div>
                When submitting a player report, we ask you to fill out the report as detailed as possible to help
                ban the offender as this will help us process your report quickly.
            </div>

            <div class="margin-top:half margin-bottom">
                If you are unsure on how to record evidence within in-game, please click
                <a href="javascript:void(0)"
                    onclick="ShowBox('How To Record Evidence', 'The best way to record evidence on someone breaking the rules would be to use Shadow Play or Plays.TV. Both pieces of software will record your game 24/7 with little to no impact on your game and you simply press a keybind to record the last X amount of minutes of gameplay which is perfect for catching rule breakers.<br /><br /> Alternatively, you can use the old method of using demos. While you are spectating the offending player, press the ` key on your keyboard to show the Developers Console. If this does not show, you will need to go into your Game Settings and enable this. Then type `record [demoname]` and hit enter, the file will then be in your mod folder of your game directory.', 'blue', '', true);">here</a>
                for an explanation.
            </div>

            <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
                <input type="hidden" name="subban" value="1">

                <div class="margin-bottom:half">
                    <label for="Type" class="form-label form-label:bottom">
                        封禁类型
                    </label>
                    <select id="Type" name="Type" class="form-select form-full"
                        onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">IP地址</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                        玩家 Steam ID
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$STEAMID}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanIP" class="form-label form-label:bottom">
                        玩家 IP
                    </label>
                    <input type="text" id="BanIP" name="BanIP" size="40" maxlength="64" value="{$ban_ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        玩家昵称 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        评论 <span class="mandatory">*</span> (请写下一个描述性的评论。所以不要评论:“开了”)
                    </label>
                    <textarea id="BanReason" name="BanReason" class="form-text form-full">{$ban_reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="SubmitName" class="form-label form-label:bottom">
                        你的名字
                    </label>
                    <input type="text" id="SubmitName" size="40" maxlength="70" name="SubmitName"
                        value="{$subplayer_name}" class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        你的电子邮件地址 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="server" class="form-label form-label:bottom">
                        服务器 <span class="mandatory">*</span>
                    </label>
                    <select id="server" name="server" class="form-select form-full">
                        <option value="-1">-- 选择服务器 --</option>
                        {foreach from=$server_list item="server"}
                            <option value="{$server.sid}" {if $server_selected==$server.sid}selected{/if}>
                                {$server.hostname}</option>
                        {/foreach}
                        <option value="0">其他服务器/此处未列出</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="demo_file" class="form-label form-label:bottom">
                        上传demo
                    </label>

                    <input name="demo_file" id="demo_file" type="file" size="25" class="form-file form-full" />
                    <div class="form-desc">
                        注:只允许DEM, ZIP, RAR, 7Z, BZ2或GZ。
                    </div>
                </div>

                <div class="flex">
                    {sb_button text="Submit" class="button button-primary flex:11" id="save" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <h3>如果有人被封了会怎样?</h3>
                <p>
                    如果你举报的人被封禁，SteamID或IP将被列入主封禁名单，
                    每次他们试图连接任何服务器时，他们将被阻止加入，
                    并将被记录到我们的数据库中。
                </p>
            </div>
        </div>
    </div>
</div>