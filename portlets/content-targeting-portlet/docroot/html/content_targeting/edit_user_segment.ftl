<#--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
-->

<#include "../init.ftl" />

<#assign redirect = paramUtil.getString(request, "redirect")>
<#assign userSegmentId = paramUtil.getLong(request, "userSegmentId")>

<@liferay_ui["header"]
	backURL="${redirect}"
	title="new-user-segment"
/>

<@portlet["actionURL"] name="updateUserSegment" var="addUserSegmentURL" />

<@aui["form"] action="${addUserSegmentURL}" method="post" name="fm">
	<@aui["input"] name="redirect" type="hidden" value="${redirect}" />
	<@aui["input"] name="userSegmentId" type="hidden" value=userSegmentId />

	<@aui["model-context"] bean=userSegment model=userSegmentClass />

	<@aui["input"] name="name" />

	<@aui["input"] name="description" />

	<h4><@liferay_ui["message"] key="rules" /></h4>

	<@liferay_ui["icon-menu"] direction="right" icon="../aui/plus" message="add-rule" showWhenSingleIcon=true>
		<#list rules as rule>
			<#assign addRuleInstanceURL = renderResponse.createRenderURL()>

			${addRuleInstanceURL.setParameter("mvcPath", contentTargetingPath.EDIT_RULE)}
			${addRuleInstanceURL.setParameter("redirect", currentURL)}
			${addRuleInstanceURL.setParameter("ruleKey", rule.getRuleKey())}
			${addRuleInstanceURL.setParameter("userSegmentId", userSegmentId?string)}

			<@liferay_ui["icon"]
				image="${rule.getIcon()}"
				message="${rule.getName()}"
				url="${addRuleInstanceURL}"
			/>
		</#list>
	</@>

	<@aui["button-row"]>
		<@aui["button"] type="submit" />
	</@>
</@>