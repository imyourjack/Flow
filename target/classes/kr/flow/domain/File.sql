DROP TABLE tbl_extension;
SELECT * FROM tbl_extension;

CREATE TABLE tbl_extension(
	idx_extension		INT(10) 	NOT NULL auto_increment,
	fixed_extension		VARCHAR(20),
	custom_extension	VARCHAR(20),
	PRIMARY KEY(idx_extension)
);

INSERT INTO tbl_extension(fixed_extension) VALUES('bat');
INSERT INTO tbl_extension(fixed_extension) VALUES('cmd');
INSERT INTO tbl_extension(fixed_extension) VALUES('com');
INSERT INTO tbl_extension(fixed_extension) VALUES('cpl');
INSERT INTO tbl_extension(fixed_extension) VALUES('exe');
INSERT INTO tbl_extension(fixed_extension) VALUES('scr');
INSERT INTO tbl_extension(fixed_extension) VALUES('js');