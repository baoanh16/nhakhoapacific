<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
				</div>
			</div>
			<div class="row">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="col-lg-6">
				<div class="hot-news">
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
							<h2>
								<a>
									<xsl:attribute name='href'>
										<xsl:value-of select='Url'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='Title'></xsl:value-of>
								</a>
								<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
							</h2>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="col-lg-6"&gt;&lt;div class="side-news"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="news-item">
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
						<h2>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
								<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
							</a>
						</h2>
						<p>
							<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="news-item">
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
						<h2>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
						<p>
							<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<!-- <xsl:if test="position()=3">
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt; &lt;/div&gt;
			</xsl:text>
		</xsl:if> -->
	</xsl:template>
</xsl:stylesheet>