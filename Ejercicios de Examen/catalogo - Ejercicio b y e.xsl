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
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>

                            <td>
                                <xsl:value-of select="director" />
                            </td>

                            <td>
                                <xsl:value-of select="genero" />
                            </td>

                            <td>
                                <xsl:value-of select="anio" />
                            </td>

                            <td>
                                <xsl:value-of select="valoracion/@estrellas" />
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
                <footer>Fuente: Base de Datos de Peliculas</footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>