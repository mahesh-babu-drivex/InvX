
  
    

        create or replace transient table INVX_DATABASE.CLEANED_DATA.DTC
         as
        (

WITH source_data AS (
  SELECT
    "MAKE" AS BRAND,
    UPPER("VEHICLE RC") AS REGISTRATION_NUMBER,
    "MODEL" AS MODEL,
    "KEY COUNT" AS VEHICLE_KEYS_AVAILABLE_COUNT,
    "CHASIS NO" AS VEHICLE_CHASIS_NUMBER,
    "ENGINE NO" AS VEHICLE_ENGINE_NUMBER,
    "RETAIL / WHOLESALE" AS VEHICLE_TO_RETAIL_OR_WHOLESALE,
    "RC AVAILABILITY AT SOURCE" AS RC_AVAILABILITY_AT_SOURCE,
    "DTC NAME" AS DTC_CENTER_NAME,
    "DTC IN DATE(DD/MM/YY)" AS DTC_VEHICLE_ARRIVED_DATE,
    "YEAR" AS VEHICLE_MANUFACTURED_YEAR,
    "L2 DATE (DD/MM/YY)" AS L2_INSPECTION_DATE,
    "ESTIMATION DATE" AS ESTIMATED_REFURB_DATE,
    "APPROVAL DATE" AS ESTIMATION_APPROVAL_DATE,
    "BAY ALLOCATION" AS BAY_ALLOCATION_DATE,
    "PRODUCTION DATE" AS REFURB_COMPLETED_DATE,
    "DTC OUT DATE" AS DTC_OUT_DATE,
    "ESTIMATED SPARES COUNT" AS ESTIMATED_SPARES_COUNT,
    "ESTIMATION AMOUNT" AS ESTIMATED_REFURB_COST,
    "WORK END" AS WORK_END_DATE,
    "TECHNICIAN NAME (END WORK)" AS TECHNICIAN_NAME,
    "LUBRICATIONS :" AS LUBRICATIONS_COST,
    "BATTERY :" AS BATTERY_COST,
    "TIRE :" AS TIRE_COST,
    "SPARES:" AS SPARES_COST,
    "PAINT, TINKER, & OTHERS :" AS PAINT_TINKER_OTHERS_COST,
    "OUTSIDE WORK :" AS OUTSIDE_WORK_COST,
    "TOTAL RF COST:" AS TOTAL_REFURB_COST,
    "STATUS" AS REFURBISHMENT_STATUS,
    "REMARKS" AS REFURB_REMARKS
  FROM RAW_DATA.DTC

)

SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
        );
      
  