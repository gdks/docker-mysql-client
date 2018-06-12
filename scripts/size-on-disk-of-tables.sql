SELECT
    Data_BB / POWER(1024,1) Data_KB,
    Data_BB / POWER(1024,2) Data_MB,
    Data_BB / POWER(1024,3) Data_GB
FROM (SELECT SUM(data_length) Data_BB FROM information_schema.tables
WHERE table_schema NOT IN ('information_schema','performance_schema','mysql')) A;