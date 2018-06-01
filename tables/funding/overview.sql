select
  fnd.fnd_id                        fnd_id,
  fnd.fnd_active                    active,
  fnd.fnd_isaactive                 active_isa,
  fnd.fnd_startdate                 start_date,
  fnd.fnd_enddate                   end_date,
  cgl.cgl_name                      goal_name,
  sct.sct_name                      security_name,
  fnd.fnd_isisa                     is_isa_funded,
  fnd.fnd_amount                    amount,
  fnd.fnd_isaamount                 amount_isa,
  fnd.fnd_isacashamount             amount_isa_cash,
  fnd.fnd_monthlytopupexecutionday  monthly_topup_execution_day,
  fnd.fnd_lockedforprocessing       locked_for_processing,
  fnd.cgl_id                        cgl_id
from
  funding     fnd                             join
  contactgoal cgl on fnd.cgl_id = cgl.cgl_id  join
  securities  sct on cgl.sct_id = sct.sct_id;