select * from John;
call selectAll();
call searchAddress('nlr');
DELIMITER //
CREATE PROCEDURE get_FullName
(nId int(10))
BEGIN
  SELECT LastName, FirstName FROM John
  WHERE Id = nId;
END //
DELIMITER ;
call get_FullName(101);
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchAddress`(addressName varchar(50))
BEGIN
select Id,LastName,FirstName,address from John where Address=addressName;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectAll`()
BEGIN
select * from john;
END$$
DELIMITER ;

