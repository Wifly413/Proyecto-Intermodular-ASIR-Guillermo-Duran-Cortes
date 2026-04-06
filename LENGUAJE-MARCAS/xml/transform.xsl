<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
        <body>
            <h1>Red Bugisoft: <xsl:value-of select="@empresa"/></h1>
            <h2>Proyecto: <xsl:value-of select="@proyecto"/></h2>
            <p>Fecha de generación: 06/04/2026</p>

            <h3 id="tabla-redes">1. Segmentos de Red</h3>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>IP de Red</th>
                    <th>Gateway</th>
                </tr>
            </table>



















        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>