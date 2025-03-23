<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="animales">
        <html>
            <head>
                <title>Animales</title>
            </head>
            <body>
                <h1>Animales</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Nombre cientifico</th>
                        <th>Tipo de animal</th>
                        <th>Alimentacion</th>
                        <th>Tamaño</th>
                        <th>Esperanza de vida (en años)</th>
                        <th>Población (número de individuos en su hábitat)</th>
                        <th>En peligro (sí/no)</th>
                    </tr>
                    <xsl:for-each select="habitat/animal">
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
                                <xsl:value-of select="alimentacion" />
                            </td>

                            <td>
                                <xsl:value-of select="tamanio" />
                            </td>

                            <td>
                                <xsl:value-of select="esperanza_vida" />
                            </td>

                            <td>
                                <xsl:value-of select="poblacion" />
                            </td>

                            <td>
                                <xsl:if test="@en_peligro = 'si'">
                                    <span style="color: red">
                                        <xsl:value-of select="@en_peligro" />
                                    </span>

                                </xsl:if>
                                <xsl:if test="@en_peligro = 'no'">
                                    <xsl:value-of select="@en_peligro" />
                                </xsl:if>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>