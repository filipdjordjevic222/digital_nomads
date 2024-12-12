-- Weather, crime index, cost of living
SELECT w.`country`, w.`city`, w.`jan`, w.`feb`, w.`mar`, w.`apr`, w.`may`, w.`jun`, w.`jul`, w.`aug`, w.`sep`, w.`oct`, w.`nov`, w.`dec`, 
       c.`crime_index`, c.`population`, 
       col.`rent_index`, col.`groceries_index`, col.`local_purchasing_power`
FROM `weather` w
JOIN `crime_rate` c ON w.`country` = c.`country`
JOIN `cost_of_living_countries` col ON w.`country` = col.`country`;

-- cost of living and nomad visa

SELECT col.`country`, col.`rent_index`, col.`groceries_index`, col.`local_purchasing_power`, 
       n.`taxes`, n.`tax-free_period`, n.`internet_speed`, n.`min_income`
FROM `cost_of_living_countries` col
JOIN `nomad_visa` n ON col.`country` = n.`country`;

-- Countries in december, januar, february hoter than 23
SELECT `country`, `city`, `dec`, `jan`, `feb`
FROM `weather`
WHERE `dec` > 23 AND `jan` > 23 AND `feb` > 23;

-- best internet 
SELECT `country`, `internet_speed`
FROM `nomad_visa`
ORDER BY `internet_speed` DESC;