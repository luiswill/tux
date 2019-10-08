<?xml version="1.0" encoding="UTF-8" ?>
<stylesheet>
    <output method="html" />
    <template match="/">
        <html>
            <head>
                <title>Profil</title>
            </head>

            <body>
                <h3>Profil de <value-of select="/nom/text()" />
                </h3>
                <p>Anniversaire : <value-of select="/anniversaire/text()" />
                </p>
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="/avatar/text()" />
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                    Avatar de <xsl:value-of select="/nom/text()" />
                    </xsl:attribute>
                </xsl:element>

                <br/>

                <h3>Parties</h3>

                <xsl:apply-templates select="/parties/partie" />

            </body>

        </html>
    </template>
    <template match="tux:partie">
        <b>Date : </b>
        <xsl:value-of select="@date" />
        <b>Trouvé :</b>
        <xsl:value-of select="@trouvé" />

        <b>Temps : </b>
        <xsl:value-of select="/temps" />

        Mot : <xsl:value-of select="/mot" />
    </template>
</stylesheet>