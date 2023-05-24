<div id="admin-page-content">
<form action="" method="post">
    <div id="0">
        <div id="msg-green" style="display:none;">
            <i class="fas fa-check fa-2x"></i>
            <b>封禁已更新</b>
            <br />
            详情已更新。<br /><br />
            <i>重定向到封禁页面</i>
        </div>
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-user-edit"></i> 封禁详情</h2>
		</div>
		<div class="padding">
            有关某个项目的更多信息或帮助，请将鼠标移到问号上。<br /><br />
            <input type="hidden" name="insert_type" value="add">
            <table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="玩家姓名" message="这是被封禁玩家的名字。"}-玩家姓名
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="text" class="submit-fields" id="name" name="name" value="-{$ban_name}-" />
                        </div>
                        <div id="name.msg" class="badentry"></div></td>
                    </tr>
                    <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="封禁类型" message="选择是按照SteamID封禁还是IP地址。"}-封禁类型
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="type" name="type" TABINDEX=2 class="submit-fields">
                                <option value="0">Steam ID</option>
                                <option value="1">IP地址</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <div class="rowdesc">
                            -{help_icon title="Steam ID" message="这是被禁止的玩家的Steam ID。您可能也想键入Community ID。"}-Steam ID
                        </div>
                    </td>
                <td>
                    <div align="left">
                        <input value="-{$ban_authid}-" type="text" TABINDEX=3 class="submit-fields" id="steam" name="steam" />
                    </div>
                        <div id="steam.msg" class="badentry"></div>
                </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="IP" message="被封禁的玩家的IP地址"}-IP地址
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <input value="-{$ban_ip}-" type="text" TABINDEX=3 class="submit-fields" id="ip" name="ip" />
                        </div>
                        <div id="ip.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="原因" message="此玩家被封禁的原因"}-原因
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="listReason" name="listReason" TABINDEX=4 class="submit-fields" onChange="changeReason(this[this.selectedIndex].value);">
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
                                -{if $customreason}-
                                <optgroup label="Custom">
                                    -{foreach from=$customreason item="creason"}-
                                    <option value="-{$creason}-">-{$creason}-</option>
                                    -{/foreach}-
                                </optgroup>
                                -{/if}-
                                <option value="other">其他原因</option>
                            </select>
                            <div id="dreason" style="display:none;">
                                <textarea class="submit-fields" TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
                            </div>
                        </div>
                        <div id="reason.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">-{help_icon title="封禁时长" message="选择你想封禁此人多长时间。"}-封禁时长 </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="banlength" name="banlength" TABINDEX=5 class="submit-fields">
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
                        </div>
                        <div id="length.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="上传Demo" message="点击上传与此封禁提交的Demo"}-上传Demo
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            -{sb_button text="上传一个Demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="save" id="uploaddemo" submit=false}-
                        </div>
                        <div id="demo.msg" style="color:#CC0000;">
                            -{$ban_demo}-
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="hidden" name="did" id="did" value="" />
                        <input type="hidden" name="dname" id="dname" value="" />
                        -{sb_button text="保存更改" class="ok" id="editban" submit=true}-
                        -{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="back" submit=false}-
                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                var did = 0;
                var dname = "";
                function demo(id, name)
                {
                    $('demo.msg').setHTML("已上传: <b>" + name + "</b>");
                    $('did').value = id;
                    $('dname').value = name;
                }
            </script>        
        </div>
    </div>
	</from>
</div>