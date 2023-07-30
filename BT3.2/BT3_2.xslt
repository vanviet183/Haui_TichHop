<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="congty">
		<html>
			<head>
				<link ref="stylesheet" type="text/css" href="style.css"></link>
			</head>
			<body>
				<h1 class="tieude">Bang Luong Thang</h1>
					<h2>Tên công ty:
						<xsl:value-of select="@tencty"/>
					</h2>
				<xsl:for-each select="donvi">
					<h2>
						Tên đơn vị:
						<xsl:value-of select="tendv"/>
					</h2>
					<h2>
						Điện thoại:
						<xsl:value-of select="dienthoai"/>
					</h2>
					<h2>DANH SÁCH NHÂN VIÊN</h2>
					<table border="2" width="100%">
						<tr>
							<th>SỐ TT</th>
							<th>Họ tên</th>
							<th>Ngày sinh</th>
							<th>Ngày công</th>
							<th>Lương</th>
						</tr>
						<xsl:for-each select="nhanvien">
							<tr>
								<td>
									<xsl:value-of select="position()"/>
								</td>
								<td>
									<xsl:value-of select="hoten"/>
								</td>
								<td>
									<xsl:value-of select="ngaysinh"/>
								</td>
								<td>
									<xsl:value-of select="ngaycong"/>
								</td>
								<td>
									<xsl:choose>
										<xsl:when test="ngaycong &lt;= 20">
											<xsl:value-of select="ngaycong * 150000"/>
										</xsl:when>
										<xsl:when test="ngaycong &lt;= 25">
											<xsl:value-of select="20 * 150000 + (ngaycong - 20) * 200000"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="20 * 150000 + 5 * 200000 + (ngaycong - 25) * 250000"/>
										</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
