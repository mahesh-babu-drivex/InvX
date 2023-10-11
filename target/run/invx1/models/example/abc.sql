
  
    

        create or replace transient table INVX_DATABASE.CLEANED_DATA.abc
         as
        (-- configuring data type to table


with source_data as (
SELECT
    CAST("DELIVERY DATE" AS DATE) AS VEH_DELIVERY_DATE_DTC,
    CAST(UPPER("REG #") AS VARCHAR(255)) AS REGISTRATION_NUMBER,
    CAST("PER VEHICLE COST" AS INT) AS TRANSPORTATION_COST_PER_VEHICLE
FROM RAW_DATA.LOGISTICS
)

SELECT *
FROM source_data
        );
      
  