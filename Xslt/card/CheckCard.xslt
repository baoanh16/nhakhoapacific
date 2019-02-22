<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">

    <div class="row">
      <div class="col-12">
        <h2>
          <xsl:value-of select="/CheckWarrantyCard/ModuleTitle"/>
        </h2>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <div class="card-details">
          <div class="card-img">
            <img src="./img/card/1.png" alt="">
              <xsl:attribute name="src">
                <xsl:value-of select="/CheckWarrantyCard/SecondImage"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="/CheckWarrantyCard/ZoneTitle"></xsl:value-of>
              </xsl:attribute>
            </img>
          </div>
          <div class="check-form">
            <input type="text" placeholder="Mã thẻ xuất xứ..."/>
            <a class="btn-check" href="javascript:void(0)">
              <xsl:attribute name="data-zoneId">
                <xsl:value-of select="/CheckWarrantyCard/ZoneId"></xsl:value-of>
              </xsl:attribute>
            </a>
            <span id="cardNotFound"></span>
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
      </div>
    </div>

  </xsl:template>
</xsl:stylesheet>