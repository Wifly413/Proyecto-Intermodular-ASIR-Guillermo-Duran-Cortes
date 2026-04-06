<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/infraestructura">
    <html >
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link href="css/estilo.css" rel="stylesheet"/>
        </head>
        <body class="container py-5">
            
            <h1 class="text-primary fw-bold">Red de <xsl:value-of select="@empresa"/></h1>
            <p class="text-muted">Fecha de entrega: 06/04/2026</p>

            <nav class="my-4">
                <b>Índice :</b>
                <a href="#tabla-vlans" class="ms-2">1. Ver todas las redes</a> |
                <a href="#tabla-equipos" class="ms-2">2. Ver los equipos</a>
            </nav>

            <h3 id="tabla-vlans">1. Resumen de las VLANs</h3>
            <table class="table table-striped table-hover border shadow-sm">
                <tr class="table-dark"> <th>ID</th>
                    <th>Nombre de la Red</th>
                    <th>IP</th>
                    <th>Gateway</th>
                </tr>
                <xsl:for-each select="redes/vlan">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td class="fw-bold"><xsl:value-of select="@nombre"/></td>
                        <td><xsl:value-of select="ip"/></td>
                        <td><xsl:value-of select="gateway"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            
            <h3 id="tabla-equipos" class="mt-5">2. Todos los equipos de la empresa</h3>
            <table class="table table-bordered table-hover shadow-sm">
                <tr class="table-primary"> <th>ID del PC</th>
                    <th>Nombre</th>
                    <th>Dirección IP</th>
                    <th>VLAN Asignada</th>
                </tr>
                <xsl:for-each select="dispositivos/host">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="ip"/></td>
                        <td class="text-center"><xsl:value-of select="@vlan_ref"/></td>
                    </tr>
                </xsl:for-each>
            </table>

        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>