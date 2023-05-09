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
        <h2><i class="fas fa-user-times"></i> 增加封禁</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            有关某个项目的更多信息或帮助，请将鼠标移到问号上。
        </div>

        <div class="margin-bottom:half">
            <label for="nickname" class="form-label form-label:bottom">
                昵称
            </label>

            <input type="hidden" id="fromsub" value="" />
            <input type="text" TABINDEX=1 class="form-input form-full" id="nickname" name="nickname" />

            <div id="nick.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="type" class="form-label form-label:bottom">
                封禁类型
            </label>

            <select id="type" name="type" TABINDEX=2 class="form-select form-full">
                <option value="0">Steam ID</option>
                <option value="1">IP地址</option>
            </select>
        </div>

        <div class="margin-bottom:half">
            <label for="steam" class="form-label form-label:bottom">
                Steam ID / Community ID
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam" name="steam" />

            <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="ip" class="form-label form-label:bottom">
                IP地址
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="ip" name="ip" />

            <div id="ip.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="listReason" class="form-label form-label:bottom">
                封禁原因
            </label>

            <select id="listReason" name="listReason" TABINDEX=4 class="form-select form-full"
                onChange="changeReason(this[this.selectedIndex].value);">
                <option value="" selected> -- 选择原因 -- </option>
                <optgroup label="作弊">
                    <option value="自瞄">自瞄</option>
                    <option value="无后坐力">无后坐力</option>
                    <option value="透视">透视</option>
                    <option value="陀螺">陀螺</option>
                    <option value="多重作弊">多重作弊</option>
                    <option value="无视烟雾">无视烟雾</option>
                    <option value="无视闪光">无视闪光</option>
                </optgroup>
                <optgroup label="行为">
                    <option value="恶意击杀队友">恶意击杀队友</option>
                    <option value="恶意闪光队友">恶意闪光队友</option>
                    <option value="刷屏和刷麦">刷屏和刷麦</option>
                    <option value="不适宜喷漆">不适宜喷漆</option>
                    <option value="不适宜言语">不适宜言语</option>
                    <option value="不适宜名字">不适宜名字</option>
                    <option value="无视管理员">无视管理员</option>
                    <option value="团队堆叠">团队堆叠</option>
                </optgroup>
                {if $customreason}
                    <optgroup label="自定义">
                        {foreach from=$customreason item="creason"}
                            <option value="{$creason}">{$creason}</option>
                        {/foreach}
                    </optgroup>
                {/if}
                <option value="other">其他原因</option>
            </select>

            <div id="dreason" class="margin-top:half" style="display:none;">
                <textarea class="form-text" TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
            </div>

            <div id="reason.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlength" class="form-label form-label:bottom">
                封禁长度
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

        <div class="margin-bottom:half">
            <label for="udemo" class="form-label form-label:bottom">
                上传Demo
            </label>

            {sb_button text="上传一个Demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="button button-primary" id="udemo" submit=false}

            <div id="demo.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between margin-top">
            {sb_button text="增加封禁" onclick="ProcessBan();" class="button button-success" id="aban" submit=false}
            {sb_button text="返回" onclick="history.go(-1)" class="button button-light" id="aback"}
        </div>
    </div>
{/if}