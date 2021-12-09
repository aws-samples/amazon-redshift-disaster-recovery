-- Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
-- SPDX-License-Identifier: MIT-0

create table sales.listing(
	listid integer not null distkey,
	sellerid integer not null,
	eventid integer not null,
	dateid smallint not null  sortkey,
	numtickets smallint not null,
	priceperticket decimal(8,2),
	totalprice decimal(8,2),
	listtime timestamp
);

copy sales.listing from 's3://<bucket-name>/listings_pipe.txt' 
iam_role '<redshift-iam-role>' 
delimiter '|' 
region '<secondary-region>';