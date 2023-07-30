<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<html>
			<body>
				<xsl:variable name="a" select="/goc/hsa"></xsl:variable>
				<xsl:variable name="b" select="/goc/hsb"></xsl:variable>
				<p>PT: </p>
				<xsl:value-of select="$a"/>x + <xsl:value-of select="$b"/> = 0
				<xsl:choose>
					<xsl:when test="$a = 0 and $b = 0">
						<span> co vo so nghiem</span>
					</xsl:when>
					<xsl:when test="$a = 0 and $b != 0">
						<span> vo nghiem</span>
					</xsl:when>
					<xsl:otherwise>
						<span> co 1 nghiem x = <xsl:value-of select="-$b div $a"/>
					</span>
					</xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>
