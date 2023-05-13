
-- CREATE
--     TRIGGER `event_name` BEFORE/AFTER INSERT/UPDATE/DELETE
--     ON `database`.`table`
--     FOR EACH ROW BEGIN
-- 		-- trigger body
-- 		-- this code is applied to every
-- 		-- inserted/updated/deleted row
--     END;

CREATE TABLE trigger_test (
     message VARCHAR(100)
);


CREATE TRIGGER my_trigger 
ON employee
For INSERT
as 
   INSERT INTO trigger_test VALUES('added new employee');

INSERT INTO employee
VALUES(190, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

select * from trigger_test

-----------------------------------------------------------------------

CREATE TRIGGER my_trigger1 
    ON employee
    FOR insert
	as
        INSERT INTO trigger_test (new.first_name)
	
	
INSERT INTO employee
VALUES(191, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test VALUES('added female');
         ELSE
               INSERT INTO trigger_test VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);


DROP TRIGGER my_trigger;

----------------------------------------------------

delimiter //
create trigger age_verify before insert 
on customers
for each row
    if new.age < 0 then set new.age = 0;
end if; //

insert into customers values 
(101, 27, "James"),
 (102, -40, "Ammy");


Delimiter //
create trigger check_null_dob
after insert
on customers
for each row
begin
   if new.birthdate is null then insert into message (messageId, message)
      values (new.id, concat('Hi', new.name, 'update your DOM')
   end if;
end // 
delimeter ;

delimiter //
create trigger upd_trigger
before update
on employees
for each row
begin
  if new.salary=1000@ then set new.salary = 8500q;
  elseif new.salary < 10008 then set new.salary = 720003
  end if;
end //
delimiter ;


