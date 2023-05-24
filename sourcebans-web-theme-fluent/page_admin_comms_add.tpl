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
        <h2><i class="fas fa-microphone-alt-slash"></i> 增加限制</h2>
    </div>

    <div class="padding">
        <div id="msg-green" class="message message:succes margin-bottom:half" style="display: none;">
            <h3>已增加限制</h3>
            <div>新信息已成功添加到系统中。</div>
            <div class="text:italic">重定向到交流页面</div>
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
                键入您要禁止的人的昵称。
            </div>
            <div id="nick.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="steam" class="form-label form-label:bottom">
                Steam ID / Community ID
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam" name="steam" />

            <div class="form-desc">
                要禁止的人的Steam ID或社区ID。
            </div>
            <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="type" class="form-label form-label:bottom">
                限制类型
            </label>

            <select id="type" name="type" TABINDEX=2 class="form-select form-full">
                <option value="1">语音</option>
                <option value="2">聊天</option>
                <option value="3">聊天 &amp; 语音</option>
            </select>
        </div>

        <div class="margin-bottom:half">
            <label for="listReason" class="form-label form-label:bottom">
                限制原因
            </label>

            <select id="listReason" name="listReason" TABINDEX=4 class="form-select form-full"
                onChange="changeReason(this[this.selectedIndex].value);">
                <option value="" selected> -- 选择原因 -- </option>
                <optgroup label="Violation">
                    <option value="污言秽语">污言秽语</option>
                    <option value="辱骂玩家">辱骂玩家</option>
                    <option value="不尊重管理员">不尊重管理员</option>
                    <option value="不适宜言语">不适宜言语</option>
                    <option value="交易">交易</option>
                    <option value="聊天/语音刷屏">刷屏</option>
                    <option value="广告">广告</option>
                </optgroup>
                <option value="other">其他原因</option>
            </select>

            <div id="dreason" style="display:none;">
                <textarea class="form-text margin-top:half" TABINDEX=4 cols="30" rows="5" id="txtReason"
                    name="txtReason"></textarea>
            </div>

            <div class="form-desc">
                详细解释为什么要制作这个限制。
            </div>
            <div id="reason.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlength" class="form-label form-label:bottom">
                限制时长
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
            {sb_button text="增加限制" onclick="ProcessBan();" class="button button-success" id="aban" submit=false}
            {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="aback"}
        </div>
    </div>
{/if}