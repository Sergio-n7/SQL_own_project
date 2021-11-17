CREATE TABLE [name](  
    id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    update_time DATETIME COMMENT 'Update Time',
    [column] varchar(255) COMMENT ''
) default charset utf8 COMMENT '';