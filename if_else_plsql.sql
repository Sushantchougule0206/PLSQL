write a procedure to find netsal of the given employee and find the remark, if
netsal <1000 “less”
if >=1000 and <2000 then ‘ok’
if netsal >=2000 and < 3000 then ‘good’
otherwise better
display remark inside the procedure


delimiter //
create procedure demo13(eid int,out empname varchar(50),out remark varchar(25))
begin
     declare netsal float(9,2) default 0;
	 select ename,sal+ifnull(comm,0) into empname,netsal
	 from emp
	 where empno=eid;
	 
	 if netsal<1000 then
	    set remark='Less';
	elseif netsal<2000 then
	    set remark='Ok';
	elseif netsal<3000 then
	    set remark='good';
	else
	    set remark='better';
	end if;
	select empname,netsal,remark;
	end //
delimiter ;
	
		
delimiter //
create procedure demo12(eid int,out remark varchar(25))
begin
     declare netsal float(9,2) default 0;
	 declare empname varchar(50);
	 select ename,sal+ifnull(comm,0) into empname,netsal
	 from emp
	 where empno=eid;
	 
	 if netsal<1000 then
	    set remark='Less';
	elseif netsal<2000 then
	    set remark='Ok';
	elseif netsal<3000 then
	    set remark='good';
	else
	    set remark='better';
	end if;
	select empname,netsal,remark;
	end //
delimiter ;