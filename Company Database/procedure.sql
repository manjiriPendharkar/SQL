
create procedure salary_update(@empid int, @newsal int)
as
begin
  update employee
  set salary= @newsal
  where emp_id = @empid
end

exec salary_update @empid = 190, @newsal = 90000
exec salary_update 190, 190000