--Creating Indexes
-- Creating a nonclustered index on the frequently queried columns of the titles table
CREATE NONCLUSTERED INDEX idx_title
ON Titles(bktitle, slprice)

--Verify that you succeessfully created the index
sp_help Titles

-- Creating a nonclustered index on the frequently used columns of the sales table
CREATE NONCLUSTERED INDEX idx_sales
ON Sales(custnum, partnum, repid)

--Verify that you succeessfully created the index
sp_help Sales

--Create a unique index on the partnum column of titles table
CREATE UNIQUE INDEX idx_partnum
ON Titles(partnum)

--Verify that you succeessfully created the index
sp_help Titles

--Drop the index named idx_sales from the sales table
DROP INDEX Sales.idx_sales

--Verify that you succeessfully dropped the index
sp_help Sales



