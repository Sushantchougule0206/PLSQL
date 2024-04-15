Write a procedure to accept a number from user and display its factorial

delimiter //
create procedure demo4(num int)
begin
     declare fact int;
	 set fact=1;
	 while num>0 do
	    set fact=fact*num;
		set num=num-1;
	 end while;
	 select fact ;
end //
delimiter ;

delimiter //
create procedure demo(num int)
begin
     declare fact,start int;
	 set fact=1;
	 set start=1;
	 while start<=num do
	    set fact=fact*start;
		set start=start+1;
     end while;
	 select fact;
end //
delimiter ;
