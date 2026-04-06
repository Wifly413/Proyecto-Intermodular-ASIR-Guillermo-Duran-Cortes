<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
        <body>
            <h1>Red de <xsl:value-of select="@empresa"/></h1>
            <p>Fecha de entrega: 06/04/2026</p>

            <nav>
                <b>Índice :</b>
                <a href="#tabla-vlans">1. Ver todas las redes</a> |
                <a href="#tabla-equipos">2. Ver los equipos</a>
            </nav>

            <h3 id="tabla-vlans">1. Resumen de las VLANs</h3>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Nombre de la Red</th>
                    <th>IP</th>
                    <th>Gateway</th>
                </tr>
                <xsl:for-each select="redes/vlan">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="@nombre"/></td>
                        <td><xsl:value-of select="ip"/></td>
                        <td><xsl:value-of select="gateway"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            


        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>