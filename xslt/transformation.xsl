<?xml version="1.0" encoding="UTF-8" ?>
<stylesheet version="1.0">
    <output method="dico.xhtml" />
    <template match="/">
        <html>
            <head>
                <title>Dictionnaire</title>
            </head>
            <body>

                <h1>Dictionnaire</h1>

                <p>Les mots sont les suivants : </p>
                <ul>
                    <apply-templates select="/dictionnaire/mot">
                        <sort select="./text()" order="descending"/>
                        <sort select="@niveau" order="ascending" />
                    </apply-templates>
                </ul>
            </body>
        </html>
    </template>

    <template match="mot">
        <li>
            <value-of select="./text()" />
        </li>
    </template>
</stylesheet>