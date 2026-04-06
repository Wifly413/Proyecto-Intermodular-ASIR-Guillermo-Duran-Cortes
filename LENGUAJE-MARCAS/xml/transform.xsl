<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
        <body>
            <h1>Reporte de Red: <xsl:value-of select="@empresa"/></h1>
            <h2>Proyecto: <xsl:value-of select="@proyecto"/></h2>
            <p>Fecha de generación: 06/04/2026</p>





















        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>