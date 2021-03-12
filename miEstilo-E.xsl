<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
    <xsl:for-each select="root/record">
    <xsl:sort select="fecha/@when" order="descending" data-type="text"/>
    <xsl:if test="fecha/year&gt;'1789'">
    <xsl:text>&#xA;</xsl:text>[<xsl:value-of select="identificador"/>] <xsl:value-of select="titulo"/> <xsl:text>&#32;</xsl:text> <xsl:value-of select="fecha/@when"/>
    <xsl:text>&#xA;</xsl:text>
        </xsl:if>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>