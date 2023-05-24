<h2 class="title text-center">Select an option to administer</h2>
<div class="admin_nav">
    <ul class="flex">
		{if $access_admins}
			 <li>
					<a href="index.php?p=admin&amp;c=admins">
					  <i class="fas fa-user"></i>
					  <span>管理员</span>
				  </a>
			 </li>
    	{/if}
        {if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=bans">
                    <i class="fas fa-ban"></i>
                    <span>封禁</span>
                </a>
            </li>
        {/if}
		{if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=comms">
                    <i class="fas fa-microphone-alt-slash"></i>
                    <span>交流</span>
                </a>
            </li>
        {/if}
        {if $access_groups}
            <li>
                <a href="index.php?p=admin&amp;c=groups">
                    <i class="fas fa-users"></i>
                    <span>组</span>
                </a>
            </li>
        {/if}
		 {if $access_servers}
            <li>
                <a href="index.php?p=admin&amp;c=servers">
                    <i class="fas fa-server"></i>
                    <span>服务器</span>
                </a>
            </li>
        {/if}
        {if $access_settings}
            <li>
                <a href="index.php?p=admin&amp;c=settings">
                    <i class="fas fa-tools"></i>
                    <span>网页面板</span>
                </a>
            </li>
        {/if}
        {if $access_mods}
            <li>
                <a href="index.php?p=admin&amp;c=mods">
                    <i class="fas fa-cubes"></i>
                    <span>管理Mod</span>
                </a>
            </li>
        {/if}
    </ul>
</div>

<div class="admin_dashboard margin-top">
<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-ban"></i> 封禁 - 交流</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <!-- WARNING: To fully fix this part use https://github.com/Rushaway/sourcebans-pp/commit/f05a4bcdfa59002970daeb0b8231ffc1b13c834c -->
                <li>总计封禁 : <span class="text:bold">{$total_bans}</span></li>
                <li>总计交流封禁 : <span class="text:bold">{$total_comms}</span></li>
                <li>已阻止连接 : <span class="text:bold">{$total_blocks}</span></li>
            </ul>
        </div>
    </div>


    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-user-shield fa-1x"></i> 管理员信息</h2>
        </div>
        <div class="padding">
		<ul class="list-reset" align="center">
					<li>我们共有 <span class="text:bold" style="font-size:xx-large"> <i style="color:#dd6b20">{$total_admins}</i></span> 名管理员遍布在服务器！</li>
					&nbsp;
					<li><i class="fas fa-rocket fa-1x"></i> 团队合作 <span class="text-primary">成就梦想</span>!</li>
					</ul>
				</div>
    </div>
	
	<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-exclamation-circle"></i> 检举数据</h2>
        </div>
        <div class="padding">
            <ul class="list-reset" align="right">
                <li>处理中 : <span class="text:bold">{$total_submissions}</span></li>
                <li>已归档 : <span class="text:bold">{$archived_submissions}</span></li>
            </ul>
        </div>
    </div>
	
    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-angry"></i> 申诉数据</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>处理中 : <span class="text:bold">{$total_protests}</span></li>
                <li>已归档 : <span class="text:bold">{$archived_protests}</span></li>
            </ul>
        </div>
    </div>
	
	<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-server"></i> 服务器信息</h2>
        </div>
        <div class="padding" align="center">
            <ul class="list-reset">
				<li>我们有总计 <span class="text:bold" style="font-size:x-large"> <i style="color:#dd6b20">{$total_servers}</i></span> 个服务器注册在Sourcebans。</li>
				<li>总计demo大小有<span class="text:bold" style="font-size:x-large"> <i style="color:#dd6b20">{$demosize}</i></span> 存储在网页服务器。</li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-code-branch"></i> 版本信息</h2>
        </div>
        <div class="padding" align="right">
            <ul class="list-reset">
                <li>最新发行: <span id='relver' class="text:bold">请等待...</span></li>
                {if $dev}
                    <li>最新Git: <span id='svnrev' class="text:bold">请等待...</span></li>
                {/if}
                <li><span id='versionmsg'>请等待...</span></li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
        xajax_CheckVersion();
    </script>
</div>