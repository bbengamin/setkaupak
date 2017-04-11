$(window).on('load', function () {
    var $preloader = $('#page-preloader'),
        $spinner   = $preloader.find('.spinner');
    $spinner.fadeOut();
    $preloader.delay(350).fadeOut('slow');
});

function getURLVar(key) {
	var value = [];

	var query = String(document.location).split('?');

	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');

			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}

		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

$(document).ready(function() {
	
	$(document).on('submit', '#call-back-form, #head-form, #special-form, #questions-form, #footer-form, #price-form', function(e) {
		e.preventDefault();
		
		$('.error').detach();
		
		$form = $(this);
		
	    $.ajax({
			url: 'index.php?route=common/ajax/callback',
			type: 'post',
			data: $form.find('input, textarea'),
			dataType: 'json',
			success: function(json) {
				if (json['error']) {
					$.each(json['error'], function(key, val) {
						$form.find('[name="' + key + '"]').after('<span class="error">' + val + '</span>');
                    });
				}
				if (json['success']) {
					$form[0].reset();
					$form.parents('.modal').modal('hide');
					$('#myModal-thsnks').modal('show');
					setTimeout(function(){
						$('#myModal-thsnks').modal('hide');
					},3000);
				}
			}
		});
		
		return false;	
	});
	
	$(document).on('click', '.btn-refresh', function(e) {
		e.preventDefault();
		$('#checkout-modal-body').addClass('loading');
	    $.ajax({
			url: 'index.php?route=common/ajax/edit',
			type: 'post',
			data: $('#checkout-table input'),
			dataType: 'json',
			success: function(json) {
				$('#cart-total').text(json['total']);
				setTimeout(function () {
					$('#checkout-modal-body').load('index.php?route=common/ajax/myCart',function() {
					    $('#checkout-modal-body').removeClass('loading');
					});
				}, 100);
			}
		});
		return false;
	});
	
	$(document).on('click', '.get-check', function(e) {
		e.preventDefault();
		$('.error').detach();
	    $.ajax({
			url: 'index.php?route=common/ajax/fastOrder',
			type: 'post',
			data: $('#checkout-form input[type="text"], #checkout-form input[type="tel"] , #checkout-form input[type="email"], #checkout-form input[type="radio"]:checked'),
			dataType: 'json',
			success: function(json) {
				if (json['error']) {
					$.each(json['error'], function(key, val) {
						if(key != 'payment'){
                        	$('#checkout-form input[name="' + key + '"]').after('<span class="error">' + val + '</span>');
						} else {
							$('.payment-items-line ul').after('<span class="error">' + val + '</span>');
						}
                    });
				}
				if (json['success']) {
					$.ajax({
						url: 'index.php?route=common/ajax/getPaymentFrom',
						data: $('#checkout-form input[name="payment"]:checked'),
						type: 'post',
						dataType: 'json',
						success: function(json) {
							$('#payment').html(json['output']);
							if($('#checkout-form input[name="payment"]:checked').val() == "yamodule"){
								var pay = $('input[name="payment"]:checked').attr('data-value');
								$('#' + pay).prop('checked', true);
								$('#paymentForm').submit();
							}else{
								$('#button-confirm').trigger('click');
							}
						}
					});
				}
			}
		});
		
		return false;	
	});
	$('.quick-buy-btn').on('click',function(e) {
	    e.preventDefault();
	    
    	var $parent = $(this).parents().filter('.product-layout');
		var $name = $parent.find('.product-name-box a');
		$('#name-of-quick-product').text($name.text());
		
		$('#quick-form input[name="product"]').val($(this).attr('data-id'));
		
		$('#quick-form').show();
		$('#quick-form').next().hide();
		
	    $('#myModal-quick').modal("show");
	    
	    return false;
	});
	
	$('#quick-form').on('submit',function(e) {
		e.preventDefault();
	    $.ajax({
			url: 'index.php?route=common/ajax/fastOrder',
			type: 'post',
			data: $('#quick-form input'),
			dataType: 'json',
			success: function(json) {
				if (json['error']) {
					$.each(json['error'], function(key, val) {
						$form.find('[name="' + key + '"]').after('<span class="error">' + val + '</span>');
                    });
				}
				if (json['success']) {
					$('#cart-total').text(json['total']);
					$('#quick-form').hide();
					$('#quick-form').next().show();
				}
			}
		});
		return false;
	});
	
	$('#up-btn').on('click', function(e) {
	    e.preventDefault();
	    
	    $('html, body').animate({ scrollTop: 0 }, 'slow');
	    
	    return false;
	})
	
	$.stellar({
		horizontalScrolling: false,
		verticalOffset: 40
	});
	
	$('.nav-links-scroll a').on('click', function(e) {
	    e.preventDefault();
	    
	    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top }, 'slow');
	    
	    return false;
	});
	
	$(document).on('focus', '.checkout-quantity, .quanty_text', function() {
	   $(this).select();
	});
	
	$(document).on('keydown', '.checkout-quantity, .quanty_text', function(e) {
	    if (e.which == 9) {
	        e.preventDefault();
	        $(this).trigger('change');
	        return false;
	    }
	});

	$(document).on('change' , '.checkout-quantity, .quanty_text', function(e) {
		e.preventDefault();
		var pack = parseInt($(this).attr('data-pack'));
		var value = parseInt($(this).val());
		
		var newValue = (Math.ceil(value/pack) * pack);
		if(newValue == 0){
			newValue = pack;
		}
		$(this).val(newValue);
		return false;
	});
	
	
	$('#cart').on('click',function(){
		$('#checkout-modal-body').load('index.php?route=common/ajax/myCart', function(){
			$('#myModal-checkout').modal('show');
		});
	});
	
	$('.add-to-cart-btn').on('click',function(){
		var product_id = $(this).attr('data-id');
		
		var $parent = $(this).parents().filter('.product-layout');
		var $input = $parent.find('.quanty_text');
		
		var pack = parseInt($input.attr('data-pack'));
		var value = parseInt($input.val());
		var quantity = value/pack;
	
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: 'product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			success: function(json) {
			
				if (json['success']) {
					$('#cart-total').text(json['total']);
					$('#checkout-modal-body').load('index.php?route=common/ajax/myCart', function(){
						$('#myModal-checkout').modal('show');
					});
				}
			}
		});
	});
	
});

