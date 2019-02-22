<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1 ">
			<section class="pacific-about-1">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="pacific-about-2" bg-img="/Data/Sites/1/skins/default/img/about/bg.jpg">
				<div class="container">
					<div class="row">

						<xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="pacific-about-3">
				<div class="container">

					<div class="row">
						<div class="col-12 desc">
							<h2>
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="Description"></xsl:value-of>
							</p>
						</div>
					</div>
					<xsl:apply-templates select='Zone' mode="ZoneChild1"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<div class="pacific-about-4">
				<div class="container-fluid">
					<div class="row">
						<xsl:apply-templates select='News' mode="ZoneNews4"></xsl:apply-templates>

					</div>
				</div>
			</div>
		</xsl:if>
		<!-- <xsl:if test="position() = 5 ">
			<section class="pacific-about-5">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews5"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if> -->
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="row">
			<div class="col-lg-6">
				<h1>
					<xsl:value-of select="Title"></xsl:value-of>
				</h1>
				<p>
					<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
				</p>
				<div class="icon-list">
					<xsl:apply-templates select='NewsImages' mode="ZoneImages1"></xsl:apply-templates>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="imgbox">
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-lg-4 item">
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
			</h3>
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
			<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>

		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild1">
		<div class="row list-row">
			<div class="col-12">
				<h3>
					<xsl:value-of select="Title"></xsl:value-of>
				</h3>
			</div>
			<div class="col-12">
				<div class="branch-list">
					<xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>



				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="branch-item">
			<h4 class="city">
				<xsl:value-of select="Title"></xsl:value-of>
			</h4>
			<p class="shop-name">
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</p>
			<p class="address">
				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
			</p>
			<p class="phone">
				<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
			</p>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<div class="col-12 desc">
			<h2>
				<xsl:value-of select="Title"></xsl:value-of>
			</h2>
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
			</p>
		</div>
		<div class="col-12">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select='NewsImages' mode="ZoneImages2"></xsl:apply-templates>

				</div>
				<div class="swiper-prev"><span class="mdi-chevron-left"></span></div>
				<div class="swiper-next"><span class="mdi-chevron-right"></span></div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews5">

		<div class="row">
			<div class="col-12">
				<h2>
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-12 part-wrapper">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='NewsImages' mode="ZoneImages3"></xsl:apply-templates>




					</div>
				</div>
				<div class="swiper-prev"><span class="lnr-chevron-left"></span></div>
				<div class="swiper-next"><span class="lnr-chevron-right"></span></div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match='NewsImages' mode="ZoneImages1">
		<xsl:if test="position() &gt; 1">
			<div class="icon">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
				<span>
					<xsl:value-of select="Title"></xsl:value-of>
				</span>
			</div>

		</xsl:if>
	</xsl:template>
	<xsl:template match='NewsImages' mode="ZoneImages2">
		<div class="swiper-slide">
			<div class="imgbox">
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
	<xsl:template match='NewsImages' mode="ZoneImages3">
		<div class="swiper-slide">
			<div class="partner-item">
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

</xsl:stylesheet>