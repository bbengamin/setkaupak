
			<?php if (isset ($ya_metrika_active) && $ya_metrika_active){ ?>
				<?php echo $yandex_metrika; ?>
				<script type="text/javascript">
					var old_addCart = cart.add;
					cart.add = function (product_id, quantity)
					{
						var params_cart = new Array();
						params_cart['name'] = 'product id = '+product_id;
						params_cart['quantity'] = quantity;
						params_cart['price'] = 0;
						old_addCart(product_id, quantity);
						metrikaReach('metrikaCart', params_cart);
					}

					$('#button-cart').on('click', function() {
						var params_cart = new Array();
						params_cart['name'] = 'product id = '+ $('#product input[name="product_id"]').val();
						params_cart['quantity'] = $('#product input[name="quantity"]').val();
						params_cart['price'] = 0;
						metrikaReach('metrikaCart', params_cart);
					});

					function metrikaReach(goal_name, params) {
					for (var i in window) {
						if (/^yaCounter\d+/.test(i)) {
							window[i].reachGoal(goal_name, params);
						}
					}
				}
				</script>
			<?php } ?>
			<footer>
			
  <div class="container">
    <div class="row">
      <div class="footer-inner-box">
        <div class="footer-menu-box">
          <ul class="main-menu-box list-unstyled nav-links-scroll">
          <li><a href='#home'>Главная</a></li>
          <li><a href='#our-products'>Продукция</a></li>
          <li><a href='#sertificates'>Сертификаты</a></li>
          <li><a href='#delivery'>Доставка по РФ</a></li>
          <li><a href='#warranties'>Гарантии</a></li>
          <li><a href='#frst-box'>Скидки</a></li>
          <li><a href='#reviews'>Отзывы клиентов</a></li>
          <li><a href='#contacts'>Контакты</a></li>
        </ul>
        </div>
        <div class="footer-info-box">
          
          <div class="footer-info-item footer-designer-box">
            <h3>Контактная информация:</h3>
            <div class="new-contact-box-wrap">
              <div class="new-contact-box">
                <span><?php echo $config_comment; ?></span>
                <span>Телефон: <?php echo $telephone; ?> многоканальный </span>
                <span>Почта: <?php echo $config_email; ?> </span>
              </div>
              <div class="new-contact-box">
                <span><?php echo $config_address; ?></span>
                <span>График работы:</span>
                <span><?php echo $config_open; ?></span>
              </div>
            </div>
          </div>
          
          <div class="footer-info-item footer-logo-box">
            <a href='/'>
              <img src='/catalog/view/theme/default/image/footer-logo.png' class='img-responsive' alt='alt'>
            </a>
            <span>Copyright - SetkaUpack оптовая продажа сеток</span>
          </div>
          
          <div class="footer-info-item footer-payment-box">
            <img src='/catalog/view/theme/default/image/footer-pays.png' class='img-responsive' alt='alt'>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</footer>


<!-- Modal Callback -->
<div id="myModal-callback" class="modal fade no-full-width" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
        <h3>Заказать бесплатный звонок</h3>
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <form id="call-back-form">
          <div class="input-field">
            <input type='hidden' name='form_name' value='Бесплатный звонок' requared>
            <input type='text' name='name' placeholder='Ваше имя' requared>
          </div>
          <div class="input-field">
            <input type='tel' name='phone' placeholder='Ваше телефон' requared>
          </div>
          <div class="input-field">
            <button type='submit' id='call-back-form-submit' class='hover-btn'>Заказать звонок</button>
          </div>
        </form>
        <h3 class='thanks-text'>Спасибо за зявку, мы с Вами свяжемся в близжайшее время</h3>
      </div>
    </div>
  </div>
</div>

<div id="myModal-price" class="modal fade no-full-width" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
        <h3>Заказать прайс-лист всей продукции</h3>
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <form id="price-form">
          <div class="input-field">
            <input type='hidden' name='form_name' value='Заказать прайс-лист всей продукции' requared>
            <input type='text' name='name' placeholder='Ваше имя' requared>
          </div>
          <div class="input-field">
            <input type='tel' name='phone' placeholder='Ваш телефон' requared>
          </div>
           <div class="input-field">
            <input type='email' name='email' placeholder='Ваш email' requared>
          </div>
          <div class="input-field">
            <button type='submit' id='call-back-form-submit' class='hover-btn'>Получить прайс</button>
          </div>
        </form>
        <h3 class='thanks-text'>Спасибо за зявку, мы с Вами свяжемся в близжайшее время</h3>
      </div>
    </div>
  </div>
</div>

<!-- Modal Callback -->
<div id="myModal-quick" class="modal fade no-full-width" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
       <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
          <form id="quick-form">
            <h3>Быстрый заказ товара</h3>
            <p id='name-of-quick-product'>asdasd</p>
            <div class="input-field">
              <input type='hidden' name='product' >
              <input type='hidden' name='payment' value='cod'>
              <input type='text' name='name' placeholder='Ваше имя' requared>
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Ваш телефон' requared>
            </div>
            <div class="input-field">
              <input type='text' name='address' placeholder='Адрес доставки' requared>
            </div>
            <div class="input-field">
              <button type='submit' id='quick-form-submit'>Заказать товар</button>
            </div>
          </form>
          <h3 class='thanks-text'>Спасибо за заказ, мы с Вами свяжемся в близжайшее время</h3>
        </div>
    </div>

  </div>
</div>

