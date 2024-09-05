<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
        Kuvame 1. inimese nimi:
		<xsl:value-of select="sugupuu/inimene[1]/nimi"/>

		<table>
			<tr>
				<th>Vanevanem</th>
				<th>Vanem</th>
				<th>Laps</th>
			</tr>
			<xsl:for-each select="sugupuu/inimene">
				<tr>
					<td>
						<xsl:value-of select="nimi"/>
						,
						<xsl:value-of select="synniaasta"/>
						,
						<xsl:value-of select="synnikoht"/>
					</td>
					<td>
						<xsl:for-each select="lapsed/inimene">
							<xsl:value-of select="nimi"/>
							,
							<xsl:value-of select="synniaasta"/>
							,
							<xsl:value-of select="synnikoht"/>
							<br/>
						</xsl:for-each>
					</td>
					<td>
						<xsl:for-each select="lapsed/inimene/lapsed/inimene">
							<xsl:value-of select="nimi"/>
							,
							<xsl:value-of select="synniaasta"/>
							,
							<xsl:value-of select="synnikoht"/>
							<br/>
						</xsl:for-each>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<!--<ul>
			<xsl:for-each select="sugupuu/inimene">
				<li>
					<xsl:value-of select="nimi"/>
					,
					<xsl:value-of select="synniaasta"/>
					,
					<xsl:value-of select="synnikoht"/>
				</li>
			</xsl:for-each>
		</ul>
		<ul>
			<xsl:for-each select="sugupuu/inimene/lapsed/inimene">
				<li>
					<xsl:value-of select="nimi"/>
					,
					<xsl:value-of select="synniaasta"/>
					,
					<xsl:value-of select="synnikoht"/>
				</li>
			</xsl:for-each>
		</ul>
		<ul>
			<xsl:for-each select="sugupuu/inimene/lapsed/inimene/lapsed/inimene">
				<li>
					<xsl:value-of select="nimi"/>
					,
					<xsl:value-of select="synniaasta"/>
					,
					<xsl:value-of select="synnikoht"/>
				</li>
			</xsl:for-each>
		</ul>-->
	</xsl:template>
</xsl:stylesheet>
