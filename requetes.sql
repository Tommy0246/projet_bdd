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

Regrouper les données ? 

select * from Logement having nombre_pieces>2;
select nom_garage, surface from Garage having surface > (select AVG(surface) from Garage);

select adresse,tipe,nombre_pieces, etat from Logement inner join etat_habitation on Logement.ID_etat = etat_habitation.ID_etat;
select Id_Visite,date_visite,nom_client,prenom, ID_logement from Visite inner join personne on personne.nom = Visite.nom_client where prenom = 'Kim';

select * from transac natural join Logement where nom_proprio = 'Chabas' ;
select * from Garage natural join Logement where ville = 'Toulouse'; 

select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage left join Logement on Garage.ID_garage = Logement.ID_logement;
select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage left join Logement on Garage.ID_garage = Logement.ID_logement where Logement.ID_logement is not null;

select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage right join Logement on  Garage.ID_garage = Logement.ID_logement;
select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage right join Logement on Garage.ID_garage = Logement.ID_logement where Garage.ID_garage is not null;

SELECT nom_garage, surface FROM Garage WHERE surface > (SELECT AVG(surface) FROM Garage);
SELECT Logement.ID_logement, nom_garage, surface FROM Logement INNER JOIN Garage ON Logement.ID_logement = Garage.ID_garage WHERE surface > 100;
