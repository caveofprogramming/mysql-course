use CAVE_HEALTH_SURVEY;

select su.id, country, age, sm.question as smoking, e.question as exercise
 from survey su
join smoke sm on su.smoke=sm.id
join exercise e on su.exercise=e.id;
