<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<div class="row">
				<div class="col-lg-9">
					<div class="news-content">
						<h2>
							<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
							<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
						<time>
							<xsl:value-of select='/NewsDetail/CreatedDate'></xsl:value-of>
						</time>
						<div class="fullcontent">
							<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
						</div>
						<div class="social-sharing">
							<div class="fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true"
							 data-share="true">
								<xsl:attribute name='data-href'>
									<xsl:value-of select='FullUrl'></xsl:value-of>
								</xsl:attribute>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-7 col-lg-3">
					<h2>Tin tức khác</h2>
					<div class="other-news">
						<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="item">
			<figure>
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
				<figcaption>
					<h3>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'></xsl:value-of>
						</a>
					</h3>
					<time>
						<xsl:value-of select='CreatedDate'></xsl:value-of>
					</time>
				</figcaption>
			</figure>
		</div>

	</xsl:template>

</xsl:stylesheet>