<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<h3>Auto regnumbrid mis algavad 2:</h3>
		kasutame starts-with funktsiooni
		<ul>
			<xsl:for-each select="autod/auto[starts-with(registrinumber, 2)]">
			<xsl:sort select="vaasta" order="descending"/>
				<li>
					<xsl:value-of select="concat(mark, ',', registrinumber, ',',vaasta)"/>
				</li>
			</xsl:for-each>
		</ul>
		<h2>Autod registrinumbridega alustaga "V"</h2>
		<table border="1" cellpadding="5" cellspacing="0" style="border-collapse: collapse">
			<tr>
				<th>Mark</th>
				<th>Registrinumber</th>
				<th>Omanik</th>
			</tr>
			<xsl:for-each select="autod/auto[starts-with(substring-after(registrinumber, ' '), 'V')]">
				<tr>
					<td>
						<xsl:value-of select="mark"/>
					</td>
					<td bgcolor="yellow">
							<xsl:value-of select="registrinumber"/>
					</td>
					<td>
						<xsl:value-of select="omanik"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<h2>Autod vaastaga rohkem kui 2010</h2>
		<table border="1" cellpadding="5" cellspacing="0" style="border-collapse: collapse">
			<tr>
				<th>Mark</th>
				<th>Registrinumber</th>
				<th>Omanik</th>
				<th>Vaasta</th>
			</tr>
			<xsl:for-each select="autod/auto[vaasta > 2010]">
				<tr>
					<td>
						<xsl:value-of select="mark"/>
					</td>
					<td>
						<xsl:value-of select="registrinumber"/>
					</td>
					<td>
						<xsl:value-of select="omanik"/>
					</td>
					<td bgcolor="green">
						<xsl:value-of select="vaasta"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<h3>Autode üldkogus, mis on vaata=2005</h3>
		<xsl:value-of select="count(autod/auto[vaasta=2005])"/>
		<hr></hr>
		<h2>1-Trüki välja (eralda komaga) auto regnumbri numbrite osa</h2>
		<xsl:for-each select="autod/auto">
			<xsl:value-of select="substring(registrinumber, 1, 3)"/>,
		</xsl:for-each>
		<hr></hr>
		<h2>2-Trüki välja (eralda komaga) omaniku nime viimane täht</h2>
		<xsl:for-each select="autod/auto">
			<xsl:value-of select="substring(omanik, string-length(omanik), 1)"/>,
		</xsl:for-each>
		
		<hr></hr>
		<h2>3-Auto omanikud, mis sisaldavad A täht:</h2>
		<xsl:for-each select="autod/auto[contains(omanik, 'A')]">
			<xsl:value-of select="omanik"/>,
		</xsl:for-each>
		<hr></hr>
		<h2>4-Leia mitme auto regmärgi numbritest viimane on 2</h2>
		<xsl:value-of select="count(autod/auto[substring(registrinumber, 3, 1) = '2'])"/>
		
		<hr></hr>
		<h2>5-Teata iga regnumbri puhul, millises kuus auto ülevaatusel</h2>
		<hr></hr>
		<h2>Autod tabelina</h2>
		<table border="1" cellpadding="5" cellspacing="0" style="border-collapse: collapse">
			<tr>
				<th>Reg Number</th>
				<th>Mark</th>
				<th>Väljastamise aasta</th>
				<th>Omanik</th>
				<th>Ülevaatuse kuu</th>
			</tr>
			<xsl:for-each select="autod/auto">
				<tr>
					<td>
						<xsl:value-of select="registrinumber"/>
					</td>
					<td>
						<xsl:value-of select="mark"/>
					</td>
					<td>
						<xsl:value-of select="vaasta"/>
					</td>
						<xsl:choose>
							<xsl:when test="contains(omanik, 'A')">
								<td bgcolor="yellow">
									<xsl:value-of select="omanik"/>
								</td>
							</xsl:when>
							<xsl:otherwise>
								<td>
									<xsl:value-of select="omanik"/>
								</td>
							</xsl:otherwise>
						</xsl:choose>
					
					
					<xsl:if test="(substring(registrinumber, 3, 1)+2)>=9">
					<td bgcolor="red">
						<xsl:value-of select="substring(registrinumber, 3, 1)+2"/>
					</td>
					</xsl:if>
						<xsl:if test="number(substring(registrinumber, 3, 1)+2) &lt; 9">
						<td bgcolor="green">
							<xsl:value-of select="substring(registrinumber, 3, 1)+2"/>
						</td>
					</xsl:if>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>