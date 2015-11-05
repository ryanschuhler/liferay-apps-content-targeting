<#assign aui = PortletJspTagLibs["/META-INF/aui.tld"] />
<#assign liferay_ui = PortletJspTagLibs["/META-INF/liferay-ui.tld"] />

<#setting number_format="computer">

<@aui["fieldset"]>
	<@aui["select"] name="industry">
		<@aui["option"] label="tech" selected=(industry == "tech") value="tech" />
		<@aui["option"] label="education" selected=(industry == "education") value="education" />
		<@aui["option"] label="government" selected=(industry == "government") value="government" />
	</@>
</@>
