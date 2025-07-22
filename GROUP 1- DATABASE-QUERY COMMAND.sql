--1. Tính số lượng đơn hàng theo từng nhà hàng và hiển thị tên nhà hàng
SELECT R.Restaurant_Name, COUNT(O.Order_Id) AS Total_Orders
FROM Orders O
JOIN Restaurants R ON O.RUser_Id = R.RUser_Id
GROUP BY R.Restaurant_Name;

-- 2.Tính tổng số tiền của mỗi nhà hàng
SELECT  R.Restaurant_Name, SUM(Total_amount) AS Total_Revenue
FROM Orders O
JOIN Restaurants R ON O.RUser_Id = R.RUser_Id
GROUP BY R.Restaurant_Name;

-- 3.Lấy danh sách các nhà hàng và tổng doanh thu của mỗi nhà hàng, chỉ lấy những nhà hàng có tổng doanh thu lớn hơn 1000
SELECT R.Restaurant_Name, SUM(O.Total_amount) AS Total_Revenue
FROM Orders O
JOIN Restaurants R ON O.RUser_Id = R.RUser_Id
GROUP BY R.Restaurant_Name
HAVING SUM(O.Total_amount) > 600;

--4. Lấy thông tin đơn hàng, khách hàng và tài xế
SELECT O.Order_Id, O.Order_date, 
       CONCAT(C.Last_name, ' ', C.First_name, ' ', C.Middle_name) AS customers_name, 
       CONCAT(D.Last_name, ' ', D.First_name, ' ', D.Middle_name) AS drivers_name
FROM Orders O
JOIN Customers C ON O.CUser_Id = C.CUser_Id
JOIN Drivers D ON O.DUser_Id = D.DUser_Id;

-- Lấy thông tin khách hàng có tổng số tiền thanh toán cao nhất
SELECT Last_name, First_name
FROM Customers
WHERE CUser_Id = (
    SELECT CUser_Id
    FROM Payments
    GROUP BY CUser_Id
    HAVING SUM(Amount) = (
        SELECT MAX(Total_Amount)
        FROM (
            SELECT CUser_Id, SUM(Amount) AS Total_Amount
            FROM Payments
            GROUP BY CUser_Id
        ) AS PaymentSums
    )
);

-- Lấy tổng số tiền cho mỗi phương thức thanh toán
SELECT Payment_Method,
       (SELECT SUM(Amount)
        FROM Payments P
        WHERE P.Payment_Method = PM.Payment_Method) AS Total_Amount
FROM (SELECT DISTINCT Payment_Method FROM Payments) PM;


-- Lấy các báo cáo về nhà hàng và tài xế cụ thể
SELECT R.Report_Id, R.Report_Description, R.Created_At
FROM Reports R
WHERE R.DUser_Id = 12
AND R.Report_Id IN (
    SELECT Report_Id
    FROM Reports
    WHERE RUser_Id = 32 AND R.DUser_Id= 12
);

-- Lọc các báo cáo về "Giao hàng chậm"
SELECT R.Report_Id, R.Report_Description
FROM Reports R
WHERE R.Report_Id IN (
    SELECT Report_Id
    FROM Reports
    WHERE Report_Description LIKE '%giao hang cham%'
);

-- Lọc ra các Report_Type_Id có số lần báo cáo lớn hơn 2
SELECT R.Report_Type_Id,RT.Report_Type_Name, COUNT(*) AS Total_Reports
FROM Reports R
JOIN Report_Types RT ON R.Report_Type_Id = RT.Report_Type_Id
GROUP BY R.Report_Type_Id, RT.Report_Type_Name
HAVING COUNT(*) > 2;

-- Truy vấn sử dụng subquery
SELECT C.CUser_Id, C.Last_name, C.First_name, C.Middle_name,
       (SELECT SUM(P.Amount)
        FROM Payments P
        WHERE P.CUser_Id = C.CUser_Id) AS Total_Payment
FROM Customers C
WHERE (SELECT SUM(P.Amount)
       FROM Payments P
       WHERE P.CUser_Id = C.CUser_Id) > 550;

-- Truy vấn sử dụng CTE với CUser_Id từ bảng Payments
WITH PaymentSums AS (
    SELECT CUser_Id, SUM(Amount) AS Total_Payment
    FROM Payments
    GROUP BY CUser_Id
)
SELECT C.CUser_Id, C.Last_name, C.First_name, C.Middle_name, PS.Total_Payment
FROM Customers C
JOIN PaymentSums PS ON C.CUser_Id = PS.CUser_Id
WHERE PS.Total_Payment > 550;

select * from Reports
select * from Grab_Users
