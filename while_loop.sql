
Write a procedure which accepts start and stop values and display all numbers between
start and stop
Example displaydata(10,20) o/p 10,11,12,13,14,15……20

demiliter //
create procedure demo1(start int,stop int)
begin 
     declare cnt int;
	 declare str varchar(100) default'';
	 
	 set cnt=start;
	 
	 while cnt<=stop do
	     set str=concat(str,cnt,',');
		 set cnt=cnt+1;
		 
	 end while;
	 
	 set str=substr(str,1,length(str)-1)
	 
	 select str;
	 
	end //
	delimiter ;
	
	
	
delimiter //
create procedure demo2(start int,stop int)
begin
     declare str varchar(100) default'';
	 
	 while start<=stop do
	    set str= concat(str,start,',');
	    set start=start+1;
	end while;
	
	select str;
	end //
	delimiter ;