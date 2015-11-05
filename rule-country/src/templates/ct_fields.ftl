<#assign aui = PortletJspTagLibs["/META-INF/aui.tld"] />
<#assign liferay_ui = PortletJspTagLibs["/META-INF/liferay-ui.tld"] />

<#setting number_format="computer">

<@aui["fieldset"]>
	<@aui["select"] name="country">
		<@aui["option"] label="brazil" selected=(country == "brazil") value="brazil" />
		<@aui["option"] label="china" selected=(country == "china") value="china" />
		<@aui["option"] label="germany" selected=(country == "germany") value="germany" />
		<@aui["option"] label="spain" selected=(country == "spain") value="spain" />
		<@aui["option"] label="united-states" selected=(country == "united-states") value="united-states" />
	</@>
</@>
