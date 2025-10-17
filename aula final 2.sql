LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/OrderDetails.txt'
INTO TABLE OrderDetails
FIELDS TERMINATED BY ';'      
ENCLOSED BY ''                
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
