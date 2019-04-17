CREATE OR REPLACE function register_user_on_activity(user_id bigint, activity_id bigint) 
	RETURNS registration AS $$
	declare
		res_registration registration%rowtype;
	begin
		select * into res_registration from registration 
		where user_id = in_user_id and activity_id = in_activity_id ; 
		if FOUND then 
			raise exception 'registration_already_exists' ; 
		end if;
		insert into registration (id,user_id, activity_id)
		values(nextval('id_generator'),in_user_id, in_activity_id);
		
		select* into res_registration from registration
		where user_id = in_user_id and activity_id = in_activity_id ;
		return res_registration;
	end; 
$$ language plpgsql