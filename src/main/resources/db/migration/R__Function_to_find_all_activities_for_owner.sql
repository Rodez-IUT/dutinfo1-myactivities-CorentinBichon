CREATE OR REPLACE FUNCTION find_all_activities_for_owner(nom varchar(500)) RETURNS SETOF activity AS $$
  select act.* 
  from activity act
  join "user" u
  on owner_id = u.id 
  where u.username = nom ;
$$ LANGUAGE SQL;