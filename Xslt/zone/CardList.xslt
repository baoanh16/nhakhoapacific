<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="row">
      <div class="col">
        <h2>
          <xsl:value-of select="/ZoneList/ModuleTitle"/>
        </h2>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="card-list swiper-container">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
          </div>
        </div>
        <span class="prev-card">
          <em class="lnr-chevron-left"></em>
        </span>
        <span class="next-card">
          <em class="lnr-chevron-right"></em>
        </span>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Zone">

    <div class="item swiper-slide">
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
    </div>
  </xsl:template>
</xsl:stylesheet>