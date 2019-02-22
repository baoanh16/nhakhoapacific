<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="pacific-product-1">
			<article class="product-detail-1">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="big-thumbnail swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbnail"></xsl:apply-templates>
								</div>
							</div>
							<div class="small-thumbnail swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Image"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<h2>
								<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								<xsl:value-of select='/ProductDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
							</h2>
							<div class="briefcontent">
								<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping='yes'></xsl:value-of>
							</div>
							<div class="addcart-wrapper">
								<div class="quantity">
									<label for="">Số lượng:</label>
									<input class="product-quantity addtocart-quantity" type="text" value="1">
									<xsl:attribute name="name">
										<xsl:text>addtocart_</xsl:text>
										<xsl:value-of select="/ProductDetail/ProductId" disable-output-escaping="yes"></xsl:value-of>
										<xsl:text>.EnteredQuantity</xsl:text>
									</xsl:attribute>
									</input>
									<div class="quantity-control">
										<span class="lnr-chevron-down"></span>
										<span class="lnr-chevron-up"></span>
									</div>
								</div>
								<div class="btn-wrapper">
									<a class="btn-buy" onclick="AjaxCart.addproducttocart_details(this);return false;" href="javascript:void(0)">
										<xsl:attribute name="data-productid">
											<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
										</xsl:attribute>
										<span class="shopping-cart"></span><span>Mua sản phẩm</span><span class="lnr-arrow-right"></span>
									</a></div>
							</div>
							<div class="social-sharing">

								<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
									 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a>
								</div>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 attributes-list">
							<div class="attributes-tabs">
								<ul class="tabs" data-tabs=''>
									<xsl:apply-templates select='/ProductDetail/ProductAttributes' mode="tab"></xsl:apply-templates>


								</ul>
							</div>
							<div class="attributes-content">
								<div class="content-list" data-tabs-content=''>
									<xsl:apply-templates select='/ProductDetail/ProductAttributes' mode="content"></xsl:apply-templates>



								</div>
							</div>
						</div>
					</div>
					<div class="row related-product">
						<div class="col-12">
							<h3>Sản phẩm liên quan</h3>
							<div class="product-slider">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
									</div>
								</div>
							</div>
							<div class="swiper-prev"><span class="lnr-chevron-left"></span></div>
							<div class="swiper-next"><span class="lnr-chevron-right"></span></div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>
	<xsl:template match='ProductAttributes' mode="tab">
		<li>
			<a data-tab=''>
				<xsl:attribute name='href'>
					<xsl:text>#tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>

				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>


	</xsl:template>

	<xsl:template match='ProductAttributes' mode="content">
		<div class="tabs-pane " data-tabs-pane=''>
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>tabs-pane active</xsl:text>

				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='id'>
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping='yes'></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Thumbnail">
		<div class="swiper-slide">
			<div class="thumbnail-box">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ThumbnailUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="ProductImages" mode="Image">
		<div class="swiper-slide">
			<div class="thumbnail-box">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>

	</xsl:template>



	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="product-item">
				<div class="product-img">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<h3 class="title">
					<xsl:value-of select="Title price"></xsl:value-of>
				</h3>
				<!-- <span class="price">
					<xsl:choose>
						<xsl:when test="Price != '0'">
							<xsl:value-of select="Price"></xsl:value-of>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>Liên hệ</xsl:text>
						</xsl:otherwise>
					</xsl:choose>

				</span> -->
				<a class="btn-addcart" href="javascript:void(0)" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
					<xsl:attribute name="data-productid">
						<xsl:value-of select="ProductId"></xsl:value-of>
					</xsl:attribute>
					<span class="shopping-cart"></span>Liên hệ
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>