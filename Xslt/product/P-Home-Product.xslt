<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<div class="col-12">
				<h3>
					<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
				</h3>
				<div class="product-slider">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-prev"><span class="lnr-chevron-left"></span></div>
					<div class="swiper-next"><span class="lnr-chevron-right"></span></div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="swiper-slide">
			<div class="product-item">
				<div class="product-img">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<h3 class="title">
					<xsl:value-of select='Title'></xsl:value-of>
				</h3>
				<span class="price">
					<xsl:choose>
						<xsl:when test="Price != '0'">
							<xsl:value-of select="Price"></xsl:value-of>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>Liên hệ</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</span>
				<a class="btn-addcart" href="javascript:void(0)" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
					<xsl:attribute name="data-productid">
						<xsl:value-of select="ProductId"></xsl:value-of>
					</xsl:attribute>
					<span class="shopping-cart"></span>
					Mua ngay
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>