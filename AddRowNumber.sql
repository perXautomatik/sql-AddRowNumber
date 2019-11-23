
with cte as
(
  select *
    , new_row_id=ROW_NUMBER() OVER (ORDER BY %%physloc%% desc)
  from [artist list 2]
  where [POSITION] is null
)
update cte
set [POSITION] = cte.new_row_id