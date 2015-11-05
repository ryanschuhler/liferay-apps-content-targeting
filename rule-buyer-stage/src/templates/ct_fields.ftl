<#assign aui = PortletJspTagLibs["/META-INF/aui.tld"] />
<#assign liferay_ui = PortletJspTagLibs["/META-INF/liferay-ui.tld"] />

<#setting number_format="computer">

<@aui["fieldset"]>
	<@aui["select"] name="buyer-stage">
		<@aui["option"] label="awareness" selected=(buyerStage == "awareness") value="awareness" />
		<@aui["option"] label="education" selected=(buyerStage == "education") value="education" />
		<@aui["option"] label="evaluation" selected=(buyerStage == "evaluation") value="evaluation" />
		<@aui["option"] label="justifcation" selected=(buyerStage == "justifcation") value="justifcation" />
		<@aui["option"] label="purchase" selected=(buyerStage == "purchase") value="purchase" />
	</@>
</@>



