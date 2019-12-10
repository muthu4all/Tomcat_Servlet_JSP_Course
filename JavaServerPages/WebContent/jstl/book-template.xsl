<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="tableBGColor"/>   
<xsl:param name="fontColor"/>
<xsl:template match="books">
        <table border="1" bgcolor="{$tableBGColor}">
            <xsl:for-each select="book">
                <tr>
                    <td>
                    	<font color="{$fontColor}">
                        	<xsl:value-of select="author" />
                        </font>
                    </td>
                    <td>
                    	<font color="{$fontColor}">                       
                        	<xsl:value-of select="title" />
                        </font>                       
                    </td>
                    <td>
                    	<font color="{$fontColor}">
                        	<xsl:value-of select="genre" />
                        </font>
                    </td>
                    <td>
                    	<font color="{$fontColor}">
                        	<xsl:value-of select="price" />
                        </font>
                    </td>
                    <td>
                    	<font color="{$fontColor}">
                        	<xsl:value-of select="publish_date" />
                        </font>
                    </td>
                     
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>