<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="product-wrapper ajaxresponse">
			<div class="product-header">
				<div class="sort-wrapper">
					<select class="ajaxsort">

						<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
					</select>
				</div>
				<div class="right-wrapper">
					<ul class="display-list ajaxsort">
						<xsl:apply-templates select="/ProductList/PageSize" />
					</ul>
					<div class="form-search">
						<input type="text" name="" placeholder="Tìm kiếm">
						</input>
					</div>
				</div>
			</div>
			<div class="product-list ajaxresponsewrap">

				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>



			</div>
		</div>
	</xsl:template>

	<xsl:template match="SortBy">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

	<xsl:template match="PageSize">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Product">
		<div class="product-col">
			<div class="product-item">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
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
				</a>
				<h3 class="title">
					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>

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
					<span class="shopping-cart"></span>Mua ngay
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>