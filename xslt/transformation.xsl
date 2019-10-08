<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tux='http://myGame/tux'>
>
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Dictionnaire</title>
            </head>
            <body>

                <h1>Dictionnaire</h1>

                <p>Les mots sont les suivants : </p>
                <ul>
                    <xsl:apply-templates select="//tux:mot">                        
                        <xsl:sort select="@niveau" order="ascending" />
                        <xsl:sort select="./text()"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tux:mot">
        <li>
           <xsl:value-of select="./text()" />
        </li>
    </xsl:template>
</xsl:stylesheet>