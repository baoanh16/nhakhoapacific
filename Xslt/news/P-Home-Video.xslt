<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2>
			<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
		</h2>
		<div class="video-list">
			<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="row">
				<div class="col-12">
					<a class="video-item" data-fancybox="">
						<xsl:attribute name='href'>
							<xsl:value-of select='BriefContent'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="row"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()>1">
			<div class="col-sm-4">
				<a class="video-item" data-fancybox="">
					<xsl:attribute name='href'>
						<xsl:value-of select='BriefContent'></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position()=last()">
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>