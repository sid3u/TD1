Q1.1
SELECT raison, activité FROM entreprise ORDER by activité

Q1.2
SELECT inscrit FROM inscrire WHERE sess="CRUNGA"

Q1.3.1
select nom from inscrire,participant where inscrire.inscrit=participant.inscrit AND sess="CRUNGA"
Q1.3.2
select nom from inscrire join participant using (inscrit) where sess="CRUNGA"
Q1.3.3
select nom from participant where inscrit in (select inscrit from inscrire where sess="CRUNGA")

Q1.4
select nom from inscrire join participant using (inscrit) where sess="CRUNGA" AND participant.entr is NULL

Q1.5.1
select distinct raison from entreprise,participant where entreprise.entr=participant.entr and inscrit is not null
Q1.5.2
SELECT distinct raison from entreprise JOIN participant USING (entr) WHERE inscrit is not null

Q1.6
SELECT sess,intitulé, DATE_FORMAT(début,'%a %d') as jour FROM session WHERE month(début)="08" and year(début)="1984"

Q1.7
select nom, date_format(inscrire.date,"%Y-%m-%d") as "date d'inscription",sess, date_format(session.début,"%Y-%m-%d") as début from inscrire join session using(sess) join participant using(inscrit) WHERE inscrire.date=session.début-1

Q1.8
1.Implicite
select distinct  E1.raison, E1.activité from entreprise E1, entreprise E2 where E1.activité=E2.activité and E1.entr!=E2.entr
2. Explicite
SELECT distinct E1.raison,E1.activité FROM entreprise E1 join entreprise E2 using(activité) WHERE E1.entr!=E2.entr

Q2.

Select round(avg(prix) as "prix moyen" from session

Q2.2

select sum(prix*nb_inscrits) as "montants inscriptions 1985" from session where year(début)=1985

Q.2.3.
select concat('[',min(prime),',',max(prime),']') as "fourchette" from session where principal is NOT NULL

Q.3.1

select durée, count(sess) as session from session group by durée       
Q3.2
select sess, nb_inscrit from session join  animateur using count(anim) as 'FDP'
