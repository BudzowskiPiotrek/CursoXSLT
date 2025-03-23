<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="plantas">
        <html>
            <head>
                <title>Plantas</title>
            </head>
            <body>
                <h1>Plantas</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Nombre Cientifico</th>
                        <th>Tipo</th>
                        <th>Perenne</th>
                        <th>Riego</th>
                        <th>Luz</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="categoria/planta">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>

                            <td>
                                <xsl:value-of select="nombre_cientifico" />
                            </td>

                            <td>
                                <xsl:value-of select="@tipo" />
                            </td>

                            <td>
                                <xsl:if test="@perenne = 'si'">
                                    <span>Planta de larga duración</span>
                                </xsl:if>
                                <xsl:if test="@perenne = 'no'">
                                    <span>Planta de no larga duración</span>
                                </xsl:if>
                            </td>

                            <td>
                                <xsl:value-of select="caracteristicas/riego" />
                            </td>

                            <td>
                                <xsl:value-of select="caracteristicas/luz" />
                            </td>

                            <td>
                                <xsl:if test="precio > 3000">
                                    <span style="color: green">
                                        <xsl:value-of select="precio" />
                                    </span>
                                </xsl:if>
                                <xsl:if test="3000 >= precio">
                                    <xsl:value-of select="precio" />
                                </xsl:if>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>