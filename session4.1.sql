use AbleJobs

select * from Nobel

select YEAR, SUBJECT, WINNER
from Nobel
where year in(1970, 1987);

select WINNER
from Nobel
where YEAR = 1971 and SUBJECT = 'Literature';

select YEAR, SUBJECT
from Nobel
where WINNER = 'Dennis Gabor';

select WINNER
from Nobel
where SUBJECT = 'Physics' and YEAR >= 1950;

select YEAR, SUBJECT, WINNER, COUNTRY
from Nobel
where SUBJECT = 'Chemistry' and YEAR between 1965 and 1975;

select * from Nobel
where (WINNER = 'Menachem Begin' or WINNER = 'Yitzhak Rabin')
and YEAR > 1972 and CATEGORY = 'Prime Minister';

select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
from Nobel
where WINNER like 'Louis%';

select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
from Nobel
where WINNER = 'Johannes Georg Bednorz';















