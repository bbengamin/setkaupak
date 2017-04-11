<?php echo $header; ?>

<!--first-form-start-->
<div class="first-form-box box-item" id='frst-box'>
  <div class="container">
    <div class="row row-flex">
      <div class="text-first-box-wrap">
        <h1>оптовые продажи
        <span class='main-name'>овощной сетки</span>
        <span>по минимально низким ценам</span></h1>
      </div>
      <div class="form-first-box-wrap">
        <div class="form-box-wrap">
          <p>Получите оптовые цены на
          весь асортимент прямо сейчас</p>
          <form id="head-form">
            <div class="input-field">
              <input type='hidden' name='form_name' value='Получить оптовые цены' requared>
              <input type='text' name='name' placeholder='Ваше имя' requared>
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Ваш телефон' requared>
            </div>
            <div class="input-field">
              <button type='submit' id='head-form-submit' class='hover-btn'>Получить оптовые цены</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!--first-form-end-->
<!--products-start-->
<div class="container" id='our-products'>
  <div class="row">
      <div class="products-title-box">
        <h2>Наша продукция
          <span class='gorizontal-separate'></span>
          <span class='gorizontal-separate'></span>
        </h2>
        <p>Сетки для овощей, фруктов, дров и вспомогательной продукции</p>
        
      </div>
      <div class="product-main-box clearfix">
        <div class="row">
        <?php foreach($categories as $category) { ?>
          <div class="produt-slide-box col-sm-4">
            <div class="product-carousel-box owl-carousel">
              <?php foreach($category['products'] as $product) { ?>
                <div class="product-layout">
                  <div class="product-thumb">
                    <div class="imaage-box">
                      <img src='<?php echo $product["thumb"]; ?>' class='img-responsive' alt='<?php echo $product["name"]; ?>'>
                    </div>
                    <h3 class='product-name-box'>
                      <a><?php echo $product['name']; ?></a>
                    </h3>
                    <div class="parametrs-box">
                      <ul class="parametrs-box-inner">
                        <?php foreach($product['attribute_groups'] as $attribute_group) { ?>
                          <?php foreach($attribute_group['attribute'] as $attribute) { ?>
                            <li><span class="bolder"><?php echo $attribute["name"]; ?>: </span><span class='paramets-thin'><?php echo $attribute["text"]; ?></span></li>
                          <?php } ?>
                        <?php } ?>
                      </ul>
                    </div>
                    <div class="price-box">
                      <p class='main-price'>
                        <span class='price-name'>цена:</span>
                        <span class="price-value"><?php echo $product["price"]; ?></span>
                        руб. за 
                        <span class="quanty-value"><?php echo $product["minimum"]; ?></span> шт.
                      </p>
                    </div>
                    <div class="button-box">
                      <div class="quanty-product-box">
                        <span>количество</span>
                        <input data-pack='<?php echo $product["minimum"]; ?>' value='<?php echo $product["minimum"]; ?>' type='text' class='quanty_text' name='quanty_text'>
                      </div>
                      <div class="buy-buttons">
                        <a class='add-to-cart-btn hover-btn' data-id='<?php echo $product["product_id"]; ?>' id='cart-add'><i class='btn-icon btn-icon-cart'></i>Добавить в корзину</a>
                        <a data-id='<?php echo $product["product_id"]; ?>' class='quick-buy-btn hover-btn'><i class='btn-icon btn-icon-quick'></i>Быстрый заказ</a>
                      </div>
                    </div>
                  </div>
                </div>
              <?php } ?>
            </div>
          </div>
        <?php } ?>
      </div>
      <div class="take-all-price-box">
        <a href='#' data-toggle="modal" data-target="#myModal-price" class='hover-btn'>Заказать прайс-лист всей продукции</a>
      </div>
      
    </div>
  </div>
</div>
<!--products-end-->

