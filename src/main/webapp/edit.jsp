<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects/>
<portlet:actionURL var="actionURL"/>

<%
    PortletPreferences prefs = renderRequest.getPreferences();
    Boolean doHeader = Boolean.parseBoolean(prefs.getValue("doGameHeader", "true"));
    Boolean doText = Boolean.parseBoolean(prefs.getValue("doGameText", "false"));
    String pgnURL = prefs.getValue("pgnURL","");
%>

<aui:form action="<%= actionURL %>" method="post">
    <aui:input label="doGameHeader" type="checkbox" name="doGameHeader" checked="<%= doHeader %>"/>
    <aui:input label="doGameText" type="checkbox" name="doGameText" checked="<%= doText %>"/>
    <aui:input label="pgnURL" type="input" name="pgnURL" value="<%= pgnURL %>"/>
    <aui:button type="submit"/>
</aui:form>
