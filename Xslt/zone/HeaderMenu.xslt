<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <ul>
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>

    <xsl:template match="Zone">
        <xsl:if test="count(Zone)>0">
            <li class="dropdown">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text> dropdown active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a>
                    <xsl:attribute name='href'>
                        <xsl:value-of select='Url'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select='Title'></xsl:value-of>
                </a>
                
                <ul class="dropdown-menu">
                    <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
                    
                </ul>
            </li>
        </xsl:if>
        <xsl:if test="count(Zone)=0">
            <li>
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a>
                    <xsl:attribute name='href'>
                        <xsl:value-of select='Url'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select='Title'></xsl:value-of>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Child">

        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
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