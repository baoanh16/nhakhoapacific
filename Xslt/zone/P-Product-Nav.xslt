<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="side-menu-wrapper">
			<h2>
				<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
			</h2>
			<ul class="side-menu">
				<xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match='Zone' mode="Zone1">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone2">
		<xsl:if test="count(Zone)&gt;0">
			<li class="hassub">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>hassub active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a href="javascript:void(0)">
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<span class="menu-toggle">
					<i class="lnr-chevron-down"></i>
				</span>
				<ul class="submenu">
					<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>

				</ul>
			</li>
		</xsl:if>
		<xsl:if test="count(Zone)=0">
			<li class="hassub">

				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>hassub active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<span class="menu-toggle">
					<i class="lnr-chevron-down"></i>
				</span>
			</li>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<li >
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text> active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>

		</li>
	</xsl:template>
</xsl:stylesheet>