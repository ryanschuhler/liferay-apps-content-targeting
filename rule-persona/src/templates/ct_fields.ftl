<#assign aui = PortletJspTagLibs["/META-INF/aui.tld"] />
<#assign liferay_ui = PortletJspTagLibs["/META-INF/liferay-ui.tld"] />

<#setting number_format="computer">

<@aui["fieldset"]>
	<@aui["select"] name="persona">
		<@aui["option"] label="business-decision-maker" selected=(persona == "business-decision-maker") value="business-decision-maker" />
		<@aui["option"] label="business-end-user" selected=(persona == "business-end-user") value="business-end-user" />
		<@aui["option"] label="technical-decision-maker" selected=(persona == "technical-decision-maker") value="technical-decision-maker" />
		<@aui["option"] label="technical-end-user" selected=(persona == "technical-end-user") value="technical-end-user" />
	</@>
</@>
