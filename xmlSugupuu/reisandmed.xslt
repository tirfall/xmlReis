<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Reiside Ülevaade</h1>
				<xsl:for-each select="Reisid/Reis">
					<xsl:if test="contains(Transport, 'lennureis')">
						<h2 style="background-color:yellow;">
							<xsl:value-of select="kohad/Sihtkoht"/>
						</h2>
						<ul>
							<li style="background-color:yellow;">
								<strong>Lahtekoht:</strong>
								<xsl:value-of select="kohad/Lahtekoht"/>
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
								<xsl:if test="number(translate(Hind, ',', '.')) &gt; 100">
									<xsl:value-of select="Hind"/>
								</xsl:if>
								<xsl:if test="number(translate(Hind, ',', '.')) &lt; 100">
									<a style="color:red;">
										<xsl:value-of select="Hind"/>
									</a>
								</xsl:if>
							</li>
							<li>
								<strong>Ekskursioonid hind:</strong>
								<xsl:value-of select="Ekskursioonid"/>
							</li>
							<li>
								<strong>Üld hind:</strong>
								<xsl:value-of select="Ekskursioonid"/>
							</li>
							<li>
								<strong>Kohad:</strong>
								<xsl:value-of select="Kohad"/>
							</li>
							<li>
								<strong>Aeg algus:</strong>
								<xsl:value-of select="Aegalgus"/>
							</li>
							<li>
								<strong>Transport:</strong>
								<xsl:value-of select="Transport"/>
							</li>
						</ul>
					</xsl:if>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
