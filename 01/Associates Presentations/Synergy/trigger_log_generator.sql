
CREATE TRIGGER [serverLog]   
ON DATABASE   
FOR CREATE_TABLE  
AS   
   INSERT INTO logfiles(eventdata)
   VALUES(EVENTDATA());


-- SErverscope
-- CREATE TRIGGER [serverLog]   
-- ON ALL SERVER   
-- FOR CREATE_TABLE  
-- AS   
--    INSERT INTO logfiles(eventdata)
--    VALUES(EVENTDATA());



-- Log Table
CREATE TABLE logfiles(
    [id] INT IDENTITY(1,1),
    eventdata XML NOT NULL,
    PRIMARY KEY (id),

);

CREATE TABLE hello(
    [name] VARCHAR
);


-- DROP hello
DROP TABLE hello;


-- Display Table
SELECT * from logfiles;