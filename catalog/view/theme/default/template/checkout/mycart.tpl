<div class="table-responsive">
  <table class="table table-unbordered" id='checkout-table'>
    <thead>
      <tr>
        <td class="text-left">Название товара</td>
        <td class="text-center">Количество</td>
        <td class="text-right">Цена</td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-left">
            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          </td>
          <td class="text-center">
            <input type="text" class='checkout-quantity' data-pack="<?php echo $product['pack']; ?>" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1">
          </td>
          <td class="text-right">
            <div class="total-cart-box">
              <span class='price-cart'><span class='price-in-cart'><?php echo $product['total']; ?> руб.</span></span>
              <span><a class="cart-btns ref-btns btn-refresh"><i class="material-icons">autorenew</i></a></span>
              <span><a class='cart-btns rem-btns' onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="material-icons">close</i></a></span>
            </div>
          </td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
<div class="checkout-total-box">
  <div class="total-quantity-box">
    <span>
      <span>Количество:</span>
      <span>
        <span class='total-quantity-value'><?php echo $totalcount; ?></span> шт.</span>
    </span>
  </div>
  <div class="total-quantity-box">
    <span>
      <span>Сумма:</span>
      <span>
        <span class='total-quantity-value'><?php echo $sum; ?></span> руб.</span>
    </span>
  </div>
</div>