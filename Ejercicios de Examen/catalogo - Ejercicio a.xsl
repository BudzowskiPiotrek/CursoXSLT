<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="catalogo">
        <html>
            <head>
                <title>Peliculas</title>
            </head>
            <body>
                <h1>Catalogo de Peliculas</h1>
                <ol>
                    <xsl:for-each select="pelicula">
                        <li>
                            <xsl:value-of select="titulo" />
                        </li>
                    </xsl:for-each>
                </ol>
                <footer>Fuente: Base de Datos de Peliculas</footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>