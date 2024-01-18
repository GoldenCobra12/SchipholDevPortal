<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <result>
            <iataMain>
                <xsl:value-of select="/result/rowset/row/field"/>
            </iataMain>
            <iataSub>
                <xsl:value-of select="'73H'"/>
            </iataSub>
        </result>
    </xsl:template>
</xsl:stylesheet>