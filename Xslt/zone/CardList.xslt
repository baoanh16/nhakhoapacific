<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<div class="col">
				<h2>
					<xsl:value-of select="/ZoneList/ModuleTitle" />
				</h2>
			</div>
		</div>
		<section class="pacific-warranty-2">
			<div class="row">
				<div class="col">
					<!--  <div class="card-list swiper-container">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
          </div>
        </div> -->
					<div class="card-list">
						<div class="row">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
			<div class="card-result">
				<div class="card-title">
					<h2>
						<xsl:value-of select="/CheckWarrantyCard/ZoneTitle"></xsl:value-of>
					</h2>
					<div class="card-close">
						<span class="lnr-cross"></span>
					</div>
				</div>
				<div>
					<xsl:attribute name='class'>
						<xsl:text>card-img </xsl:text>
						<xsl:text>card-</xsl:text>
						<xsl:value-of select="/CheckWarrantyCard/ZoneId"></xsl:value-of>
					</xsl:attribute>
					<img src="./img/card/1.png" alt="">
					<xsl:attribute name="src">
						<xsl:value-of select="/CheckWarrantyCard/PrimaryImage"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="/CheckWarrantyCard/ZoneTitle"></xsl:value-of>
					</xsl:attribute>
					</img>
					<span id="cardName"></span>
					<span id="cardCode"></span>
					<span id="cardClinic"></span>
					<span id="cardValidto"></span>
					<span id="cardDateOfIssue"></span>
					<span id="cardLab"></span>
					<span id="cardTopLeft"></span>
					<span id="cardTopRight"></span>
					<span id="cardBottomLeft"></span>
					<span id="cardBottomRight"></span>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="item col-lg-4 col-md-6">
			<img src="./img/card/1.png" alt="">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
			<!--  <a class="btn-check" href="javascript:void(0)">
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a> -->
			<div class="check-form" style="width: 100%">
				<input type="text" placeholder="Mã thẻ xuất xứ..." />
				<a class="btn-check" href="javascript:void(0)" data-zoneid="197">
					<xsl:attribute name="data-zoneid">
						<xsl:value-of select="ZoneId" />
					</xsl:attribute>
					<xsl:value-of select='Title'></xsl:value-of>
				</a>
			</div>
		</div>
		<!--  <div class="item swiper-slide">
      <img src="./img/card/1.png" alt="">
        <xsl:attribute name="src">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
      </img>
      <a class="btn-check" href="javascript:void(0)">
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </div> -->
	</xsl:template>
</xsl:stylesheet>