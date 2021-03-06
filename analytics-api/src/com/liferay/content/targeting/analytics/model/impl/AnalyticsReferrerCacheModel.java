/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
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

package com.liferay.content.targeting.analytics.model.impl;

import com.liferay.content.targeting.analytics.model.AnalyticsReferrer;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/**
 * The cache model class for representing AnalyticsReferrer in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see AnalyticsReferrer
 * @generated
 */
public class AnalyticsReferrerCacheModel implements CacheModel<AnalyticsReferrer>,
	Externalizable {
	@Override
	public String toString() {
		StringBundler sb = new StringBundler(9);

		sb.append("{analyticsReferrerId=");
		sb.append(analyticsReferrerId);
		sb.append(", analyticsEventId=");
		sb.append(analyticsEventId);
		sb.append(", referrerClassName=");
		sb.append(referrerClassName);
		sb.append(", referrerClassPK=");
		sb.append(referrerClassPK);
		sb.append("}");

		return sb.toString();
	}

	@Override
	public AnalyticsReferrer toEntityModel() {
		AnalyticsReferrerImpl analyticsReferrerImpl = new AnalyticsReferrerImpl();

		analyticsReferrerImpl.setAnalyticsReferrerId(analyticsReferrerId);
		analyticsReferrerImpl.setAnalyticsEventId(analyticsEventId);

		if (referrerClassName == null) {
			analyticsReferrerImpl.setReferrerClassName(StringPool.BLANK);
		}
		else {
			analyticsReferrerImpl.setReferrerClassName(referrerClassName);
		}

		analyticsReferrerImpl.setReferrerClassPK(referrerClassPK);

		analyticsReferrerImpl.resetOriginalValues();

		return analyticsReferrerImpl;
	}

	@Override
	public void readExternal(ObjectInput objectInput) throws IOException {
		analyticsReferrerId = objectInput.readLong();
		analyticsEventId = objectInput.readLong();
		referrerClassName = objectInput.readUTF();
		referrerClassPK = objectInput.readLong();
	}

	@Override
	public void writeExternal(ObjectOutput objectOutput)
		throws IOException {
		objectOutput.writeLong(analyticsReferrerId);
		objectOutput.writeLong(analyticsEventId);

		if (referrerClassName == null) {
			objectOutput.writeUTF(StringPool.BLANK);
		}
		else {
			objectOutput.writeUTF(referrerClassName);
		}

		objectOutput.writeLong(referrerClassPK);
	}

	public long analyticsReferrerId;
	public long analyticsEventId;
	public String referrerClassName;
	public long referrerClassPK;
}