<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="ttc-product-details-1">
      <article>
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="big-thumbnail swiper-container">
                <div class="swiper-wrapper">
                  <xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
                </div>
              </div>
              <div class="small-thumbnail">
                <div class="swiper-container">
                  <div class="swiper-wrapper">
                    <xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
                  </div>
                </div>
                <div class="swiper-button-prev">
                  <span class="lnr lnr-chevron-left"></span>
                </div>
                <div class="swiper-button-next">
                  <span class="lnr lnr-chevron-right"></span>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="product-details">
                <h1 class="section-title">
                  <xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
                  <xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                </h1>
                <xsl:if test="/ProductDetail/OldPrice != ''">
                  <span class="old-price">
                    <xsl:value-of select="/ProductDetail/OldPrice"></xsl:value-of>
                  </span>
                </xsl:if>
                <xsl:if test="/ProductDetail/Price != ''">
                  <span class="price">
                    <xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
                  </span>
                </xsl:if>
                <div class="briefcontent">
                  <xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
              </div>
              <div class="product-selection">
                <ul>
                  <li>
                    <span>Số lượng</span>
                    <input class="quantity addtocart-quantity" type="number" min="1" max="99" value="1">
                      <xsl:attribute name="name">
                        <xsl:text>addtocart_</xsl:text>
                        <xsl:value-of select="/ProductDetail/ProductId" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:text>.EnteredQuantity</xsl:text>
                      </xsl:attribute>
                    </input>
                  </li>
                  <li>
                    <span>Thành tiền</span>
                    <input class="total" type="text" disabled="true">
                      <xsl:attribute name="data-price">
                        <xsl:value-of select="/ProductDetail/PriceAmount"></xsl:value-of>
                      </xsl:attribute>
                      <xsl:attribute name="value">
                        <xsl:value-of select="/ProductDetail/PriceAmountFormat"></xsl:value-of>
                      </xsl:attribute>
                    </input>
                  </li>
                </ul>
              </div>
              <div class="buy-button-and-hotline">
                <a class="btn-addcart" href="#" onclick="AjaxCart.addproducttocart_details(this); return false;">
                  <xsl:attribute name="data-productid">
                    <xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:text>Thêm giỏ hàng</xsl:text>
                </a>
                <div class="hotline-box">
                  <span>
                    Tổng đài tư vấn <b>1800 1800</b>
                  </span>
                  <span>Miễn phí từ (8h:30 - 21:30) mỗi ngày </span>
                </div>
              </div>
              <div class="sharing-list">
                <span>Chia sẻ</span>
                <ul class="nav">
                  <li class="nav-item">
                    <a class="fb-xfbml-parse-ignore mdi mdi-facebook" target="_blank">
                      <xsl:attribute name="href">
                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                        <xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
                      </xsl:attribute>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="mdi mdi-twitter" target="_blank">
                      <xsl:attribute name="href">
                        <xsl:text>https://twitter.com/intent/tweet?url=</xsl:text>
                        <xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
                      </xsl:attribute>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="buy-notification"></div>
            </div>
          </div>
        </div>
      </article>
    </section>
    <section class="ttc-product-details-2">
      <article>
        <div class="container">
          <div class="row">
            <div class="col-12 product-attributes-nav">
              <ul class="nav nav-tabs">
                <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Navtabs"></xsl:apply-templates>
              </ul>
            </div>
            <div class="col-12">
              <div class="tab-content">
                <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
              </div>
            </div>
          </div>
        </div>
      </article>
    </section>
    <xsl:if test="count(/ProductDetail/ProductOther)>0">
      <section class="ttc-product-details-3">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="product-others">
                <div class="title-and-nav">
                  <h2 class="section-title">Sản phẩm tương tự</h2>
                  <div class="product-others-slider-controls">
                    <span class="prev">
                      <em class="lnr lnr-chevron-left"></em>
                    </span>
                    <span class="next">
                      <em class="lnr lnr-chevron-right"></em>
                    </span>
                  </div>
                </div>
                <div class="product-list product-other-slider">
                  <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </xsl:if>

    <!--<section class="container">
      <div class="row flex flex-wrap">
        <section class="col-xs-12 col-md-6 col-lg-6">
          <div class="product-detail clearfix">
            <div class="product-price">
              <xsl:value-of select="/ProductDetail/PriceText"></xsl:value-of>
              <xsl:text> </xsl:text>
              <xsl:if test="/ProductDetail/OldPrice != ''">
                <div class="old">
                  <xsl:value-of select="/ProductDetail/OldPrice"></xsl:value-of>
                </div>
              </xsl:if>
              <xsl:if test="/ProductDetail/Price != ''">
                <div class="new">
                  <xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
                </div>
              </xsl:if>
            </div>
            <section class="product-overview clearfix">
              <ul role="tablist" class="nav nav-tabs">
                <li class="nav-item">
                  <a data-toggle="tab" href="#tab1" role="tab" class="nav-link active">
                    <xsl:value-of select="/ProductDetail/DescriptionText"></xsl:value-of>
                  </a>
                </li>
              </ul>
              <div class="tab-content">
                <div id="tab1" role="tabpanel" class="tab-pane fade in active">
                  <div class="content">
                    <xsl:if test="/ProductDetail/SubTitle!=''">
                      <p>
                        <strong>
                          <xsl:text>Chất liệu: </xsl:text>
                        </strong>
                        <xsl:value-of select="/ProductDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
                      </p>
                    </xsl:if>
                  </div>
                </div>
              </div>
            </section>
            <xsl:apply-templates select="/ProductDetail/ProductProperties"></xsl:apply-templates>
          </div>
        </section>
        <section class="col-xs-12">
          <xsl:if test="count(/ProductDetail/ProductRelated)>0">
            <section class="other-product cleafix">
              <div class="headtitle">
                <xsl:value-of select="/ProductDetail/YouLikeText"></xsl:value-of>
              </div>
              <div class="slide-wrap">
                <div class="control">
                  <div class="other-prev"></div>
                  <div class="other-next"></div>
                </div>
                <div class="other-slide">
                  <xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
                </div>
              </div>
            </section>
          </xsl:if>
        </section>
      </div>
    </section>-->
  </xsl:template>

  <xsl:template match="ProductAttributes" mode="Navtabs">
    <li class="nav-item">
      <a data-toggle="tab">
        <xsl:if test="position()=1">
          <xsl:attribute name="class">
            <xsl:text>active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="href">
          <xsl:text>#attr-</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="ProductAttributes" mode="Content">
    <div class="tab-pane fade show">
      <xsl:if test="position()=1">
        <xsl:attribute name="class">
          <xsl:text>tab-pane fade show active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>attr-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>

  <!--<xsl:template match="ProductProperties">
    <xsl:if test="FieldId=4">
      <div class="product-size">
        <strong>
          <xsl:value-of select="Title"></xsl:value-of>
        </strong>
        <select>
          <xsl:attribute name="name">
            <xsl:text>product_attribute_</xsl:text>
            <xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="FieldId"></xsl:value-of>
          </xsl:attribute>
          <xsl:apply-templates select="Options"></xsl:apply-templates>
        </select>
        <a href="/cham-soc-khach-hang/huong-dan-chon-size/so-mi-tay-ngan-kieu-body" class="viewsize">Hướng dẫn chọn size</a>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Options">
    <option>
      <xsl:attribute name="value">
        <xsl:value-of select="OptionId"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>-->

  <xsl:template match="ProductImages" mode="BigImages">
    <div class="swiper-slide">
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
      </img>
    </div>
  </xsl:template>

  <xsl:template match="ProductImages" mode="SmallImages">
    <div class="swiper-slide">
      <div class="item">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="ProductOther">
    <div class="slide-item">
      <div class="item">
        <div class="info">
          <figure>
            <xsl:if test="ImageUrl != ''">
              <div class="img">
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                  </xsl:attribute>
                  <img>
                    <xsl:attribute name="src">
                      <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                  </img>
                </a>
              </div>
            </xsl:if>
            <figcaption>
              <a class="btn-detail">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <span class="name">
                  <xsl:value-of select="Title"></xsl:value-of>
                </span>
              </a>
              <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
              <div class="fullcontent">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
              </div>
              <div class="price">
                <xsl:if test="OldPrice!=''">
                  <span class="old-price">
                    <xsl:value-of select="OldPrice"></xsl:value-of>
                  </span>
                </xsl:if>
                <xsl:if test="Price != ''">
                  <span class="new-price">
                    <xsl:value-of select="Price"></xsl:value-of>
                  </span>
                </xsl:if>
              </div>
            </figcaption>
          </figure>
        </div>
        <div class="rating-and-cart">
          <xsl:if test="count(Rating)>0">
            <div class="br-wrapper br-theme-css-stars">
              <div class="br-widget">
                <xsl:apply-templates select="Rating"></xsl:apply-templates>
              </div>
            </div>
          </xsl:if>
          <a class="cart" href="#" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
            <xsl:attribute name="data-productid">
              <xsl:value-of select="ProductId"></xsl:value-of>
            </xsl:attribute>
            <img src="/Data/Sites/1/skins/default/img/icon/buy-icon.png" alt="Buy" />
          </a>
        </div>
        <xsl:if test="floor(ShowOption div 1) mod 2 = 1">
          <div class="sale-icon">
            <img src="/Data/Sites/1/skins/default/img/icon/sale.png" alt="Sale" />
          </div>
        </xsl:if>
      </div>
    </div>
  </xsl:template>

  <!--<xsl:template match="ProductRelated">
    <div class="item">
      <div class="product-col">
        <xsl:choose>
          <xsl:when test="floor(ShowOption div 1) mod 2 = 1">
            <div class="promotion op1">
              <span>
                <xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
              </span>
            </div>
          </xsl:when>
          <xsl:when test="floor(ShowOption div 2) mod 2 = 1">
            <span class="promotion op2">
              <xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
            </span>
          </xsl:when>
        </xsl:choose>
        <figure>
          <a class="product-img">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
          </a>
          <figcaption>
            <div class="product-name">
              <a class="btn-detail">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Code"></xsl:value-of>
              </a>
            </div>
            <div class="product-price">
              <xsl:if test="OldPrice != ''">
                <div class="old">
                  <xsl:value-of select="OldPrice"></xsl:value-of>
                </div>
              </xsl:if>
              <xsl:if test="Price != ''">
                <div class="new">
                  <xsl:value-of select="Price"></xsl:value-of>
                </div>
              </xsl:if>
            </div>
            <a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
              <xsl:attribute name="data-productid">
                <xsl:value-of select="ProductId"></xsl:value-of>
              </xsl:attribute>
              <span>
                <xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
              </span>
              <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            </a>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>-->
  
  <xsl:template match="Rating">
    <a href="javascript:void(0);">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>br-selected br-current</xsl:text>
        </xsl:attribute>
      </xsl:if>
    </a>
  </xsl:template>
  
</xsl:stylesheet>