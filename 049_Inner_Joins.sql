use CAVE_TEST;

select p.id as person_id, p.name, p.address_id as person_address_id, a.id as address_id, a.street from person p
inner join address a on a.id=p.address_id
