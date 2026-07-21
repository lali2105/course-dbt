WITH raw_listing AS (
      select * from  airbnb.raw.raw_listings
)
SELECT 
 id as listing_id,
 name as listing_name,
 room_type,
 minimum_nights,
 host_id,
 price AS price_str,
 created_at,
 updated_at
FROM
 raw_listing