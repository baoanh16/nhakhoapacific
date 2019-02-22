<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<div class="col-12">
				<h1>
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h1>
			</div>
		</div>

		<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="row"&gt;
			</xsl:text>
			<div class="col-lg-6">
				<div class="hot-news">
					<figure>
						<a class="news-img">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='target'>
								<xsl:value-of select='Target'></xsl:value-of>
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
						<figcaption>
							<h3>
								<a>
									<xsl:attribute name='href'>
										<xsl:value-of select='Url'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='Title'></xsl:value-of>
								</a>
								<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
							</h3>
							<div class="briefcontent">
								<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
							</div>
							<a class="btn-view">
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name='Title'>
									<xsl:value-of select='Title'></xsl:value-of>
								</xsl:attribute>
								<xsl:text>Xem thêm</xsl:text>
							</a>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="col-lg-6"&gt;&lt;div class="part-news"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<figure>
				<a class="news-img">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
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
				<figcaption>
					<h3>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'></xsl:value-of>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</a>
					</h3>
					<div class="briefcontent">
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
					<a class="btn-view">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='Title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Xem thêm</xsl:text>
					</a>

				</figcaption>
			</figure>
		</xsl:if>
		<xsl:if test="position()=3">
			<figure>
				<a class="news-img">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
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
				<figcaption>
					<h3>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'></xsl:value-of>
						</a>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h3>
					<div class="briefcontent">
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
					<a class="btn-view">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='Title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Xem thêm</xsl:text>
					</a>
				</figcaption>
			</figure>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="row other-news"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()&gt;3">
			<div class="col-md-6 col-lg-3">
				<figure>
					<a class="news-img">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
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
					<figcaption>
						<h3>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h3>
						<div class="briefcontent">
							<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
						</div>
						<a class="btn-view">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='Title'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							<xsl:text>Xem thêm</xsl:text>
						</a>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=last()">
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>