<link href="ecmoban_qq/images/qq.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
  var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>
<script type="text/javascript">
  //设为首页 www.ecmoban.com
  function SetHome(obj, url) {
    try {
      obj.style.behavior = 'url(#default#homepage)';
      obj.setHomePage(url);
    } catch (e) {
      if (window.netscape) {
        try {
          netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        } catch (e) {
          alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
        }
      } else {
        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【" + url + "】设置为首页。");
      }
    }
  }

  //收藏本站 bbs.ecmoban.com
  function AddFavorite(title, url) {
    try {
      window.external.addFavorite(url, title);
    } catch (e) {
      try {
        window.sidebar.addPanel(title, url, "");
      } catch (e) {
        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
      }
    }
  }
</script>



<div class="top_nav">
  <script type="text/javascript">
    //初始化主菜单
    function sw_nav(obj, tag) {

      var DisSub = document.getElementById("DisSub_" + obj);
      var HandleLI = document.getElementById("HandleLI_" + obj);
      if (tag == 1) {
        DisSub.style.display = "block";


      } else {
        DisSub.style.display = "none";

      }
    }
  </script>
  <div class="block">

    <ul class="top_bav_l">
      <li class="top_sc">
        <a href="javascript:void(0);" onclick="AddFavorite('我的网站',location.href)">收藏本站</a>
      </li>
      <li>关注我们：</li>
      <li style="border:none" class="menuPopup" onMouseOver="sw_nav(1,1);" onMouseOut="sw_nav(1,0);">
        <a id="HandleLI_1" href="javascript:;" title="微博" class="attention"></a>
        <div id=DisSub_1 class="top_nav_box  top_weibo">
          <a href="#" target="_blank" title="新浪微博" class="top_weibo"></a>
          <a href="#" target="_blank" title="QQ微博" class="top_qq"></a>
        </div>
      </li>
      <!--<li class="menuPopup" onMouseOver="sw_nav(2,1);" onMouseOut="sw_nav(2,0);">
            	<a id="HandleLI_2" href="javascript:;" title="微信" class="top_weixin"></a>
            	<div id="DisSub_2" class="weixinBox" style="display: none;">
            		<img src="themes/ecmoban_benlai2015/images/weixin.png" style="width:150px; height:190px;  background:#0000CC" width="150" height="190">
            	</div>
            </li>  -->
    </ul>

    <div class="header_r">
      <?php echo $this->smarty_insert_scripts(array('files' => 'transport.js,utils.js')); ?>
      <font id="ECS_MEMBERZONE"><?php
                                $k = array(
                                  'name' => 'member_info',
                                );
                                echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
                                ?> </font>
      <?php if ($this->_var['navigator_list']['top']) : ?>
        <?php $_from = $this->_var['navigator_list']['top'];
        if (!is_array($_from) && !is_object($_from)) {
          settype($_from, 'array');
        };
        $this->push_vars('', 'nav');
        $this->_foreach['nav_top_list'] = array('total' => count($_from), 'iteration' => 0);
        if ($this->_foreach['nav_top_list']['total'] > 0) :
          foreach ($_from as $this->_var['nav']) :
            $this->_foreach['nav_top_list']['iteration']++;
        ?>
            <a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1) : ?> target="_blank" <?php endif; ?>><?php echo $this->_var['nav']['name']; ?></a>
            <?php if (!($this->_foreach['nav_top_list']['iteration'] == $this->_foreach['nav_top_list']['total'])) : ?>
              |
            <?php endif; ?>
            <?php endforeach;
        endif;
        unset($_from); ?><?php $this->pop_vars();; ?>
          <?php endif; ?>
    </div>
  </div>
</div>
<style type="text/css">
  .head15_top_bar {
    position: relative;
  }

  .head15_top_bar a {
    position: absolute;
    top: 0;
    left: 0;
  }
</style>
<div class="head15_top_bar">
  <div class="bd">
    <ul>
      <a style="background:url(themes/ecmoban_benlai2015/images/top.jpg) no-repeat scroll center top;" target="_blank" href="https://shizhou.tmall.com/"></a>
    </ul>
  </div>
</div>
<div class="block">
  <div class="head15_logo_box">
    <div class="f_l">
      <h1>
        <a href="index.php">
          <img src="themes/ecmoban_benlai2015/images/logo.gif">
        </a>
      </h1>
    </div>
    <a class="head15_buy" id="ECS_CARTINFO" href="flow.php">
      <?php
      $k = array(
        'name' => 'cart_info',
      );
      echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
      ?>
    </a>
    <a class="head15_my" href="user.php">

    </a>
    <div class="head15_search">
      <div class="search_box">
        <form id="searchForm" name="searchForm" method="get" action="search.php" onSubmit="return checkSearchForm()">
          <input type="text" name="keywords" id="keyword" value="<?php echo htmlspecialchars($this->_var['search_keywords']); ?>">
          <input type="hidden" value="k1" name="dataBi">
          <button type="submit" class="sch_btn"> </button>
        </form>
      </div>
      <script type="text/javascript">
        <!--
        function checkSearchForm() {
          if (document.getElementById('keyword').value) {
            return true;
          } else {
            alert("<?php echo $this->_var['lang']['no_keywords']; ?>");
            return false;
          }
        }
        -->

      </script>
      <div class="search_word">
        <?php if ($this->_var['searchkeywords']) : ?>
          <?php $_from = $this->_var['searchkeywords'];
          if (!is_array($_from) && !is_object($_from)) {
            settype($_from, 'array');
          };
          $this->push_vars('', 'val');
          if (count($_from)) :
            foreach ($_from as $this->_var['val']) :
          ?> <em><a href="search.php?keywords=<?php echo urlencode($this->_var['val']); ?>"><?php echo $this->_var['val']; ?></a> </em><?php endforeach;
                                                                                                                                    endif;
                                                                                                                                    unset($_from); ?><?php $this->pop_vars();; ?>
            <?php endif; ?>
      </div>
    </div>
  </div>
</div>
<div style="clear:both"></div>
<div class="head15_menu_bg">
  <div class="head15_menu_box">
    <div class="head15_menu_all">
      <div class="tit_all">
        <a href="catalog.php">所有商品分类</a>
      </div>
    </div>
    <div class="head15_menu_big">
      <ul>
        <li><a href="./index.php"><?php echo $this->_var['lang']['home']; ?></a></li>
        <?php $_from = $this->_var['navigator_list']['middle'];
        if (!is_array($_from) && !is_object($_from)) {
          settype($_from, 'array');
        };
        $this->push_vars('', 'nav');
        $this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
        if ($this->_foreach['foo']['total'] > 0) :
          foreach ($_from as $this->_var['nav']) :
            $this->_foreach['foo']['iteration']++;
        ?>
            <li><a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1) : ?>target="_blank" <?php endif; ?>><?php echo $this->_var['nav']['name']; ?></a></li>
            <?php endforeach;
        endif;
        unset($_from); ?><?php $this->pop_vars();; ?>
      </ul>
    </div>
  </div>
</div>