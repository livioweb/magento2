insert into `webshopapps_matrixrate`
(   `dest_country_id`, `dest_region_id`, `dest_city`,
    `dest_zip`, `dest_zip_to`, `condition_name`,
    `condition_from_value`, `condition_to_value`, `price`,
     `shipping_method`)
 VALUES (
    'BR', '493', '',
    '65000000', '65099999', '',
    '0.0000', '0.0000',  '0.0000',
    'Standard');

-- FULL
insert into `webshopapps_matrixrate`
(`pk`, `website_id`, `dest_country_id`, `dest_region_id`, `dest_city`, `dest_zip`, `dest_zip_to`, `condition_name`,
 `condition_from_value`, `condition_to_value`, `price`, `cost`, `shipping_method`)
 VALUES (NULL, '0', '0', '0', '', '*', '*', '', '0.0000', '0.0000', '0.0000', '0.0000', '');

