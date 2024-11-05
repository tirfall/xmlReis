<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<style>
					table {
						width: 100%;
						border-collapse: collapse;
					}
					th, td {
						border: 1px sotdd #ddd;
						padding: 8px;
					}
					th {
						background-color: #f2f2f2;
						text-atdgn: left;
					}
					tr:nth-child(even) {
						background-color: #f9f9f9;
					}
					tr:nth-child(odd) {
						background-color: #ffffff;
					}
					tr:hover {
						background-color: #e2e2e2;
					}
				</style>
			</head>
			<body>
				<h1>Reiside Ülevaade</h1>
				<table>
					<tr>
						<th>
							<strong>Sihtkoht:</strong>
						</th>
						<th><strong>Lahtekoht:</strong></th>
						<th><strong>Alguskuupäev:</strong></th>
						<th><strong>Lõppkuupäev:</strong></th>
						<th><strong>Hind:</strong></th>
						<th><strong>Ekskursioonid hind:</strong></th>
						<th><strong>Üld hind:</strong></th>
						<th><strong>Kohad:</strong></th>
						<th><strong>Aeg algus:</strong></th>
						<th><strong>Transport:</strong></th>
					</tr>
					
				<xsl:for-each select="Reisid/Reis">
					<xsl:sort select="number(translate(Hind, ',', '.'))" data-type="number" order="ascending"/>
					<xsl:if test="contains(Transport, 'lennureis')">
						<tr>
							<td><h2 style="background-color:yellow;">
								<xsl:value-of select="kohad/Sihtkoht"/>
							</h2></td>
							
								<td style="background-color:yellow;">
									<xsl:value-of select="kohad/Lahtekoht"/>
								</td>
								<td>
									
									<xsl:value-of select="Alguskuupaev"/>
								</td>
								<td>
									
									<xsl:value-of select="Loppkuupaev"/>
								</td>
								<td>
									
									<xsl:if test="number(translate(Hind, ',', '.')) &gt; 100">
										<xsl:value-of select="Hind"/>
									</xsl:if>
									<xsl:if test="number(translate(Hind, ',', '.')) &lt;= 100">
										<a style="color:red;">
											<xsl:value-of select="Hind"/>
										</a>
									</xsl:if>
								</td>
								<td>
									
									<xsl:value-of select="Ekskursioonid"/>
								</td>
								<td>
									
									<xsl:value-of select="number(translate(Hind, ',', '.')) + number(translate(Ekskursioonid, ',', '.'))"/>
								</td>
								<td>
									
									<xsl:value-of select="Kohad"/>
								</td>
								<td>
									
									<xsl:value-of select="Aegalgus"/>
								</td>
								<td>
									
									<xsl:value-of select="Transport"/>
								</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
				</table>
			<h1>Reiside Ülevaade(erinev transport)</h1>
				<table>
					<tr>
						<th>
							<strong>Sihtkoht</strong>
						</th>
						<th><strong>Lahtekoht:</strong></th>
						<th><strong>Alguskuupäev:</strong></th>
						<th><strong>Lõppkuupäev:</strong></th>
						<th><strong>Hind:</strong></th>
						<th><strong>Ekskursioonid hind:</strong></th>
						<th><strong>Üld hind:</strong></th>
						<th><strong>Kohad:</strong></th>
						<th><strong>Aeg algus:</strong></th>
						<th><strong>Transport:</strong></th>
					</tr>
					
				<xsl:for-each select="Reisid/Reis">
					<xsl:sort select="number(translate(Hind, ',', '.'))" data-type="number" order="ascending"/>
					<xsl:if test="not(contains(Transport, 'lennureis'))">
						<tr>
							<td><h2 style="background-color:yellow;">
								<xsl:value-of select="kohad/Sihtkoht"/>
							</h2></td>
							
								<td style="background-color:yellow;">
									<xsl:value-of select="kohad/Lahtekoht"/>
								</td>
								<td>
									
									<xsl:value-of select="Alguskuupaev"/>
								</td>
								<td>
									
									<xsl:value-of select="Loppkuupaev"/>
								</td>
								<td>
									
									<xsl:if test="number(translate(Hind, ',', '.')) &gt; 100">
										<xsl:value-of select="Hind"/>
									</xsl:if>
									<xsl:if test="number(translate(Hind, ',', '.')) &lt;= 100">
										<a style="color:red;">
											<xsl:value-of select="Hind"/>
										</a>
									</xsl:if>
								</td>
								<td>
									
									<xsl:value-of select="Ekskursioonid"/>
								</td>
								<td>
									
									<xsl:value-of select="number(translate(Hind, ',', '.')) + number(translate(Ekskursioonid, ',', '.'))"/>
								</td>
								<td>
									
									<xsl:value-of select="Kohad"/>
								</td>
								<td>
									
									<xsl:value-of select="Aegalgus"/>
								</td>
								<td>
									
									<xsl:value-of select="Transport"/>
								</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
				</table>
			<h1>Reiside Ülevaade(kallemist odavamani ja kõik reisid)</h1>
				<table>
					<tr>
						<th>
							<strong>Sihtkoht:</strong>
						</th>
						<th><strong>Lahtekoht:</strong></th>
						<th><strong>Alguskuupäev:</strong></th>
						<th><strong>Lõppkuupäev:</strong></th>
						<th><strong>Hind:</strong></th>
						<th><strong>Ekskursioonid hind:</strong></th>
						<th><strong>Üld hind:</strong></th>
						<th><strong>Kohad:</strong></th>
						<th><strong>Aeg algus:</strong></th>
						<th><strong>Transport:</strong></th>
					</tr>
					
				<xsl:for-each select="Reisid/Reis">
					<xsl:sort select="number(translate(Hind, ',', '.'))" data-type="number" order="descending"/>
						<tr>
							<td><h2 style="background-color:yellow;">
								<xsl:value-of select="kohad/Sihtkoht"/>
							</h2></td>
							
								<td style="background-color:yellow;">
									<xsl:value-of select="kohad/Lahtekoht"/>
								</td>
								<td>
									
									<xsl:value-of select="Alguskuupaev"/>
								</td>
								<td>
									
									<xsl:value-of select="Loppkuupaev"/>
								</td>
								<td>
									
									<xsl:if test="number(translate(Hind, ',', '.')) &gt; 100">
										<xsl:value-of select="Hind"/>
									</xsl:if>
									<xsl:if test="number(translate(Hind, ',', '.')) &lt;= 100">
										<a style="color:red;">
											<xsl:value-of select="Hind"/>
										</a>
									</xsl:if>
								</td>
								<td>
									
									<xsl:value-of select="Ekskursioonid"/>
								</td>
								<td>
									
									<xsl:value-of select="number(translate(Hind, ',', '.')) + number(translate(Ekskursioonid, ',', '.'))"/>
								</td>
								<td>
									
									<xsl:value-of select="Kohad"/>
								</td>
								<td>
									
									<xsl:value-of select="Aegalgus"/>
								</td>
								<td>
									
									<xsl:value-of select="Transport"/>
								</td>
						</tr>
				</xsl:for-each>
				</table>
			<h1>Reiside Ülevaade(Ainult reisid kus hind>500)</h1>
				<table>
					<tr>
						<th>
							<strong>Sihtkoht:</strong>
						</th>
						<th><strong>Lahtekoht:</strong></th>
						<th><strong>Alguskuupäev:</strong></th>
						<th><strong>Lõppkuupäev:</strong></th>
						<th><strong>Hind:</strong></th>
						<th><strong>Ekskursioonid hind:</strong></th>
						<th><strong>Üld hind:</strong></th>
						<th><strong>Kohad:</strong></th>
						<th><strong>Aeg algus:</strong></th>
						<th><strong>Transport:</strong></th>
					</tr>
					
				<xsl:for-each select="Reisid/Reis">
					<xsl:sort select="number(translate(Hind, ',', '.'))" data-type="number" order="descending"/>
					<xsl:if test="number(translate(Hind, ',', '.')) &gt; 500">
						<tr>
							<td><h2 style="background-color:yellow;">
								<xsl:value-of select="kohad/Sihtkoht"/>
							</h2></td>
							
								<td style="background-color:yellow;">
									<xsl:value-of select="kohad/Lahtekoht"/>
								</td>
								<td>
									
									<xsl:value-of select="Alguskuupaev"/>
								</td>
								<td>
									
									<xsl:value-of select="Loppkuupaev"/>
								</td>
								<td>
									
									
										<xsl:value-of select="Hind"/>
									
								</td>
								<td>
									
									<xsl:value-of select="Ekskursioonid"/>
								</td>
								<td>
									
									<xsl:value-of select="number(translate(Hind, ',', '.')) + number(translate(Ekskursioonid, ',', '.'))"/>
								</td>
								<td>
									
									<xsl:value-of select="Kohad"/>
								</td>
								<td>
									
									<xsl:value-of select="Aegalgus"/>
								</td>
								<td>
									
									<xsl:value-of select="Transport"/>
								</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
