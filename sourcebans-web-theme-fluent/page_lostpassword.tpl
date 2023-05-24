<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2><i class="fas fa-key"></i> 忘记密码</h2>
        </div>
        <div class="padding">
            <div class="margin-bottom:half">
                请在下面的框中键入您的电子邮件地址以重置您的密码。
            </div>

            <div id="msg-red" class="message message:error margin-bottom:half" style="display:none;">
                您提供的电子邮件地址未在系统中注册。
            </div>

            <div id="msg-blue" class="message message:info margin-bottom:half" style="display:none;">
                请检查您的电子邮件收件箱（和垃圾邮件）中是否有可以帮助您重置密码的链接。
            </div>

            <div class="margin-bottom:half">
                <label for="email" class="form-label form-label:bottom">
                    电子邮件地址
                </label>
                <input id="email" class="form-input form-full" type="text" name="email" />
            </div>

            <div class="flex margin-top">
                {sb_button text="Recover Password" onclick="xajax_LostPassword($('email').value);" class="button button-success flex:11" id="alogin" submit=false}
            </div>
        </div>
    </div>
</div>