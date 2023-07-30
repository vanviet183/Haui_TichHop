<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="congty">
		<html>
			<head>
				<link ref="stylesheet" type="text/css" href="/style.css"></link>
			</head>
			<body>
				<h1 class="tieude">Bang Luong Thang 11-2020</h1>
				<xsl:for-each select="donvi">
					<h2>Mã đơn vị: 
						<xsl:value-of select="@madv"/>
					</h2>
					<h2>Tên đơn vị: 
						<xsl:value-of select="tendv"/>
					</h2>
					<h2>Điện thoại:
						<xsl:value-of select="dienthoai"/>
					</h2>
					<h2>DANH SÁCH NHÂN VIÊN</h2>
					<table border="2" width="100%">
						<tr>
							<th>SỐ TT</th>
							<th>MÃ NV</th>
							<th>HỌ TÊN</th>
							<th>NGÀY SINH</th>
							<th>HS LƯƠNG</th>
							<th>LƯƠNG</th>
						</tr>
						<xsl:for-each select="nhanvien[hsluong>=3]">
							<tr>
								<td>
									<xsl:value-of select="position()"/>
								</td>
								<td>
									<xsl:value-of select="manv"/>
								</td>
								<td>
									<xsl:value-of select="hoten"/>
								</td>
								<td>
									<xsl:value-of select="ngaysinh"/>
								</td>
								<td>
									<xsl:value-of select="hsluong"/>
								</td>
								<td>
									<xsl:value-of select="hsluong*730000"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
					<h2 align="right">THỦ TƯỚNG ĐƠN VỊ</h2>
				</xsl:for-each>
				
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>