<!--special-start-->
<div class="special-wrap">
  <div class="container" id='specials'>
    <div class="row">
      <div class="special-box">
        <h2>Акция!</h2>
        <h4>Получи бесплатный образец уже завтра</h4>
        <div class="form-box-wrap">
            <p>Оставить заявку на получение бесплатного образца</p>
            <form id="special-form">
              <div class="input-field">
                <input type='hidden' name='form_name' value='Получить бесплатный образец сетки' requared>
                <input type='text' name='name' placeholder='Ваше имя' requared>
              </div>
              <div class="input-field">
                <input type='tel' name='phone' placeholder='Ваш телефон' requared>
              </div>
              <div class="input-field">
                <button type='submit' id='special-form-submit' class='hover-btn'>Получить бесплатный образец сетки</button>
              </div>
            </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!--special-end-->


<!--sertificates -start-->
<div class="serftificat-wrap">
  <div class="container" id='sertificates'>
    <div class="row">
      <h2 class='single-heading'>Сертификаты качества</h2>
      <div class="sertificates-box">
        <div class="sertificates-carousel-box owl-carousel">
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat1.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat1.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat2.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat2.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat3.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat3.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat4.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat4.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat1.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat1.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat2.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat2.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat3.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat3.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
          <div class="sertificat-item">
            <a href='/catalog/view/theme/default/image/serificat4.jpg' data-fancybox data-caption="Сертификаты">
              <img src='/catalog/view/theme/default/image/serificat4.jpg' class='img-responsive' alt='alt'>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--sertificates-end-->




<!--delivery-start-->
<div class="delivery-wrap">
  <div class="container" id='delivery'>
    <div class="row">
      <div class="products-title-box">
        <h2>Доставка товаров по РФ</h2>
        <span class='gorizontal-separate'></span>
        <span class='gorizontal-separate'></span>
      </div>
      <div class="delivery-box clearfix">
        <div class="col-sm-5 russia-map-box">
          <img src='/catalog/view/theme/default/image/russia-map.png' class='img-responsive' alt='alt'>
        </div>
        <div class="col-sm-7 delivery-text-box">
          <ul class="list-unstyled">
            <li><span class="bolder-delivery-text">Москва:</span> Доставка по Москве сеток 2300 руб.</li>
            <li><span class="bolder-delivery-text">Мос. обл:</span> По договоренности</li>
            <li><span class="bolder-delivery-text">По России:</span> Доставка по России производиться через транспортные компании (при помощи Вашей транспортной компании или Вы сможете воспользоваться услугами наших транспортных партнеров)</li>
            <li>Доставка  сеток на сумму от 180 000 рублей по Москве в пределах МКАД в одну точку – бесплатно!</li>
            <li>Доставка сеток на сумму от 180 000 рублей за пределами МКАД –   20 рублей за 1 км (от МКАД) в одну сторону.</li>
            <li>При желании Вы можете забрать товар из нашего офиса сами. После обработки заказа наш менеджер свяжется с Вами и уточнит время.</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--delivery-end-->

<!--varranty-start-->
<div class="varanty-box" id='warranties'>
  <div class="container">
    <div class="row">
      <h2 class='single-heading'>Наши 100% гарантии</h2>
      <div class="varanty-innwe-box">
        <div class="varanty-item">
          <img src='/catalog/view/theme/default/image/warranty1.png' class='img-responsive' alt='alt'>
          <h4>Гарантия качества</h4>
          <p>Гарантия качества
          от ООО «СельхозТара»</p>
        </div>
        
        <div class="varanty-item">
          <img src='/catalog/view/theme/default/image/warranty2.png' class='img-responsive' alt='alt'>
          <h4>Сертификаты</h4>
          <p>Весь товар сертифицирован</p>
        </div>
        
        <div class="varanty-item">
          <img src='/catalog/view/theme/default/image/warranty3.png' class='img-responsive' alt='alt'>
          <h4>Качество продукции</h4>
          <p>Вся овощная сетка обработана ультрафиолетом,
          что позволяет сохранить цвет и прочность упаковки</p>
        </div>
        
        <div class="varanty-item">
          <img src='/catalog/view/theme/default/image/warranty4.png' class='img-responsive' alt='alt'>
          <h4>Сроки доставки</h4>
          <p>Гарантия сроков доставки, мы соблюдаем 
          сроки указанные в договоре</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!--varanty-end-->