// Cart add remove functions
var cart = {
	'remove': function(key) {
		$('#checkout-modal-body').addClass('loading');
		$.ajax({
			url: 'index.php?route=common/ajax/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			success: function(json) {
				$('#cart-total').text(json['total']);
				$('#checkout-modal-body').load('index.php?route=common/ajax/myCart',function() {
				    $('#checkout-modal-body').removeClass('loading');
				});
			}
		});
	}
}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
	e.preventDefault();

	$('#modal-agree').remove();

	var element = this;

	$.ajax({
		url: $(element).attr('href'),
		type: 'get',
		dataType: 'html',
		success: function(data) {
			html  = '<div id="modal-agree" class="modal">';
			html += '  <div class="modal-dialog">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">';
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
			html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';

			$('body').append(html);

			$('#modal-agree').modal('show');
		}
	});
});

// Autocomplete */
(function($) {
	$.fn.autocomplete = function(option) {
		return this.each(function() {
			this.timer = null;
			this.items = new Array();

			$.extend(this, option);

			$(this).attr('autocomplete', 'off');

			// Focus
			$(this).on('focus', function() {
				this.request();
			});

			// Blur
			$(this).on('blur', function() {
				setTimeout(function(object) {
					object.hide();
				}, 200, this);
			});

			// Keydown
			$(this).on('keydown', function(event) {
				switch(event.keyCode) {
					case 27: // escape
						this.hide();
						break;
					default:
						this.request();
						break;
				}
			});

			// Click
			this.click = function(event) {
				event.preventDefault();

				value = $(event.target).parent().attr('data-value');

				if (value && this.items[value]) {
					this.select(this.items[value]);
				}
			}

			// Show
			this.show = function() {
				var pos = $(this).position();

				$(this).siblings('ul.dropdown-menu').css({
					top: pos.top + $(this).outerHeight(),
					left: pos.left
				});

				$(this).siblings('ul.dropdown-menu').show();
			}

			// Hide
			this.hide = function() {
				$(this).siblings('ul.dropdown-menu').hide();
			}

			// Request
			this.request = function() {
				clearTimeout(this.timer);

				this.timer = setTimeout(function(object) {
					object.source($(object).val(), $.proxy(object.response, object));
				}, 200, this);
			}

			// Response
			this.response = function(json) {
				html = '';

				if (json.length) {
					for (i = 0; i < json.length; i++) {
						this.items[json[i]['value']] = json[i];
					}

					for (i = 0; i < json.length; i++) {
						if (!json[i]['category']) {
							html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
						}
					}

					// Get all the ones with a categories
					var category = new Array();

					for (i = 0; i < json.length; i++) {
						if (json[i]['category']) {
							if (!category[json[i]['category']]) {
								category[json[i]['category']] = new Array();
								category[json[i]['category']]['name'] = json[i]['category'];
								category[json[i]['category']]['item'] = new Array();
							}

							category[json[i]['category']]['item'].push(json[i]);
						}
					}

					for (i in category) {
						html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

						for (j = 0; j < category[i]['item'].length; j++) {
							html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
						}
					}
				}

				if (html) {
					this.show();
				} else {
					this.hide();
				}

				$(this).siblings('ul.dropdown-menu').html(html);
			}

			$(this).after('<ul class="dropdown-menu"></ul>');
			$(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));

		});
	}
})(window.jQuery);

//mob-menu
function openNav() {
    document.getElementById("mySidenav").style.left = "0";
     document.getElementById("mob-overlay").style.left = "0";
}

function closeNav() {
    document.getElementById("mySidenav").style.left = "-9999px";
      document.getElementById("mob-overlay").style.left = "-9999px";
}

