{if NOT $permission_addban}
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
        <h2><i class="fas fa-microphone-alt-slash"></i> Add Block</h2>
    </div>

    <div class="padding">
        <div id="msg-green" class="message message:succes margin-bottom:half" style="display: none;">
            <h3>Block Added</h3>
            <div>新管理员已成功添加到系统中。</div>
            <div class="text:italic">Redirecting back to comms page</div>
        </div>

        <div class="margin-bottom">
            有关某个项目的更多信息或帮助，请将鼠标移到问号上。
        </div>

        <div class="margin-bottom:half">
            <label for="nickname" class="form-label form-label:bottom">
                昵称
            </label>

            <input type="hidden" id="fromsub" value="" />
            <input type="text" TABINDEX=1 class="form-input form-full" id="nickname" name="nickname" />

            <div class="form-desc">
                Type the nickname of the person that you are banning.
            </div>
            <div id="nick.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="steam" class="form-label form-label:bottom">
                Steam ID / Community ID
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam" name="steam" />

            <div class="form-desc">
                The Steam ID or Community ID of the person to ban.
            </div>
            <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="type" class="form-label form-label:bottom">
                Block Type
            </label>

            <select id="type" name="type" TABINDEX=2 class="form-select form-full">
                <option value="1">Voice</option>
                <option value="2">Chat</option>
                <option value="3">Chat &amp; Voice</option>
            </select>
        </div>

        <div class="margin-bottom:half">
            <label for="listReason" class="form-label form-label:bottom">
                Block Reason
            </label>

            <select id="listReason" name="listReason" TABINDEX=4 class="form-select form-full"
                onChange="changeReason(this[this.selectedIndex].value);">
                <option value="" selected> -- 选择原因 -- </option>
                <optgroup label="Violation">
                    <option value="Obscene language">Obscene language</option>
                    <option value="Insult players">Insult players</option>
                    <option value="Admin disrespect">Admin disrespect</option>
                    <option value="不适宜言语">不适宜言语</option>
                    <option value="Trading">Trading</option>
                    <option value="Spam in chat/voice">Spam</option>
                    <option value="Advertisement">Advertisement</option>
                </optgroup>
                <option value="other">其他原因</option>
            </select>

            <div id="dreason" style="display:none;">
                <textarea class="form-text margin-top:half" TABINDEX=4 cols="30" rows="5" id="txtReason"
                    name="txtReason"></textarea>
            </div>

            <div class="form-desc">
                Explain in detail, why this block is being made.
            </div>
            <div id="reason.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlength" class="form-label form-label:bottom">
                Block Length
            </label>

            <select id="banlength" TABINDEX=5 class="form-select form-full">
                <option value="0">永久</option>
                <optgroup label="minutes">
                    <option value="1">1分钟</option>
                    <option value="5">5分钟</option>
                    <option value="10">10分钟</option>
                    <option value="15">15分钟</option>
                    <option value="30">30分钟</option>
                    <option value="45">45分钟</option>
                </optgroup>
                <optgroup label="hours">
                    <option value="60">1小时</option>
                    <option value="120">2小时</option>
                    <option value="180">3小时</option>
                    <option value="240">4小时</option>
                    <option value="480">8小时</option>
                    <option value="720">12小时</option>
                </optgroup>
                <optgroup label="days">
                    <option value="1440">1天</option>
                    <option value="2880">2天</option>
                    <option value="4320">3天</option>
                    <option value="5760">4天</option>
                    <option value="7200">5天</option>
                    <option value="8640">6天</option>
                </optgroup>
                <optgroup label="weeks">
                    <option value="10080">1周</option>
                    <option value="20160">2周</option>
                    <option value="30240">3周</option>
                </optgroup>
                <optgroup label="months">
                    <option value="43200">1月</option>
                    <option value="86400">2月</option>
                    <option value="129600">3月</option>
                    <option value="259200">6月</option>
                    <option value="518400">12月</option>
                </optgroup>
            </select>

            <div id="length.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between margin-top">
            {sb_button text="Add block" onclick="ProcessBan();" class="button button-success" id="aban" submit=false}
            {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="aback"}
        </div>
    </div>
{/if}