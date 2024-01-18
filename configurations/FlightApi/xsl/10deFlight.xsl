<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <root>
            <result>
                <rowset>
                    <xsl:for-each select="/root/result/rowset/row">
                        <xsl:if test="./@number = 9">
                            <row>
                                <xsl:variable name="number" select="./@number" />
                                <!-- The variable number can be used for further processing. -->
                                <xsl:attribute name="number"><xsl:value-of select="$number" /></xsl:attribute>
                                <field>
                                    <xsl:value-of select="./field" />
                                    <xsl:variable name="name" select="./field/@name" />
                                    <!-- The variable name can be used for further processing. -->
                                    <xsl:attribute name="name"><xsl:value-of select="$name" /></xsl:attribute>
                                </field>
                            </row>
                        </xsl:if>
                    </xsl:for-each>
                </rowset>
            </result>
        </root>
    </xsl:template>
</xsl:stylesheet>
