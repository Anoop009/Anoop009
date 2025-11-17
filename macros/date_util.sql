{% macro myfunction1(x) %}

case when to_timestamp({{x}}) < CURRENT_DATE then 'PAST' ELSE 'FUTURE' END 
{% endmacro %}

{% macro day_type(x) %}

case when
dayname(to_timestamp({{x}})) in ('Sat','Sun') then 'Weekend'
else 'Business day' end 

{% endmacro %}



{% macro season(x) %}
CASE when month(to_timestamp({{x}})) in (12,1,2) then 'Winter'
     when month(to_timestamp({{x}})) in (3,4,5) then 'Spring'
     when month(to_timestamp({{x}})) in (6,7,8) then 'Summer'
     else 'Autumn' end

{% endmacro %}