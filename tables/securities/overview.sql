select
  sct.sct_id,
  sct.sct_name           security_name,
  sct.sct_tradingprice   price,
  sct.sct_valoren        valoren_nr,
  sct.sct_isin           isin_nr,
  sct.sct_bbticker       bloomberg_ticker,
  sct.sct_avqid          avaloq_id
from
  securities sct;