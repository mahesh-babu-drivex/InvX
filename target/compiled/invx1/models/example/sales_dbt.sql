

with source_data as (
    SELECT 
    "STATE" AS VEHICLE_REGISTERED_STATE,
    "RTO" AS VEHICLE_RTO_CITY,
    "TOTAL VEHICLE MASTER" AS REGISTRATION_NUMBER,
    "JOURNEY COMPLETE?" AS VEHICLE_JOURNEY_STATUS,
    "VEHICLE" AS MODEL,
    "QC PASSED" AS QC_PASSED_DATE,
    "DELIVERY DATE" AS VEH_DELIVERY_DATA,
    "FLOOR STOCK" AS FLOOR_STOCK_VEHICLE,
    "RECEIVED LOCATION" AS VEHICLE_RECEIVED_LOCATION,
    "RC STATUS" AS RC_CURRENT_STATUS,
    "RETAIL SELECTION" AS RETAIL_NAME,
    "FOFO FREEZING" AS fOFO_FREEZING,
    "COCO FREEZING" AS COCO_FREEZING,
    "PAAS FREEZING" AS PAAS_FREEZING,
    "VEHICLE AVAILABLE?" AS VEHICLE_AVILABLILITY_FOR_SALE,
    "REFURB(Y/N)" AS VEHICLE_REFURB_STATUS,
    "PROCUREMENT SOURCE" AS PROCUREMENT_SOURCE,
    "REQUEST DATE" AS VEHICLE_FREEZING_REQUEST_DATE,
    "TENTATIVE SALES" AS VEHICLE_TENTATIVE_SALE,
    "RC LOCATION" AS RC_LOCATION,
    "MANF YR" AS VEHICLE_MANUFACTURED_YEAR,
    "OWNER" AS VEHICLE_OWNERSHIP_NUMBER,
    "DECISION" AS VEHICLE_RETAIL_DECISION,
    "YARD LOCATION" AS VEHICLE_YARD_LOCATION,
    "PROCUREMENT" AS VEHICLE_PROCURED_DATE,
    "LEAD TIME FOR RC" AS LEAD_TIME_FOR_RC,
    "AGEING" AS AGE_FROM_PROCUREMENT_TILLDATE

    FROM RAW_DATA."VEH MAPING LIST"
)

SELECT * FROM source_data