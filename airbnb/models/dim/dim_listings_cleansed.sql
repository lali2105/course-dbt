WITH  src_listing AS ( 
    SELECT * FROM  {{ ref('src_listings')}}
)
SELECT 
    listing_id,
    listing_name,
    room_type AS ROOM_TYPE,
    CASE WHEN MINIMUM_NIGHTS = 0 THEN  1
    ELSE COALESCE(MINIMUM_NIGHTS, 1)
    END AS MINIMUM_NIGHTS,
    HOST_ID,
    REPLACE( PRICE_STR, '$'):: NUMBER (10,2) AS PRICE,
    CREATED_AT,
    UPDATED_AT

FROM  SRC_LISTINGS
