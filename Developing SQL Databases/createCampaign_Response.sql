CREATE TABLE Campaign_Response
(
ResponseOccuredWhen datetime NOT NULL PRIMARY KEY,
RelevantProspect int NULL,
RespondedHow varchar(8) NOT NULL,
CONSTRAINT chk_Response CHECK (RespondedHow IN ('phone','email','fax','letter')),
ChargeFromReferrer float NOT NULL,
RevenueFromResponse float NOT NULL,
ResponseProfit AS RevenueFromResponse-ChargeFromReferrer PERSISTED
);
GO