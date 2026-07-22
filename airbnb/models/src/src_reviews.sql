WITH raw_reviews AS (
      select * from  airbnb.raw.raw_reviews
)
SELECT 
{{ dbt_utils.generate_surrogate_key(['listing_id','date','reviewer_name'])}}  as review_id,
 listing_id,
 date as review_date,
 reviewer_name,
 comments as review_text,
 sentiment as review_sentiment
FROM
 raw_reviews