<!-- Modal Callback -->
<div id="myModal-checkout" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
       <div class="modal-body" >
         
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h3>Корзина заказа</h3>
        <form id="checkout-form">
          <div class="checkout-line-of-items">
            <h3 class="checkout-titles">
              Данные пользователя
            </h3>
            <div class="input-field-line">
              <div class="input-field">
                <input type='text' name='name' placeholder='Ваше имя и фамилия' requared>
              </div>
              <div class="input-field">
                <input type='email' name='email' placeholder='Ваш e-mail' requared>
              </div>
              <div class="input-field">
                <input type='text' name='company' placeholder='Компания или ИП' requared>
              </div>
            </div>
          </div>
          
          <div class="checkout-line-of-items">
            <h3 class="checkout-titles">
              Данные доставки
            </h3>
            <div class="input-field-line">
              <div class="input-field">
                <input type='text' name='city' placeholder='Город' requared>
              </div>
              <div class="input-field">
                <input type='text' name='address' placeholder='Адрес' requared>
              </div>
              <div class="input-field">
                <input type='tel' name='phone' placeholder='Телефон' requared>
              </div>
            </div>
          </div>
          
          <div class="checkout-line-of-items">
            <h3 class="checkout-titles">
              Способ оплаты
            </h3>
            <div class="payment-items-line">
              <ul class="list-unstyled">
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym10' value='cod' id='cod-pay'>
                    <label for='cod-pay'>
                      <img src='/image/yandexmoney/cod.png' alt='COD' class='img-responsive'>
                    </label>
                  </div>
                </li>
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym10' value='bank_transfer' id='bank-pay'>
                    <label for='bank-pay'>
                      <img src='/image/yandexmoney/bank.png' alt='BANK' class='img-responsive'>
                    </label>
                  </div>
              <!--  </li>
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym10' value='yamodule' id='qiwi-pay'>
                    <label for='qiwi-pay'>
                      <img src='/catalog/view/theme/default/image/pf1.png' alt='QIWI' class='img-responsive'>
                    </label>
                  </div>
                </li>
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym5' value='yamodule' id='webmoney-pay'>
                    <label for='webmoney-pay'>
                      <img src='/catalog/view/theme/default/image/pf2.png' alt='WebMoney' class='img-responsive'>
                    </label>
                  </div>
                </li> -->
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym1' value='yamodule' id='yad-pay'>
                    <label for='yad-pay'>
                      <img src='/catalog/view/theme/default/image/pf3.png' alt='ЯндексДеньги' class='img-responsive'>
                    </label>
                  </div>
                </li>
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym2' value='yamodule' id='visa-pay'>
                    <label for='visa-pay'>
                      <img src='/catalog/view/theme/default/image/pf4.png' alt='VISA' class='img-responsive'>
                    </label>
                  </div>
                </li>
                <li>
                  <div class="payment-item-wrap">
                    <input type='radio' name='payment' data-value='ym2' value='yamodule' id='mc-pay'>
                    <label for='mc-pay'>
                      <img src='/catalog/view/theme/default/image/pf5.png' alt='MasterCard' class='img-responsive'>
                    </label>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div id='checkout-modal-body'>
            
            </div>
            <div class="checkout-butons-box">
              <a class='get-check hover-btn'>Отправить заказ</a>
              <a class='go-shopping hover-btn' data-dismiss="modal">Продолжить покупки</a>
            </div>
            <div id='payment' style='display: none;'></div>
        </form>

        </div>
    </div>

  </div>
</div>

<!-- Modal thsnks -->
<div id="myModal-thsnks" class="modal fade no-full-width" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h3 class='thanks-text2'>Спасибо за зявку, мы с Вами свяжемся в близжайшее время</h3>
      </div>
    </div>
  </div>
</div>


<div id='up-btn'>
  <i class="material-icons">keyboard_arrow_up</i>
</div>
<div class="animate animate-tomato_1 rorate-left">
  <img src='/catalog/view/theme/default/image/tomato111-animate.png' alt='alt'>
</div>
<!--<div class="animate animate-tomato_2 rorate-right">
  <img src='/catalog/view/theme/default/image/tomato11-animate.png' alt='alt'>
</div>
<div class="animate animate-tomato_3 rorate-left">
  <img src='/catalog/view/theme/default/image/tomato1-animate.png' alt='alt'>
</div>-->
<div class="animate animate-tomato_4 rorate-left">
  <img src='/catalog/view/theme/default/image/tomato2-animate.png' alt='alt'>
</div>
<!--
<div class="animate animate-potato_1 rorate-left">
  <img src='/catalog/view/theme/default/image/potato-animate.png' alt='alt'>
</div>
<div class="animate animate-potato_2 rorate-right">
    <img src='/catalog/view/theme/default/image/potato1-animate.png' alt='alt'>
</div>

<div class="animate animate-onien_1 rorate-left">
    <img src='/catalog/view/theme/default/image/onien-animate.png' alt='alt'>
</div>
</div>

<div class="animate animate-carrot_1 rorate-right">
  <img src='/catalog/view/theme/default/image/carrot-animate.png' alt='alt'>

<div class="animate animate-cabages rorate-left">
  <img src='/catalog/view/theme/default/image/cabages-animate.png' alt='alt'>
</div>

<div class="animate animate-cabage_1 rorate-right">
  <img src='/catalog/view/theme/default/image/cabage-animate.png' alt='alt'>
</div> -->
<div class="animate animate-cabage_2 rorate-left">
  <img src='/catalog/view/theme/default/image/cabage2-animate.png' alt='alt'>
</div>

<div class="animate animate-blues_1 rorate-right">
  <img src='/catalog/view/theme/default/image/blues1-animate.png' alt='alt'>
</div>
<div class="animate animate-blues_2 rorate-right">
  <img src='/catalog/view/theme/default/image/blues1-animate.png' alt='alt'>
</div>
<a class='mega-call' href='tel:+74955653848'>
  <i class="material-icons">phone</i>
</a>
</body></html> 