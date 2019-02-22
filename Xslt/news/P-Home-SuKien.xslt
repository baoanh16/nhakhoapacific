<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2>
			<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
		</h2>
		<div class="part-news">
			<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<figure>
			<div class="news-img">
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
				<div class="briefcontent">
					<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
				<a class="btn-view">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					Xem thêm
				</a>
			</figcaption>
		</figure>
	</xsl:template>
</xsl:stylesheet>