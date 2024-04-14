display feedback based on comm
if comm is null or 0 then display “poor performance”
if comm <=300 then display ‘ok performance”
if com >301 and <=500 then display good performance
else display excellent performance.

            delimiter //
            create procedure getRemark(eid int,out remark varchar(50))
            begin
            declare vcomm float(9,2) default 0;
			declare empname varchar(50);
            select ename,comm into empname,vcomm
            from emp
			where empno=eid;
            if vcomm is null or vcomm=0 then
               set remark= 'poor performance';
            elseif vcomm<= 300 then
               set remark= 'ok performance';
            elseif vcomm<= 500 then
               set remark= 'good performance';
            else
               set remark='excellent performance';
            end if;
			select empname,vcomm,remark;
            end//
            delimiter ;           