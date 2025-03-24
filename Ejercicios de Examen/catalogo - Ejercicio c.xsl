<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="catalogo">
        <html>
            <head>
                <title>Peliculas</title>
            </head>
            <body>
                <h1>Catalogo de Peliculas</h1>
                <table border="1">
                    <tr>
                        <th>Titulo</th>
                        <th>Director</th>
                        <th>Genero</th>
                        <th>Año</th>
                        <th>Valoracion</th>
                    </tr>
                    <xsl:for-each select="pelicula">
                        <tr>
                            <xsl:if test="valoracion/@estrellas = 5">
                                <td>
                                    <span style="font-weight: bold">
                                        <xsl:value-of select="titulo" />
                                    </span>
                                </td>
                                <td>
                                    <span style="font-weight: bold">
                                        <xsl:value-of select="director" />
                                    </span>

                                </td>
                                <td>
                                    <span style="font-weight: bold">
                                        <xsl:value-of select="genero" />
                                    </span>

                                </td>
                                <td>
                                    <span style="font-weight: bold">
                                        <xsl:value-of select="anio" />
                                    </span>

                                </td>
                                <td>
                                    <span style="font-weight: bold">
                                        <xsl:value-of select="valoracion" />
                                    </span>
                                </td>
                            </xsl:if>

                            <xsl:if test="5 > valoracion/@estrellas">
                                <td>
                                    <span style="color: rgb(132, 130, 127)">
                                        <xsl:value-of select="titulo" />
                                    </span>
                                </td>
                                <td>
                                    <span style="color: rgb(132, 130, 127)">
                                        <xsl:value-of select="director" />
                                    </span>

                                </td>
                                <td>
                                    <span style="color: rgb(132, 130, 127)">
                                        <xsl:value-of select="genero" />
                                    </span>

                                </td>
                                <td>
                                    <span style="color: rgb(132, 130, 127)">
                                        <xsl:value-of select="anio" />
                                    </span>

                                </td>
                                <td>
                                    <span style="color: rgb(132, 130, 127)">
                                        <xsl:value-of select="valoracion" />
                                    </span>
                                </td>
                            </xsl:if>

                        </tr>
                    </xsl:for-each>
                </table>
                <footer>Fuente: Base de Datos de Peliculas</footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>