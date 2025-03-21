<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/personas">
        <html>
            <head>
                <title>Listado de Personas</title>
            </head>
            <body>
                <h1>Listado de Personas</h1>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        <th>Dirección</th>
                        <th>Teléfono</th>
                    </tr>
                    <xsl:for-each select="persona">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="edad" />
                            </td>
                            <td>
                                <xsl:value-of select="direccion" />
                            </td>
                            <td>
                                <xsl:value-of select="telefono" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>