<!--reviews-start-->
<div class="reviews-wrap" id='reviews'>
  <div class="container">
      <div class="row">
        <div class="products-title-box">
          <h2>Отзывы наших клиентов</h2>
          <span class='gorizontal-separate'></span>
          <span class='gorizontal-separate'></span>
        </div>
         <?php echo $content_top; ?>
    </div>
  </div>
</div>
<!--reviews-end-->

<!--has questions start-->
<div class="has-questions-wrap">
  <div class="container" id=''>
    <div class="row">
      <div class="special-box">
        <h2>У вас остались вопросы</h2>
        <h4>Оставьте заявку или наберите нас по телефону
        и получите подробнейшую консультацию</h4>
        <div class="form-box-wrap">
            <p>Оставьте ваши контактные данные и наш консультант свяжется с вами</p>
            <form id="questions-form">
              <div class="input-field">
                <input type='hidden' name='form_name' value='Получить консультацию' requared>
                <input type='text' name='name' placeholder='Ваше имя' requared>
              </div>
              <div class="input-field">
                <input type='email' name='email' placeholder='Ваш e-mail' requared>
              </div>
              <div class="input-field">
                <input type='tel' name='phone' placeholder='Ваш телефон' requared>
              </div>
              <div class="input-field">
                <button type='submit' id='questions-form-submit' class='hover-btn'>Получить консультацию</button>
              </div>
            </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!--has questions end-->

<!--contact-start-->
<div class="map-wrap" id='contacts'>
  <div id="map">
    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A41a3cecd480cd93677f74ee3f2405352b8dc8bdca7f7c9df11a6ef1ad1071b04&amp;width=100%25&amp;height=100%&amp;lang=ru_UA&amp;scroll=false"></script>
  </div>
  <div class="container">
    <div class="row">
      <div class="contact-box-inner clearfix">
        <div class="col-sm-5">
          <div class="contact-text-box">
            <div class="contact-item">
              <p>
                <span>ООО "МосУпак" ОГРН: 1127746074576 </span>
                <span>Телефон: +7 (495) 565-38-48 многоканальный</span>
                <span>Почта: lady.setkatorg@yandex.ru</span>
                <span>Адрес: 115201, РФ, г. Москва, Старокаширское шоссе, </span>
                <span>дом 2, корпус 4, этаж 1, помещение II</span>
              </p>
              <p>
                <span>График работы:</span>
                <span>Пн, Вт,Ср,Чт,Пт с 9:00 до 18:00</span>
                <span>Суббота, Воскресенье: выходной</span>
              </p>
            </div>
            <div class="contact-item">
              <h4>Обратная связь</h4>
              <form id="footer-form">
                <div class="input-box">
                  <div class="input-field">
                    <input type='hidden' name='form_name' value='Обратная связь' requared>
                    <input type='text' name='name' placeholder='Ваше имя' requared>
                  </div>
                  <div class="input-field">
                    <input type='email' name='email' placeholder='Ваш e-mail' requared>
                  </div>
                </div>
                <div class="input-field">
                  <textarea name='comment' placeholder='Текст сообщения'></textarea>
                </div>
                <div class="input-field">
                  <button type='submit' id='footer-form-submit' class='hover-btn'>Отправить сообщение</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--contact-end-->



<script type="text/javascript">
  $('.product-carousel-box').owlCarousel({
  	items: 6,
  	autoPlay: false,
  	singleItem: true,
  	navigation: true,
  	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
  	pagination: false
  });
</script>
<script type="text/javascript">
  $('.sertificates-carousel-box').owlCarousel({
  	items: 4,
  	autoPlay: false,
  	singleItem: false,
  	navigation: true,
  	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
  	pagination: false
  });
</script>
<script type="text/javascript">
  $('.reviews-carousel-box').owlCarousel({
  	items: 2,
  	autoPlay: false,
  	singleItem: false,
  	navigation: true,
  	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
  	pagination: false
  });
</script>
<?php echo $footer; ?>