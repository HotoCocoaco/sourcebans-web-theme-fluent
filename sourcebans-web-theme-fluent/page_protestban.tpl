<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-user-clock"></i> 发起一个申诉</h2>
        </div>

        <div class="padding">
            <div>
                为了申诉一次封禁，你必须确保你点击 <a href="index.php?p=banlist"
                    class="text:bold">这里</a> 确认你是被封的和其原因。
            </div>
            <div class="margin-bottom">
                假如你被封了但是你认为不公正或者有其他情况，请填写以下表格。
            </div>

            <form action="index.php?p=protest" method="post">
                <input type="hidden" name="subprotest" value="1">

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

                <div id="steam.row" class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                        你的 SteamID <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$steam_id}"
                        class="form-input form-full" />
                </div>

                <div id="ip.row" class="margin-bottom:half" style="display: none;">
                    <label for="Ip" class="form-label form-label:bottom">
                        你的 IP
                    </label>
                    <input type="text" id="Ip" name="IP" size="40" maxlength="64" value="{$ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        名称 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        为什么你应该被解封 <span class="mandatory">*</span>: (尽可能详细)
                    </label>
                    <textarea id="BanReason" name="BanReason" cols="30" rows="5"
                        class="form-text form-full input">{$reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        你的电子邮件地址 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="flex">
                    {sb_button text="Submit" class="button button-primary flex:11" id="alogin" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <h3>我提交这个申诉会发生什么？</h3>
                <p>
                    您的上诉将通知员工团队。然后，他们将审查封禁是否具有决定性。
                    审核后，您将得到回复，通常是指在24小时内回复。
                </p>

                <h3>注意:</h3>
                <p>
                    向我们的管理员发送带有威胁、斥责或大喊大叫的电子邮件不会让您失去联系，您将被永久拒绝使用我们的任何服务。
                </p>
            </div>
        </div>
    </div>
</div>