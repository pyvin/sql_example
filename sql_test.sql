SELECT COUNT(UF_DATE) AS days, UF_STATUS, UF_DATE 
FROM zapis 
WHERE   UF_DATE >= "2020-03-20" AND UF_USERNAME NOT LIKE "%split-booking-%"  
GROUP BY UF_DATE, UF_STATUS;



SELECT *
FROM zapis 
WHERE  ticket_id = (select tiket_id_bron_from_zapis from ya_kassa_aviso_orders where tiket_id_bron = '3692109')


SELECT *
FROM zapis 
LEFT JOIN amo_kvest  ON amo_kvest.id_ticket = zapis.ticket
LIMIT 10

