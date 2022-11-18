<?php if ($this->_var['hot_goods']) : ?>
  <?php if ($this->_var['cat_rec_sign'] != 1) : ?>
    <div class="xm-box">
      <div class="title"><span class="floor-icon"><i></i><b></b></span>
        <h2>富硒粮油</h2>
        <a class="more" href="search.php?intro=hot">更多</a>
      </div>
      <div id="show_hot_area" class="clearfix xm-boxs">
      <?php endif; ?>
      <?php $_from = $this->_var['hot_goods'];
      if (!is_array($_from) && !is_object($_from)) {
        settype($_from, 'array');
      };
      $this->push_vars('', 'goods_0_49177200_1574401360');
      if (count($_from)) :
        foreach ($_from as $this->_var['goods_0_49177200_1574401360']) :
      ?>
          <div class="goodsItem goodsItems"> <a href="<?php echo $this->_var['goods_0_49177200_1574401360']['url']; ?>"><img src="<?php echo $this->_var['goods_0_49177200_1574401360']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_49177200_1574401360']['name']); ?>" class="goodsimg" /></a><br />
            <p class="f1"><a href="<?php echo $this->_var['goods_0_49177200_1574401360']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_49177200_1574401360']['name']); ?>"><?php echo $this->_var['goods_0_49177200_1574401360']['short_style_name']; ?></a></p>
            <p class="">市场价：<font class="market"><?php echo $this->_var['goods_0_49177200_1574401360']['market_price']; ?></font> <br />
              本店价：<font class="f1">
                <?php if ($this->_var['goods_0_49177200_1574401360']['promote_price'] != "") : ?>
                  <?php echo $this->_var['goods_0_49177200_1574401360']['promote_price']; ?>
                <?php else : ?>
                  <?php echo $this->_var['goods_0_49177200_1574401360']['shop_price']; ?>
                <?php endif; ?>
              </font>
            </p>
          </div>
          <?php endforeach;
      endif;
      unset($_from); ?><?php $this->pop_vars();; ?>

          <?php if ($this->_var['cat_rec_sign'] != 1) : ?>
      </div>
    </div>
    <div class="blank"></div>
  <?php endif; ?>
<?php endif; ?>