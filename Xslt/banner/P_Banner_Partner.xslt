<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">

			<section class="pacific-about-5">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h2>
								<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-12 part-wrapper">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/BannerList/Banner" mode="image"></xsl:apply-templates>



								</div>
							</div>
							<div class="swiper-prev"><span class="lnr-chevron-left"></span></div>
							<div class="swiper-next"><span class="lnr-chevron-right"></span></div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Banner" mode="image">
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