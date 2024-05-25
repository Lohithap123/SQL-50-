select 
    Signups.user_id,
    Round(Avg(If(Confirmations.action='confirmed',1,0)),2) as confirmation_rate 
from 
    signups left join Confirmations 
on 
    Signups.user_id = Confirmations.user_id
group by 
    user_id;
