
  
    

        create or replace transient table INVX_DATABASE.CLEANED_DATA.DOCUMENTATION
         as
        (

WITH source_data AS (
 SELECT
 UPPER("RC_NUMBER"):: VARCHAR(50) AS REGISTRATION_NUMBER,
 "STATUS":: VARCHAR(200) AS VEHICLE_CURRENT_STATUS,
 "LOCATION":: VARCHAR(200) AS VEHICLE_PROCURED_STATE,
 "VEHICLE DELIVERED ON":: VARCHAR(50) AS VEHICLE_DELIVERED_DATE,
 "REGISTRATION_DATE":: VARCHAR(50) AS VEHICLE_REGISTRATION_DATE,
 "OWNER_NAME":: VARCHAR(200) AS VEHICLE_CURRENT_OWNER_NAME,
 "OWNER_NUMBER":: VARCHAR(20) AS VEHICLE_OWNERSHIP_NUMBER,
 "VEHICLE_CHASI_NUMBER":: VARCHAR(100) AS VEHICLE_CHASIS_NUMBER,
 "VEHICLE_ENGINE_NUMBER":: VARCHAR(100) AS VEHICLE_ENGINE_NUMBER,
 "MAKER_DESCRIPTION":: VARCHAR(100) AS BRAND,
   "MAKER_MODEL":: VARCHAR(200) AS MODEL,
 "INSURANCE_UPTO":: VARCHAR(200) AS INSURANCE_EXPIRY_DATA,
 "REGISTERED_AT":: VARCHAR(200) AS VEHICLE_REGISTERED_RTO,
 "PAAS DOCS HANDOVER":: VARCHAR(200) AS DOCUMENTS_HANDOVER_TO_PAAS,
 "FRC / DRC REQUIRED":: VARCHAR(100) AS RC_CURRENT_STATUS,
 "APPLIED DATE":: VARCHAR(50) AS PRESALE_RC_APPLIED_DATE,
 "VENDOR SUBMITTED":: VARCHAR(200) AS PRESALE_RC_APPLICATION_SUMBITTED_TO,
 "RECEIVED DATE":: VARCHAR(200) AS PRESALE_RC_RECEIVED_DATE,
 "COST":: VARCHAR(100) AS RC_APPLICATION_COST,
 "BUYER DOCS STATUS":: VARCHAR(200) AS POSTSALE_BUYER_KYC,
 "RECEIVED DATE1":: VARCHAR(200) AS BUYER_KYC_RECEIVED_DATE,
 "SOLD SOURCE":: VARCHAR(200) AS SOLD_VEHICLE_SOURCE,
 "FINANCIER NAME":: VARCHAR(200) AS SOLD_VEHICLE_FINANCIER_NAME,
 "FORM 34 STATUS":: VARCHAR(200) AS FORM_34_STATUS,
 "APPLIED FOR PURPOSE":: VARCHAR(200) AS POSTSALE_APPLICATION_PURPOSE,
 "APPLIED DATE1":: VARCHAR(200) AS POSTSALE_DOCS_APPLIED_DATE,
 "SUBMITTED TO":: VARCHAR(100) AS POSTSALE_DOCS_SUBMITTED_TO,
 "RECEIVED DATE2":: VARCHAR(50) AS POSTSALE_DOCS_RECEIVED_DATE,
 "COST SPENT":: VARCHAR(50) AS POSTSALE_DOCUMENTATION_COST,
 NULL AS FILES
 FROM RAW_DATA.DOCUMENTATION

)

SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/
        );
      
  