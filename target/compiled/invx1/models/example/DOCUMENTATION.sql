

WITH source_data AS (
 SELECT
 UPPER("RC_NUMBER") AS REGISTRATION_NUMBER,
 "STATUS" AS VEHICLE_CURRENT_STATUS,
 "LOCATION" AS VEHICLE_PROCURED_STATE,
 "VEHICLE DELIVERED ON" AS VEHICLE_DELIVERED_DATE,
 "REGISTRATION_DATE" AS VEHICLE_REGISTRATION_DATE,
 "OWNER_NAME" AS VEHICLE_CURRENT_OWNER_NAME,
 "OWNER_NUMBER" AS VEHICLE_OWNERSHIP_NUMBER,
 "VEHICLE_CHASI_NUMBER" AS VEHICLE_CHASIS_NUMBER,
 "VEHICLE_ENGINE_NUMBER" AS VEHICLE_ENGINE_NUMBER,
 "MAKER_DESCRIPTION" AS BRAND,
   "MAKER_MODEL" AS MODEL,
 "INSURANCE_UPTO" AS INSURANCE_EXPIRY_DATA,
 "REGISTERED_AT" AS VEHICLE_REGISTERED_RTO,
 "PAAS DOCS HANDOVER" AS DOCUMENTS_HANDOVER_TO_PAAS,
 "FRC / DRC REQUIRED" AS RC_CURRENT_STATUS,
 "APPLIED DATE" AS PRESALE_RC_APPLIED_DATE,
 "VENDOR SUBMITTED" AS PRESALE_RC_APPLICATION_SUMBITTED_TO,
 "RECEIVED DATE" AS PRESALE_RC_RECEIVED_DATE,
 "COST" AS RC_APPLICATION_COST,
 "BUYER DOCS STATUS" AS POSTSALE_BUYER_KYC,
 "RECEIVED DATE1" AS BUYER_KYC_RECEIVED_DATE,
 "SOLD SOURCE" AS SOLD_VEHICLE_SOURCE,
 "FINANCIER NAME" AS SOLD_VEHICLE_FINANCIER_NAME,
 "FORM 34 STATUS" AS FORM_34_STATUS,
 "APPLIED FOR PURPOSE" AS POSTSALE_APPLICATION_PURPOSE,
 "APPLIED DATE1" AS POSTSALE_DOCS_APPLIED_DATE,
 "SUBMITTED TO" AS POSTSALE_DOCS_SUBMITTED_TO,
 "RECEIVED DATE2" AS POSTSALE_DOCS_RECEIVED_DATE,
 "COST SPENT" AS POSTSALE_DOCUMENTATION_COST
 FROM RAW_DATA.DOCUMENTATION

)

SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null