<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="nombre">
        <html>
            <head>
                <title> </title>
            </head>
            <body>
                <h1> </h1>
                <table border="1">
                    <tr>
                        <th> </th>
                        <th> </th>
                        <th> </th>
                    </tr>
                    <xsl:for-each select="nombre/nombre">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre/@atributo" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <xsl:if test="nombre > 1000">
                                <xsl:value-of select="nombre" style="color: black" />
                            </xsl:if>
                            <xsl:if test="1000 >= nombre">
                                <xsl:value-of select="nombre" />
                            </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>