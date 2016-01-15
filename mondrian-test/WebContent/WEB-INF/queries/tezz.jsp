<%@ page session="true" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver"
	jdbcUrl="jdbc:mysql://192.168.1.221/demo_mondriad"
	catalogUri="/WEB-INF/queries/tezz.xml" jdbcUser="test" jdbcPassword=""
	connectionPooling="false">
    select {[Measures].[account],[Measures].[avgPrice],[Measures].[totalT]} ON columns,
       {([productCatalog].[allProduct],[customerGender].[allGender])} ON rows
    from [Sales]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Sales</c:set>