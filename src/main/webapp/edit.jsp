<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects/>
<portlet:actionURL var="actionURL"/>

<%
    PortletPreferences prefs = renderRequest.getPreferences();
    Boolean doHeader = Boolean.parseBoolean(prefs.getValue("doGameHeader", "true"));
    Boolean doText = Boolean.parseBoolean(prefs.getValue("doGameText", "false"));
    Boolean doCommentsInMove = Boolean.parseBoolean(prefs.getValue("doCommentsInMove", "false"));
    Boolean doGameButtons = Boolean.parseBoolean(prefs.getValue("doGameButtons", "true"));
    Boolean doCommentsOnSeperateLines = Boolean.parseBoolean(prefs.getValue("doCommentsOnSeperateLines", "false"));
    Boolean doStartAutoPlay = Boolean.parseBoolean(prefs.getValue("doStartAutoPlay", "false"));
    String pgnURL = prefs.getValue("pgnURL","");
%>

<aui:form action="<%= actionURL %>" method="post">
    <aui:input label="doGameHeader" type="checkbox" name="doGameHeader" checked="<%= doHeader %>"/>
    <aui:input label="doGameText" type="checkbox" name="doGameText" checked="<%= doText %>"/>
    <aui:input label="doCommentsInMove" type="checkbox" name="doCommentsInMove" checked="<%= doCommentsInMove %>"/>
    <aui:input label="doGameButtons" type="checkbox" name="doGameButtons" checked="<%= doGameButtons %>"/>
    <aui:input label="doCommentsOnSeperateLines" type="checkbox" name="doCommentsOnSeperateLines" checked="<%= doCommentsOnSeperateLines %>"/>
    <aui:input label="doStartAutoPlay" type="checkbox" name="doStartAutoPlay" checked="<%= doStartAutoPlay %>"/>
    <aui:input label="pgnURL" type="input" name="pgnURL" value="<%= pgnURL %>"/>
    <aui:button type="submit"/>
</aui:form>
