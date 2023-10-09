
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

WITH source_data AS (
  SELECT
    "REG.NO" AS Registration_number,
    "MAKE" AS BRAND,
    "MODEL" AS MODEL,
    "MONTH" AS VEHICLE_PROCURED_MONTH,
    "LAN NO" AS LOAN_ACCOUNT_NUMBER,
    "STATE" AS VEHICLE_PROCURED_STATE,
    "CITY" AS VEHICLE_PROCURED_CITY,
    "FINANCER" AS FINANCIER,
    "PLATFORM" AS VEHICLE_PROCURED_PLATFORM,
    "CATEGORY" AS VEHICLE_CATEGORY,
    "YEAR" AS VEHICLE_MANUFACTURED_YEAR,
    "RC AVAILABILITY" AS RC_AVAILABILITY_STATUS,
    "COST" AS PROCURED_COST,
    "A/C NO." AS PROCUREMENT_PAYMENT_ACCOUNT,
    "IFSC" AS PROCUREMENT_PAYMENT_IFSC,
    "A/C NAME" AS PROCUREMENT_PAYMENT_ACCOUNT_NAME,
    "PARTICULARS" AS PROCUREMENT_PAYMENT_PARTICULARS,
    "CONFIRMATION DATE" AS CUSTOMER_CONFIRMED_DATE,
    "PAYMENT DATE" AS PROCUREMENT_PAYMENT_DATE,
    "OWNERSHIP DATE" AS PROCUREMENT_OWNERSHIP_DATE,
    "PAYMENT STATUS" AS PROCUREMENT_PAYMENT_STATUS,
    "VEHICLE RECEIVED" AS PROCUREMENT_VEHICLE_RECEIVED_STATUS,
    "REVEIVED DATE" AS PROCUREMENT_VEHICLE_RECEIVED_DATE,
    "RC RECEIVED" AS PRESALE_RC_RECEIVED_STATUS,
    "RC RECEIVED DATE" AS PRESALE_RC_RECEIVED_DATE,
    "NOC RECEIVED" AS PRESALE_NOC_RECEIVED_STATUS,
    "NOC RECEIVED DATE" AS PRESALE_NOC_RECEIVED_DATE,
    "CONFIRMATION LINK" AS PROCUREMENT_CONFIRMATION_LINK,
    "REMAKRS" AS PROCURED_REMARKS,
    "PICK UP" AS PROCUREMENT_PICKUP_LOCATION,
    "DROP" AS PROCUREMENT_DROP_LOCATION,
    "REFUND DATE" AS PROCUREMENT_REFUND_DATE,
    "UTR DETAILS" AS PROCUREMENT_UTR_DETAILS,
    "MODE OF PAYMENT" AS PROCUREMENT_REFUND_PAYMENT_MODE,
    "CHALLAN" AS PROCUREMENT_CHALLAN_AMOUNT,
    "PAAS" AS PROCUREMENT_PAAS_STATUS,
    "RTO CODE" AS VEHICLE_RTO_CODE,
    "RTO ZONE" AS VEHICLE_RTO_ZONE,
    "RTO CITY" AS VEHICLE_RTO_CITY,
    "RETAIL DECISION" AS VEHICLE_RETAIL_DECISION
  FROM RAW_DATA.CONFIRMATIONS

)

SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
