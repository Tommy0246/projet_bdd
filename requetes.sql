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

--Regrouper les données ? 

select * from Logement group by nom_proprio having nombre_pieces>2;
select nom, surface from Garage group by ID_garage having surface > (select AVG(surface) from Garage);

select adresse,type_propriete,nombre_pieces, etat from Logement inner join etat_habitation on Logement.ID_etat = etat_habitation.ID_etat;
select Id_Visite,date_visite,nom_client,prenom, ID_logement from Visite inner join personne on personne.nom = Visite.nom_client where prenom = 'Kim';

select * from transac natural join Logement where nom_proprio = 'Chabas' ;
select * from Garage natural join Logement where ville = 'Toulouse'; 

select Garage.ID_garage, Garage.nom, surface, Logement.ID_logement from Garage left join Logement on Garage.ID_garage = Logement.ID_logement;
select Garage.ID_garage, Garage.nom, surface, Logement.ID_logement from Garage left join Logement on Garage.ID_garage = Logement.ID_logement where Logement.ID_logement is not null;

select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage right join Logement on  Garage.ID_garage = Logement.ID_logement;
select Garage.ID_garage, nom_garage, surface, Logement.ID_logement from Garage right join Logement on Garage.ID_garage = Logement.ID_logement where Garage.ID_garage is not null;

SELECT adresse FROM Logement INNER JOIN Personne ON Personne.nom = Logement.nom_proprio;
SELECT Logement.ID_logement, Garage.nom, surface FROM Logement INNER JOIN Garage ON Logement.ID_logement = Garage.ID_garage WHERE surface > 100;

select nom, surface from Garage where surface in ( 100 , 140, 160 );
--probleme sur les 3 suivants
select * from Logement where prix > any(select prix from Logement where type_propriete = 'maison');
select * from Logement where prix > all (select prix from Logement where type_propriete = 'appartement');
select * from personne where exists ( select nom from personne where prenom = 'Darth' );

select nom_proprio from logement UNION select nom from Personne;
select nom_proprio from logement except select nom from Personne;
select nom_proprio from logement intersect select nom from Personne;

SELECT * from Visite WHERE date_visite BETWEEN '2023-03-13' AND '2023-03-20';

Select * from Agence where ID_agence is not null;

Select * from personne where prenom <> 'Marc';

Select SUM(commission) as total from transac;
select MAX(prix) as max_prix from Logement;
select MIN(prix) as max_prix from Logement;
select AVG(age) as moy_age from personne;
select COUNT(*) from (SELECT nom, prenom from Personne WHERE Personne.age <= 20);

select ID_garage, nom, max(surface) from Garage;
select MIN(date_visite) from Visite;
select SUM(commission) from transac where type = 'vente';
select adresse, nombre_pieces, prix FROM Logement WHERE prix > (SELECT AVG(prix) FROM Logement);
select count(*) from Logement where Logement.tipe = 'maison';


