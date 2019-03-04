$(document).ready(function () {
	if ($(window).width() < 992) {
		let headerHeight = $('.pacific-header-1').innerHeight()
		$('.pacific-header-1 .main-nav .active').css({
			'top': $('.pacific-header-1').innerHeight() + 'px'
		})
		$('.pacific-header-1 .overlay.active').css({
			'top': $('.pacific-header-1').innerHeight() + 'px'
		})
	}
	$('.pacific-header-1 .menu-toggle').on('click', function () {
		$('.pacific-header-1 .menu').toggleClass('active')
		$('.pacific-header-1 .overlay').toggleClass('active')
		$('body').toggleClass('hidden')
		$('.pacific-header-1 .menu').css({
			'top': $('.pacific-header-1').innerHeight() + 'px'
		})
		$('.pacific-header-1 .overlay.active').css({
			'top': $('.pacific-header-1').innerHeight() + 'px'
		})
	})

	tabby.init();



	$('body').on('click', '.pacific-header-1 .cart-toggle', function () {
		$('.cartpanel').toggleClass('open')
	})

	$('body').on('click', '.pacific-header-1 .btn-closecart', function () {
		$('.cartpanel').removeClass('open')
	})

	$('.pacific-header-1 .overlay').on('click', function () {
		$('.pacific-header-1 .menu').removeClass('active')
		$(this).removeClass('active')
	})

	$('.side-menu .hassub').each(function () {
		$(this).click(function (e) {
			$(this).children('.submenu').slideToggle()
			$(this).children('.menu-toggle').toggleClass('active')
		});
	});
	$('.side-menu .hassub').each(function () {
		if ($(this).hasClass('active')) {
			$(this).children('.submenu').show()
			$(this).children('.menu-toggle').addClass('active')
		}
	});

	$('.quantity-control .lnr-chevron-down').on('click', function () {
		var val = $('.product-quantity').val()
		if (val > 0) {
			$('.product-quantity').val(val - 1)
		} else {
			$('.product-quantity').val(0)
		}
	})
	$('.quantity-control .lnr-chevron-up').on('click', function () {
		var val = Number($('.product-quantity').val())
		$('.product-quantity').val(val + 1)
	})

	$('.solution-list .solution-navigation h3').on('click', function () {
		if (window.innerWidth < 992) {
			$(this).siblings('ul').slideToggle(400)
		}
	})

	// $('.product-quantity').inputarrow({
	// 	renderPrev: function (input) {
	// 		return $('<span class="lnr-chevron-down"></span>').appendTo('.quantity-control');
	// 	},
	// 	renderNext: function (input) {
	// 		return $('<span class="lnr-chevron-up"></span>').insertAfter('.lnr-chevron-down');
	// 	},
	// 	min: 0,
	// 	step: 1,
	// 	interval: 5000,
	// 	gradientFactor: 1
	// });


	$(".pacific-warranty-2 .card-result").iziModal()
	$(document).on('click', '.pacific-warranty-2 .btn-check', function (event) {
		event.preventDefault();
		$('.card-result').iziModal('open');
	});
	$(document).on('click', '.card-result .card-close', function (event) {
		event.preventDefault();
		$('.card-result').iziModal('close');
	});


	if ($(window).width() < 768) {
		if (card_slider != null) {
			card_slider.destroy()
		}
	}
	let zero = 0
	$(window).on('scroll', function () {
		$('.pacific-header-1').toggleClass('hide', $(window).scrollTop() > zero)
		zero = $(window).scrollTop()
	})



	const top_nav = new MappingListener({
		selector: '.top-nav',
		mobileWrapper: ".mobile-top-nav",
		mobileMethod: "appendTo",
		desktopWrapper: ".menu",
		desktopMethod: "insertBefore",
		breakpoint: 992,
	}).watch();

	// const hotline = new MappingListener({
	// 	selector: '.hotline',
	// 	mobileWrapper: ".hotline-mobile",
	// 	mobileMethod: "appendTo",
	// 	desktopWrapper: ".searchbox",
	// 	desktopMethod: "insertAfter",
	// 	breakpoint: 992,
	// }).watch();

	const hotline_2 = new MappingListener({
		selector: '.hotline',
		mobileWrapper: ".hotline-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: ".Module-207",
		desktopMethod: "insertAfter",
		breakpoint: 992,
	}).watch();


	const viewedProductSlide = new Swiper('.viewed-product .swiper-container', {
		slidesPerView: 5,
		navigation: {
			nextEl: '.viewed-product .swiper-button-next',
			prevEl: '.viewed-product .swiper-button-prev',
		},
		spaceBetween: 20,
		breakpoints: {
			// when window width is <= 320px
			460: {
				slidesPerView: 1,
			},
			// when window width is <= 640px
			576: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			992: {
				slidesPerView: 3,
			},
			1200: {
				slidesPerView: 4,
			}
		}
	})

	const about_slider = new Swiper('.pacific-about-4 .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 20,
		loop: true,
		autoplay: true,
		navigation: {
			nextEl: '.pacific-about-4 .swiper-next',
			prevEl: '.pacific-about-4 .swiper-prev',
		},
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

	const partner_slider = new Swiper('.pacific-about-5 .swiper-container', {
		slidesPerView: 5,
		slidesPerColumn: 2,
		navigation: {
			nextEl: '.pacific-about-5 .swiper-next',
			prevEl: '.pacific-about-5 .swiper-prev',
		},
		breakpoints: {
			1200: {
				slidesPerView: 4
			},
			992: {
				slidesPerView: 3
			},
			768: {
				slidesPerView: 2
			},
			420: {
				slidesPerView: 1
			}
		}

	})

	const related_product = new Swiper('.product-detail-1 .swiper-container', {
		slidesPerView: 5,
		spaceBetween: 32,
		navigation: {
			nextEl: '.related-product .swiper-next',
			prevEl: '.related-product .swiper-prev',
		},
		breakpoints: {
			480: {
				slidesPerView: 1.5
			},
			576: {
				slidesPerView: 2.5
			},
			768: {
				slidesPerView: 2
			},
			992: {
				slidesPerView: 3
			}
		}
	})

	const home_product = new Swiper('.pacific-home-1 .swiper-container', {
		slidesPerView: 5,
		spaceBetween: 32,
		navigation: {
			nextEl: '.pacific-home-1 .swiper-next',
			prevEl: '.pacific-home-1 .swiper-prev',
		},
		breakpoints: {
			480: {
				slidesPerView: 1.5
			},
			576: {
				slidesPerView: 2.5
			},
			768: {
				slidesPerView: 2
			},
			992: {
				slidesPerView: 3
			}
		}
	})


	const home_banner = new Swiper('.pacific-home-banner .swiper-container', {
		slidesPerView: 1,
		loop: true,
		speed: 1500,
		autoplay: {
			delay: 4000
		},
		effect: 'cube',
		cubeEffect: {
			slideShadows: true,
			shadow: true
		},
		pagination: {
			el: '.pacific-home-banner .swiper-pagination',
			clickable: true
		},
	})

	const small_thumbnail = new Swiper('.pacific-product-1 .small-thumbnail', {
		slidesPerView: 3,
		freeMode: true,
		grabCursor: true,
		slideToClickedSlide: true
	})

	const big_thumbnail = new Swiper('.pacific-product-1 .big-thumbnail', {
		slidesPerView: 1,
		effect: 'fade',
		speed: 400,
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: small_thumbnail
		}
	})

	$("body").on("keydown", ".pacific-product-1 .form-search input", function (e) {
		if (e.keyCode == 13) {
			var searchTxt = $('.pacific-product-1 .form-search input').val();
			var url = window.location.href;
			if (searchTxt == '') {
				window.location = document.referrer
			} else {
				if (searchTxt && searchTxt.length && searchTxt != '' && url && url.length) {
					if (url.indexOf('?') > -1)
						window.location = url + '&keyword=' + decodeURIComponent(searchTxt);
					else
						window.location = url + '?keyword=' + decodeURIComponent(searchTxt);
				}
			}
			return false;
		}
	});

	minusQuantity()
	plusQuantity()
	toggleOtherAddress()
	sameInfo()
	toggleExportBill()
	choosePaymentMethod()
	refreshCart()
})


