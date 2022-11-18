<div id="footers" class="foot15">
  <div class="bar">
    <div class="explain">
      <dl>
        <dt class="ico01"></dt>
        <dd>
          <span>信誉全球</span>
          严格质量把关
        </dd>
      </dl>
      <dl>
        <dt class="ico02"></dt>
        <dd>
          <span>限时产品热卖</span>
          给你超值选择
        </dd>
      </dl>
      <dl>
        <dt class="ico03"></dt>
        <dd>
          <span>权威产品检测</span>
          品质保证
        </dd>
      </dl>
      <dl>
        <dt class="ico04"></dt>
        <dd>
          <span>24小时营业</span>
          全年无休
        </dd>
      </dl>
      <dl class="m0">
        <dt class="ico05"></dt>
        <dd>
          <span>满60免运费</span>
          今日下单次日送达
        </dd>
      </dl>
    </div>
  </div>
  <?php if ($this->_var['helps']) : ?>
    <div class="footert">
      <?php $_from = $this->_var['helps'];
      if (!is_array($_from) && !is_object($_from)) {
        settype($_from, 'array');
      };
      $this->push_vars('', 'help_cat');
      $this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
      if ($this->_foreach['foo']['total'] > 0) :
        foreach ($_from as $this->_var['help_cat']) :
          $this->_foreach['foo']['iteration']++;
      ?>
          <?php if ($this->_foreach['foo']['iteration'] < 5) : ?>
            <dl>
              <dt class="xs-<?php echo $this->_foreach['foo']['iteration']; ?>"><?php echo $this->_var['help_cat']['cat_name']; ?></dt>
              <?php $_from = $this->_var['help_cat']['article'];
              if (!is_array($_from) && !is_object($_from)) {
                settype($_from, 'array');
              };
              $this->push_vars('', 'item');
              if (count($_from)) :
                foreach ($_from as $this->_var['item']) :
              ?>
                  <dd><a href="<?php echo $this->_var['item']['url']; ?>" target="_blank" title="<?php echo htmlspecialchars($this->_var['item']['title']); ?>"><?php echo $this->_var['item']['short_title']; ?></a></dd>
                  <?php endforeach;
              endif;
              unset($_from); ?><?php $this->pop_vars();; ?>
            </dl>
          <?php endif; ?>
          <?php endforeach;
      endif;
      unset($_from); ?><?php $this->pop_vars();; ?>
    </div>
  <?php endif; ?>
  <div class="info">
    <dl>
      <dt>
        <img width="17" height="13" src="themes/ecmoban_benlai2015/images/tel.gif">
        客服热线：13363819661（周一至周日 8:00-20:00）<br />
        地址：河北省石家庄市裕华区裕东小区72号<br />
        开户行：中国银行 银行账号：623575 5000000128234
      </dt>
      <?php if ($this->_var['navigator_list']['bottom']) : ?>
        <dd>
          <?php $_from = $this->_var['navigator_list']['bottom'];
          if (!is_array($_from) && !is_object($_from)) {
            settype($_from, 'array');
          };
          $this->push_vars('', 'nav_0_24137200_1609580044');
          $this->_foreach['nav_bottom_list'] = array('total' => count($_from), 'iteration' => 0);
          if ($this->_foreach['nav_bottom_list']['total'] > 0) :
            foreach ($_from as $this->_var['nav_0_24137200_1609580044']) :
              $this->_foreach['nav_bottom_list']['iteration']++;
          ?>
              <?php if ($this->_foreach['nav_bottom_list']['iteration'] < 7) : ?>
                <em <?php if (($this->_foreach['nav_bottom_list']['iteration'] == $this->_foreach['nav_bottom_list']['total'])) : ?>class="b0" <?php endif; ?>><a href="<?php echo $this->_var['nav_0_24137200_1609580044']['url']; ?>" <?php if ($this->_var['nav_0_24137200_1609580044']['opennew'] == 1) : ?> target="_blank" <?php endif; ?>><?php echo $this->_var['nav_0_24137200_1609580044']['name']; ?></a> </em>
              <?php endif; ?>
              <?php endforeach;
          endif;
          unset($_from); ?><?php $this->pop_vars();; ?>
        </dd>
      <?php endif; ?>
      <dd>
        <?php if ($this->_var['icp_number']) : ?>
          <?php echo $this->_var['lang']['icp_number']; ?>:<a href="https://beian.miit.gov.cn" target="_blank"><?php echo $this->_var['icp_number']; ?></a>
        <?php endif; ?>
      </dd>
      <dd>
        <?php echo $this->_var['copyright']; ?><br />
        <?php if ($this->_var['shop_address']) : ?>
          <?php echo $this->_var['shop_address']; ?> <br />
        <?php endif; ?>
        <?php if ($this->_var['shop_postcode']) : ?>
          <?php echo $this->_var['shop_postcode']; ?><br />
        <?php endif; ?>
      </dd>
      <!--<dd class="mt10">
            	<a href="https://ss.cnnic.cn/verifyseal.dll?sn=2010091900100002234&amp;pa=2940051" tabindex="-1" id="urlknet" target="_blank"><img width="128" height="47" alt="可信网站" name="CNNIC_seal" border="true" src="http://img4.ddimg.cn/00012/2010/knetSealLogo.png" oncontextmenu="return false;" onclick="CNNIC_change('urlknet')"> </a>
            </dd>-->
    </dl>
  </div>
