USE CAVE_TEST;

select p.id as person_id, p.name, p.address_id as person_address_id, a.id as address_id, a.street from person p, address a
where p.address_id=a.id
