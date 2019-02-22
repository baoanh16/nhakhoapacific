<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <section class="canhcam-product ajaxresponse">
      <article>
        <div class="container">
          <div class="row justify-content-center ajaxresponsewrap">
            <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
            <xsl:if test="/ProductList/NextPageUrl!=''">
              <div class="more">
                <a class="btn btn-primary ajaxpagerlink" href="#">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/ProductList/NextPageUrl"/>
                  </xsl:attribute>
                  <span>
                    <xsl:text>Xem thêm</xsl:text>
                    <!--<em>(15 sản phẩm)</em>-->
                  </span>
                  <span class="lnr lnr-arrow-right"></span>
                </a>
              </div>
            </xsl:if>
          </div>
        </div>
      </article>
    </section>
  </xsl:template>

  <xsl:template match="Product">
    <div class="col-md-6 col-lg-4 item">
      <figure class="figure">
        <div class="img-block">
          <img class="img-fluid" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
          </img>
        </div>
        <figcaption class="figcaption">
          <h2>
            <xsl:value-of select="SubTitle"></xsl:value-of>
          </h2>
          <p>
            <xsl:value-of select="FileUrl"></xsl:value-of>
          </p>
          <a class="btn btn-primary">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>Chi tiết<em class="lnr lnr-arrow-right"></em>
          </a>
        </figcaption>
        <a class="link" href="#">
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
        </a>
      </figure>
      <h3>
        <xsl:value-of select="Title"></xsl:value-of>
      </h3>
    </div>
  </xsl:template>
</xsl:stylesheet>