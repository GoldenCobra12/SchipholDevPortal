<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <root>
            <aircrafttype>
                <iataMain>
                    <xsl:value-of select="root/aircraftTypes/longDescription"/>
                </iataMain>
                <iataSub>
                    <xsl:value-of select="root/aircraftTypes/shortDescription"/>
                </iataSub>
            </aircrafttype>
        </root>
    </xsl:template>
</xsl:stylesheet>