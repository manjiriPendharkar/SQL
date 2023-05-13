
create function purchase (@qty int, @price int)
returns int
as
begin
  declare @netprice int
  set @netprice = @qty * @price
  return @netprice
end
Go

select dbo.purchase(2,90)