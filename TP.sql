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