</div>




<link href="ecmoban_qq/images/qq.css" rel="stylesheet" type="text/css" />
<div class="QQbox" id="divQQbox" style="width: 170px; ">
  <div class="Qlist" id="divOnline" onmouseout="hideMsgBox(event);" style="display: none; " onmouseover="OnlineOver();">
    <div class="t"></div>
    <div class="infobox">我们营业的时间<br>
      9:00-18:00</div>
    <div class="con">
      <ul>

        <?php $_from = $this->_var['qq'];
        if (!is_array($_from) && !is_object($_from)) {
          settype($_from, 'array');
        };
        $this->push_vars('', 'im');
        if (count($_from)) :
          foreach ($_from as $this->_var['im']) :
        ?>
            <?php if ($this->_var['im']) : ?>
              <li><a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=<?php echo $this->_var['im']; ?>&amp;Site=<?php echo $this->_var['shop_name']; ?>&amp;Menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:<?php echo $this->_var['im']; ?>:4" height="16" border="0" alt="QQ" /> <?php echo $this->_var['im']; ?></a> </li>
            <?php endif; ?>
            <?php endforeach;
        endif;
        unset($_from); ?><?php $this->pop_vars();; ?>
            <?php $_from = $this->_var['ww'];
            if (!is_array($_from) && !is_object($_from)) {
              settype($_from, 'array');
            };
            $this->push_vars('', 'im');
            if (count($_from)) :
              foreach ($_from as $this->_var['im']) :
            ?>
                <?php if ($this->_var['im']) : ?>
                  <li><a href="http://amos1.taobao.com/msg.ww?v=2&uid=<?php echo urlencode($this->_var['im']); ?>&s=2" target="_blank"><img src="http://amos1.taobao.com/online.ww?v=2&uid=<?php echo urlencode($this->_var['im']); ?>&s=2" width="16" height="16" border="0" alt="淘宝旺旺" /><?php echo $this->_var['im']; ?></a></li>
                <?php endif; ?>
                <?php endforeach;
            endif;
            unset($_from); ?><?php $this->pop_vars();; ?>
                <?php $_from = $this->_var['ym'];
                if (!is_array($_from) && !is_object($_from)) {
                  settype($_from, 'array');
                };
                $this->push_vars('', 'im');
                if (count($_from)) :
                  foreach ($_from as $this->_var['im']) :
                ?>
                    <?php if ($this->_var['im']) : ?>
                      <li><a href="http://edit.yahoo.com/config/send_webmesg?.target=<?php echo $this->_var['im']; ?>n&.src=pg" target="_blank"><img src="themes/ecmoban_benlai2015/images/yahoo.gif" width="18" height="17" border="0" alt="Yahoo Messenger" /> <?php echo $this->_var['im']; ?></a></li>
                    <?php endif; ?>
                    <?php endforeach;
                endif;
                unset($_from); ?><?php $this->pop_vars();; ?>
                    <?php $_from = $this->_var['msn'];
                    if (!is_array($_from) && !is_object($_from)) {
                      settype($_from, 'array');
                    };
                    $this->push_vars('', 'im');
                    if (count($_from)) :
                      foreach ($_from as $this->_var['im']) :
                    ?>
                        <?php if ($this->_var['im']) : ?>
                          <li><img src="themes/ecmoban_benlai2015/images/msn.gif" width="18" height="17" border="0" alt="MSN" /> <a href="msnim:chat?contact=<?php echo $this->_var['im']; ?>"><?php echo $this->_var['im']; ?></a></li>
                        <?php endif; ?>
                        <?php endforeach;
                    endif;
                    unset($_from); ?><?php $this->pop_vars();; ?>
                        <?php $_from = $this->_var['skype'];
                        if (!is_array($_from) && !is_object($_from)) {
                          settype($_from, 'array');
                        };
                        $this->push_vars('', 'im');
                        if (count($_from)) :
                          foreach ($_from as $this->_var['im']) :
                        ?>
                            <?php if ($this->_var['im']) : ?>
                              <li><img src="http://mystatus.skype.com/smallclassic/<?php echo urlencode($this->_var['im']); ?>" alt="Skype" /><a href="skype:<?php echo urlencode($this->_var['im']); ?>?call"><?php echo $this->_var['im']; ?></a></li>
                            <?php endif; ?>
                            <?php endforeach;
                        endif;
                        unset($_from); ?><?php $this->pop_vars();; ?>

                            <?php if ($this->_var['service_phone']) : ?>
                              <li> 服务热线: <?php echo $this->_var['service_phone']; ?></li>
                            <?php endif; ?>
      </ul>
    </div>
    <div class="b"></div>
  </div>
  <div id="divMenu" onmouseover="OnlineOver();" style="display: block; "><img src="ecmoban_qq/images/qq_1.gif" class="press" alt="在线咨询"></div>
