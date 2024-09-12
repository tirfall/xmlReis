<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Reiside Ülevaade</h1>
				<xsl:for-each select="Reisid/Reis">
					<h2>
						<xsl:value-of select="Sihtkoht"/>
					</h2>
					<ul>
						<li>
							<strong>Lahtekoht:</strong>
							<xsl:value-of select="Lahtekoht"/>
						</li>
						<li>
							<strong>Alguskuupäev:</strong>
							<xsl:value-of select="Alguskuupaev"/>
						</li>
						<li>
							<strong>Lõppkuupäev:</strong>
							<xsl:value-of select="Loppkuupaev"/>
						</li>
						<li>
							<strong>Hind:</strong>
							<xsl:value-of select="Hind"/>
						</li>
						<li>
							<strong>Kohad:</strong>
							<xsl:value-of select="Kohad"/>
						</li>
						<li>
							<strong>Aeg algus:</strong>
							<xsl:value-of select="Aegalgus"/>
						</li>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
