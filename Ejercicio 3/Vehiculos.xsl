<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="vehiculos">
        <html>
            <head>
                <title>Tabla de Vehiculos</title>
            </head>
            <body>
                <h1>Tabla de Vehiculos</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Año</th>
                        <th>Color</th>
                        <th>Precio</th>
                        <th>Tipo</th>
                        <th>Usado</th>
                    </tr>
                    <xsl:for-each select="vehiculo">
                        <tr>
                            <td>
                                <xsl:value-of select="marca" />
                            </td>
                            <td>
                                <xsl:value-of select="modelo" />
                            </td>
                            <td>
                                <xsl:value-of select="anio" />
                            </td>
                            <td>
                                <xsl:value-of select="color" />
                            </td>
                            <td>
                                <xsl:if test="precio > 20000">
                                    <span style="color: red">
                                        <xsl:value-of select="precio" />
                                    </span>
                                </xsl:if>
                                <xsl:if test="20000 >= precio">
                                    <xsl:value-of select="precio" />
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:value-of select="@tipo" />
                            </td>
                            <td>
                                <xsl:if test="@usado = 'si'">
                                    Vehículo de segunda mano
                                </xsl:if>
                                <xsl:if test="@usado = 'no'">
                                    Nuevo
                                </xsl:if>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>