DROP PROCEDURE IF EXISTS test.testuserdata;
CREATE PROCEDURE test.`testuserdata`()
BEGIN
               DECLARE x  INT;
               SET x = 10;
               WHILE x  <= 1000 DO
                   INSERT INTO test.users (firstname, lastname, dob, email) 
                                   VALUES (concat('firstname',x), concat('lastname',x), '1980/1/1', concat('email',x,'@email.com'));
                  SET  x = x + 1;
               END WHILE;
       END;
