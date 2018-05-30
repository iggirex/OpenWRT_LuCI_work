<%#

$Id$

-%>

<%-
local fs = require"nixio.fs"
local jsonFile = fs.readfile("/etc/config/zl_systeminfo")
local testVar = "THIS IS TESTVAR"
-%>

<script type="text/javascript">
	console.log('testing 123')
	console.log(jsonFile)
</script>

<%+header%>

<% write(testVar) %>

<% write(jsonFile) %>

<%# <% jsonFile %> %>

<%# 
<h2><% (jsonFile) %></h2> -- this breaks the webpage
%>

<%+footer%>
