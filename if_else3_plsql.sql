write a procedure getdiscount to find discount % and discounted amount from product table for the given product
if price < 50 then 3%
if price >=50 and <80 7%
if price >=80 and < 100 8%
otherwise 12%
display pid,pname,price,discount percentage and discount amount


delimiter //
create procedure demo24(prodid int)
begin
     declare pdprice,discountper float(9,2);
	 declare proid int;
	 declare prodname varchar(25);
	 
	 select pid,pname,price into proid,prodname,pdprice
	 from product
	 where pid=prodid;
	 
	 if pdprice<50 then
	    set discountper=0.03;
	 elseif pdprice<80 then
	    set discountper=0.07;
	 elseif pdprice<100 then
	    set discountper=0.08;
	 else
	    set discountper=0.12;
	 end if;
	 
	 select proid pid,prodname pname,pdprice price,pdprice-(pdprice*discountper) discount_amount,discountper discount;
	 end //
	 delimiter ;