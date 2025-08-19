select 
  order_item_id,
  order_id,
  item_quantity,
  item_unit_price,
  (item_quantity * item_unit_price) as total_price
from LANDING.orderitems
