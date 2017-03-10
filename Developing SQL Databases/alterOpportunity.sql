ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN OpportunityID int NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ADD PRIMARY KEY(OpportunityID);

ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN ProspectID int NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ADD CONSTRAINT DateRaised_ck CHECK (DateRaised=getDate());

ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN DateRaised datetime NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN Likelihood tinyint NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN Rating char(1) NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ALTER COLUMN EstimatedClosingDate date NOT NULL;

ALTER TABLE DirectMarketing.Opportunity
ALTER Column EstimatedRevenue decimal(10,2) NOT NULL;