</div>
<script type="text/javascript">
  //<![CDATA[
  var tips;
  var theTop = 120 /*这是默认高度,越大越往下*/ ;
  var old = theTop;

  function initFloatTips() {
    tips = document.getElementById('divQQbox');
    moveTips();
  };

  function moveTips() {
    var tt = 50;
    if (window.innerHeight) {
      pos = window.pageYOffset
    } else if (document.documentElement && document.documentElement.scrollTop) {
      pos = document.documentElement.scrollTop
    } else if (document.body) {
      pos = document.body.scrollTop;
    }
    pos = pos - tips.offsetTop + theTop;
    pos = tips.offsetTop + pos / 10;
    if (pos < theTop) pos = theTop;
    if (pos != old) {
      tips.style.top = pos + "px";
      tt = 10;
      //alert(tips.style.top);
    }
    old = pos;
    setTimeout(moveTips, tt);
  }
  //!]]>
  initFloatTips();

  function OnlineOver() {
    document.getElementById("divMenu").style.display = "none";
    document.getElementById("divOnline").style.display = "block";
    document.getElementById("divQQbox").style.width = "170px";
  }

  function OnlineOut() {
    document.getElementById("divMenu").style.display = "block";
    document.getElementById("divOnline").style.display = "none";
  }
  if (typeof(HTMLElement) != "undefined") //给firefox定义contains()方法，ie下不起作用
  {
    HTMLElement.prototype.contains = function(obj) {
      while (obj != null && typeof(obj.tagName) != "undefind") { //通过循环对比来判断是不是obj的父元素
        if (obj == this) return true;
        obj = obj.parentNode;
      }
      return false;
    };
  }

  function hideMsgBox(theEvent) { //theEvent用来传入事件，Firefox的方式
    if (theEvent) {
      var browser = navigator.userAgent; //取得浏览器属性
      if (browser.indexOf("Firefox") > 0) { //如果是Firefox
        if (document.getElementById('divOnline').contains(theEvent.relatedTarget)) { //如果是子元素
          return; //结束函式
        }
      }
      if (browser.indexOf("MSIE") > 0) { //如果是IE
        if (document.getElementById('divOnline').contains(event.toElement)) { //如果是子元素
          return; //结束函式
        }
      }
    }
    /*要执行的操作*/
    document.getElementById("divMenu").style.display = "block";
    document.getElementById("divOnline").style.display = "none";
  }
</script>