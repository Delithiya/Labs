<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body bgcolor="#FFFFF0">
                <h1 align="center">Рецепты</h1>
                <table align="center" border="1">
                    <tr bgcolor="#FFFFF0">
                        <th>Название</th>
                        <th>Тип</th>
                        <th>Вес</th>
                        <th>Ингридиент1</th>
                        <th>Количество</th>
                        <th>Ингридиент2</th>
                        <th>Количество</th>
                        <th>Ингридиент3</th>
                        <th>Количество</th>
                        <th>Рецепт</th>
                        <th>Калории, Ккал</th>
                    </tr>
                    
                    <xsl:for-each select="recipes/food">    


                        <xsl:sort select="food"/>
                        
                        <xsl:if test="calories &lt; 500">


                        <tr>

                            <td>
                                <xsl:value-of select="name"/>
                            </td>

                            <td>
                                <xsl:value-of select="type"/>
                            </td>

                            <td>
                                <xsl:value-of select="weight"/>
                            </td>

                            <td>
                                <xsl:value-of select="ingredient1"/>
                            </td>

                            <td>
                                <xsl:value-of select="amount1"/>
                            </td>

                            <td>
                                <xsl:value-of select="ingredient2"/>
                            </td>

                            <td>
                                <xsl:value-of select="amount2"/>
                            </td>

                            <td>
                                <xsl:value-of select="ingredient3"/>
                            </td>

                            <td>
                                <xsl:value-of select="amount3"/>
                            </td>

                            <td>
                                <xsl:value-of select="description"/>
                            </td>

                             <td>
                                <xsl:value-of select="calories"/>
                            </td>
                        </tr>
                   </xsl:if>
                  
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>