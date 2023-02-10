SELECT nom, prenom from Personne ;
select prix, est_dispo from Logement;

select distinct prenom from Personne;
select distinct date_visite from Visite;

select commission from transac as t where t.nom='Messi';
select surface_habitable as surface from Logement;

select prix from Logement order by prix ASC;
select nom_proprio from Logement order BY nom_proprio;

SELECT nom, prenom from Personne WHERE Personne.age <= 20;
select prix, est_dispo from Logement WHERE type_propriete='maison';
