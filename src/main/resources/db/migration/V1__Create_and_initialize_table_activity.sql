-- Create table activity and insert some rows

CREATE TABLE public.activity
(
  id bigint NOT NULL PRIMARY KEY,
  title character varying(200) NOT NULL,
  description text,
  creation_date timestamp NOT NULL DEFAULT now(),
  modification_date timestamp NOT NULL DEFAULT now()
);

INSERT INTO public.activity VALUES (1, 'Tennis de table', 'Activité loisir tennis de table');
INSERT INTO public.activity VALUES (2, 'Théatre', 'Club de théâtre amateur');
INSERT INTO public.activity VALUES (3, 'Musique funk', 'Groupe de musique amateur passionné de jazz fusion funk.');
INSERT INTO public.activity VALUES (4, 'Football', 'Club de foot pour tous les ages');
