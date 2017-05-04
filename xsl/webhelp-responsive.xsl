<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  version="2.0">
  
  <xsl:template match="*[contains(@class,' pr-d/codeblock ')][contains(@outputclass, 'language-')]">
    <pre>
            <code>
                <xsl:attribute name="class">hljs <xsl:value-of select="substring-after(@outputclass,'language-')"/></xsl:attribute>
                <xsl:apply-templates/>
            </code>
        </pre>
  </xsl:template>
</xsl:stylesheet>