const minusQuantity = function () {
	$('.minus').each(function () {
		$(this).on('click', function () {
			let quantity = parseInt($(this).siblings('.quantity-number').attr('value'))
			if ($(this).siblings('.quantity-number').val() <= 0) {
				quantity = 0;
			} else {
				quantity = quantity - 1;
			}
			$(this).siblings('.quantity-number').attr('value', quantity)
		})
	})
}
const plusQuantity = function () {
	$('.plus').each(function () {
		$(this).on('click', function () {
			let quantity = parseInt($(this).siblings('.quantity-number').attr('value'))
			quantity = quantity + 1;
			$(this).siblings('.quantity-number').attr('value', quantity)
		})
	})
}
const toggleOtherAddress = function () {
	$('#btn-ttmh').click(function () {
		$(this).toggleClass('active')
		$('.checkout-address-edit .address-edit-other').slideToggle();
	})
}
const sameInfo = function () {
	$('#btn-cntt').click(function () {
		$(this).toggleClass('active')
	})
}
const toggleExportBill = function () {
	$('.checkout-address-edit .cart-bill-export #btn-xuathd').click(function () {
		$(this).toggleClass('active')
		$('.checkout-address-edit .cart-bill-info').slideToggle();
	})
}
const choosePaymentMethod = function () {
	$('.cart-payment-method .method label').click(function () {
		$(this).addClass('active')
		$(this).parent().siblings('.method').find('label').removeClass('active')
	})
}

const refreshCart = function () {
	$('.quantity.input-number .minus, .quantity.input-number .plus').click(function () {
		$(this).siblings('input').trigger('change')
	})
}