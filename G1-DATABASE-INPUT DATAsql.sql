-- Grab_users tables
INSERT INTO Grab_Users (UserId, Email, UserType, Phone_Number)
VALUES 
(1, 'nguyenvana@example.com', 'Customer', '0123456789'),
(2, 'tranthib@example.com', 'Customer', '0987654321'),
(3, 'leminhc@example.com', 'Customer', '0912345678'),
(4, 'phamthud@example.com', 'Customer', '0965432187'),
(5, 'doanbaoe@example.com', 'Customer', '0932112345'),
(6, 'vuquangf@example.com', 'Customer', '0898765432'),
(7, 'hoanggiangh@example.com', 'Customer', '0843219876'),
(8, 'danghoaii@example.com', 'Customer', '0976543210'),
(9, 'trankimh@example.com', 'Customer', '0901234567'),
(10, 'phamthuyn@example.com', 'Customer', '0954321098'),
(11, 'nguyenminho@example.com', 'Driver', '0812345678'),
(12, 'tranduongp@example.com', 'Driver', '0823456789'),
(13, 'lequangr@example.com', 'Driver', '0834567890'),
(14, 'phamthitu@example.com', 'Driver', '0845678901'),
(15, 'dovanv@example.com', 'Driver', '0856789012'),
(16, 'tranhoangw@example.com', 'Driver', '0867890123'),
(17, 'ngocanhx@example.com', 'Driver', '0878901234'),
(18, 'doanthuzy@example.com', 'Driver', '0889012345'),
(19, 'nguyenhongz@example.com', 'Driver', '0890123456'),
(20, 'phamnguyeta@example.com', 'Driver', '0901234567'),
(21, 'tranvancu@example.com', 'Employee', '0912345678'),
(22, 'nguyenminhd@example.com', 'Employee', '0923456789'),
(23, 'phamhuyenb@example.com', 'Employee', '0934567890'),
(24, 'doanquangl@example.com', 'Employee', '0945678901'),
(25, 'vuminhtk@example.com', 'Employee', '0956789012'),
(26, 'tranthitn@example.com', 'Employee', '0967890123'),
(27, 'nguyenbaoe@example.com', 'Employee', '0978901234'),
(28, 'leminhtr@example.com', 'Employee', '0989012345'),
(29, 'hoanganhp@example.com', 'Employee', '0990123456'),
(30, 'phamductu@example.com', 'Employee', '0801234567'),
(31, 'dangthuyv@example.com', 'Restaurant', '0812345678'),
(32, 'nguyenphatw@example.com', 'Restaurant', '0823456789'),
(33, 'tranminhx@example.com', 'Restaurant', '0834567890'),
(34, 'phambichy@example.com', 'Restaurant', '0845678901'),
(35, 'lenhatqu@example.com', 'Restaurant', '0856789012'),
(36, 'danghoangsa@example.com', 'Restaurant', '0867890123'),
(37, 'trunganhba@example.com', 'Restaurant', '0878901234'),
(38, 'nguyenthifp@example.com', 'Restaurant', '0889012345'),
(39, 'dovanlt@example.com', 'Restaurant', '0890123456'),
(40, 'phamngatj@example.com', 'Restaurant', '0901234567');

-- Drivers
INSERT INTO Drivers (DUser_ID, Last_name, First_name, Middle_name, Vehicle_Type, Status, License_Plate, Rating, Location)
VALUES
(11, 'Nguyen', 'Minh', 'Ho', 'Xe May', 'Active', '29A-12345', 4.5, 'Hanoi'),
(12, 'Tran', 'Duong', 'P', 'Xe May', 'Active', '30B-67890', 4.7, 'Ho Chi Minh City'),
(13, 'Le', 'Quang', 'R', 'Xe So', 'Inactive', '31C-54321', 4.2, 'Da Nang'),
(14, 'Pham', 'Thi', 'Tu', 'Xe So', 'Active', '32D-09876', 4.8, 'Can Tho'),
(15, 'Do', 'Van', 'V', 'Xe May', 'Inactive', '33E-13579', 4.3, 'Hue'),
(16, 'Tran', 'Hoang', 'W', 'Xe May', 'Active', '34F-24680', 4.6, 'Hai Phong'),
(17, 'Ngoc', 'Anh', 'X', 'Xe So', 'Active', '35G-11223', 4.9, 'Nha Trang'),
(18, 'Doan', 'Thuy', 'Zy', 'Xe May', 'Inactive', '36H-33445', 4.4, 'Nam Dinh'),
(19, 'Nguyen', 'Hong', 'Z', 'Xe So', 'Active', '37I-55667', 4.5, 'Quang Ninh'),
(20, 'Pham', 'Nguyet', 'A', 'Xe May', 'Active', '38J-77889', 4.7, 'Bac Giang');

-- Customers
-- Chèn 10 dòng dữ liệu vào bảng Customers
INSERT INTO Customers (CUser_Id, Last_name, First_name, Middle_name, Address, Create_date, Modified_at, Loyalty_points)
VALUES
(1, 'Nguyen', 'Minh', 'Tuan', '123 Le Duan, Hanoi', '2024-01-01', '2024-01-02', 100),
(2, 'Tran', 'Thi', 'Lan', '456 Nguyen Thi Minh Khai, Ho Chi Minh City', '2024-02-01', '2024-02-02', 150),
(3, 'Le', 'Quang', 'Hieu', '789 Pham Van Dong, Da Nang', '2024-03-01', '2024-03-02', 200),
(4, 'Pham', 'Thanh', 'Linh', '101 Hai Ba Trung, Can Tho', '2024-04-01', '2024-04-02', 250),
(5, 'Doan', 'Bich', 'Mai', '202 Nguyen Du, Hue', '2024-05-01', '2024-05-02', 300),
(6, 'Vu', 'Minh', 'Khanh', '303 Tran Hung Dao, Hai Phong', '2024-06-01', '2024-06-02', 350),
(7, 'Hoang', 'Giang', 'Hong', '404 Le Loi, Quang Ninh', '2024-07-01', '2024-07-02', 400),
(8, 'Dang', 'Hieu', 'Mai', '505 Bao Khanh, Nam Dinh', '2024-08-01', '2024-08-02', 450),
(9, 'Tran', 'Quoc', 'Bao', '606 Ngo Quyen, Phu Tho', '2024-09-01', '2024-09-02', 500),
(10, 'Pham', 'Lan', 'Ngoc', '707 Hoang Hoa Tham, Bac Giang', '2024-10-01', '2024-10-02', 550);

-- Employees
-- Chèn 10 dòng dữ liệu vào bảng Employees
INSERT INTO Employees (EUser_Id, Last_name, Middle_name, First_name, Hired_date, Salary)
VALUES
(21, 'Tran', 'Hong', 'Tuan', '2024-01-01', 5000.00),
(22, 'Nguyen', 'Thi', 'Lan', '2024-02-01', 5500.00),
(23, 'Le', 'Quang', 'Hieu', '2024-03-01', 6000.00),
(24, 'Pham', 'Thanh', 'Linh', '2024-04-01', 6500.00),
(25, 'Doan', 'Bich', 'Mai', '2024-05-01', 7000.00),
(26, 'Vu', 'Minh', 'Khanh', '2024-06-01', 7500.00),
(27, 'Hoang', 'Giang', 'Hong', '2024-07-01', 8000.00),
(28, 'Dang', 'Hieu', 'Mai', '2024-08-01', 8500.00),
(29, 'Tran', 'Quoc', 'Bao', '2024-09-01', 9000.00),
(30, 'Pham', 'Lan', 'Ngoc', '2024-10-01', 9500.00);

-- Cuisine
-- Chèn 10 dòng dữ liệu vào bảng Cuisine_Types
INSERT INTO Cuisine_Types (Cuisine_Id, Cuisine_Name)
VALUES
(1, 'Vietnamese'),
(2, 'Japanese'),
(3, 'Italian'),
(4, 'Mexican'),
(5, 'French'),
(6, 'Indian'),
(7, 'Thai'),
(8, 'Korean'),
(9, 'Middle Eastern'),
(10, 'Chinese');

-- Restaurant
INSERT INTO Restaurants (RUser_Id, Restaurant_Name, Address, Opening_time, Rating, Cuisine_Id)
VALUES
(31, 'Pho 24', '123 Nguyen Du, Hanoi', '08:00:00', 4.50, 1),  
(32, 'Sushi Yama', '456 Hai Ba Trung, Ho Chi Minh City', '10:00:00', 4.80, 2), 
(33, 'Italino', '789 Le Lai, Da Nang', '09:00:00', 4.70, 3), 
(34, 'Taco Bell', '101 Nguyen Thi Minh Khai, Ho Chi Minh City', '11:00:00', 4.20, 4),  
(35, 'Le Bistro', '202 Le Loi, Hue', '07:30:00', 4.60, 5),  
(36, 'Curry House', '303 Tran Hung Dao, Hai Phong', '09:30:00', 4.30, 6), 
(37, 'Som Tum', '404 Nguyen Thi Minh Khai, Nha Trang', '10:00:00', 4.40, 7), 
(38, 'Kimchi House', '505 Bao Khanh, Nam Dinh', '08:30:00', 4.60, 8), 
(39, 'Pasta & Pizza', '606 Hoang Hoa Tham, Bac Giang', '12:00:00', 4.90, 9), 
(40, 'Mediterraneo', '707 Tran Phu, Da Nang', '08:00:00', 4.70, 10); 

-- categories
INSERT INTO Categories (Category_Id, Category_Name)
VALUES
(1, 'Pho'),              
(2, 'Banh Mi'),          
(3, 'Goi Cuon'),        
(4, 'Com Tam'),           
(5, 'Bun Bo Hue'),       
(6, 'Banh Xeo'),         
(7, 'Hu Tieu'),          
(8, 'Bun Thit Nuong'),    
(9, 'Banh Cuon'),         
(10, 'Che'),             
(11, 'Pizza Margherita'), 
(12, 'Spaghetti Carbonara'), 
(13, 'Lasagna'),          
(14, 'Risotto'),          
(15, 'Tacos'),            
(16, 'Burrito'),          
(17, 'Sushi'),           
(18, 'Tempura'),         
(19, 'Paella'),           
(20, 'Croissant');     

-- Menu items
INSERT INTO Menu_Items (Menu_Item_Id, Item_Name, Item_Price, Availability, Category_Id, Restaurant_Id)
VALUES
(1, 'Pho Bo', 50.00, 1, 1, 31),  
(2, 'Pho Ga', 45.00, 1, 1, 31),  
(3, 'Banh Mi', 30.00, 1, 2, 32),  
(4, 'Goi Cuon', 35.00, 1, 3, 33), 
(5, 'Com Tam', 40.00, 1, 4, 34),  
(6, 'Banh Xeo', 50.00, 0, 5, 35),  
(7, 'Bun Bo Hue', 60.00, 1, 6, 36),  
(8, 'Bun Thit Nuong', 45.00, 1, 8, 37),  
(9, 'Banh Cuon', 40.00, 1, 9, 38),  
(10, 'Che', 20.00, 0, 10, 39), 
(11, 'Pizza Margherita', 120.00, 1, 11, 40),  
(12, 'Spaghetti Carbonara', 130.00, 1, 12, 40),  
(13, 'Lasagna', 150.00, 1, 13, 39),  
(14, 'Risotto', 110.00, 1, 14, 38),  
(15, 'Tacos', 40.00, 1, 15, 37),  
(16, 'Burrito', 50.00, 1, 16, 36), 
(17, 'Sushi', 100.00, 1, 17, 35),  
(18, 'Tempura', 80.00, 1, 18, 34),  
(19, 'Paella', 120.00, 1, 19, 33),  
(20, 'Croissant', 35.00, 1, 20, 32);  

-- Vouchers
INSERT INTO Vouchers (Voucher_Id, Discount_Percentage, Valid_From, Valid_To, Max_Discount_Amount, Min_Order_Value)
VALUES
(1, 10.00, '2024-01-01', '2024-12-31', 50.00, 100.00),
(2, 15.00, '2024-02-01', '2024-11-30', 75.00, 150.00),
(3, 20.00, '2024-03-01', '2024-10-31', 100.00, 200.00),
(4, 5.00, '2024-04-01', '2024-12-31', 25.00, 50.00),
(5, 10.00, '2024-05-01', '2024-12-31', 30.00, 80.00),
(6, 25.00, '2024-06-01', '2024-09-30', 100.00, 250.00),
(7, 30.00, '2024-07-01', '2024-12-31', 150.00, 300.00),
(8, 50.00, '2024-08-01', '2024-12-31', 200.00, 500.00),
(9, 5.00, '2024-09-01', '2024-11-30', 20.00, 40.00),
(10, 20.00, '2024-10-01', '2024-12-31', 50.00, 120.00),
(11, 10.00, '2024-11-01', '2024-12-31', 30.00, 100.00),
(12, 15.00, '2024-12-01', '2024-12-31', 50.00, 150.00),
(13, 20.00, '2024-01-01', '2024-05-31', 80.00, 180.00),
(14, 30.00, '2024-02-01', '2024-12-31', 120.00, 200.00),
(15, 25.00, '2024-03-01', '2024-11-30', 100.00, 250.00);

-- Orders
INSERT INTO Orders (Order_Id, RUser_Id, DUser_Id, CUser_Id, Order_address, Order_status, Order_date, Voucher_Id, Total_amount)
VALUES
(1, 31, 11, 1, '123 Le Duan, Hanoi', 'Hoan thanh', '2024-01-01 10:00:00', 1, 250.00),
(2, 32, 12, 1, '123 Le Duan, Hanoi', 'Dang xu ly', '2024-01-02 12:30:00', 2, 300.00),
(3, 33, 13, 1, '123 Le Duan, Hanoi', 'Hoan thanh', '2024-01-03 14:00:00', 3, 220.00),
(4, 34, 14, 2, '456 Nguyen Thi Minh Khai, Ho Chi Minh City', 'Hoan thanh', '2024-02-02 12:30:00', 4, 210.00),
(5, 35, 15, 2, '456 Nguyen Thi Minh Khai, Ho Chi Minh City', 'Dang xu ly', '2024-02-03 13:00:00', 5, 220.00),
(6, 36, 16, 3, '789 Pham Van Dong, Da Nang', 'Dang xu ly', '2024-03-03 14:00:00', 6, 230.00),
(7, 37, 17, 3, '789 Pham Van Dong, Da Nang', 'Hoan thanh', '2024-03-04 14:30:00', 7, 240.00),
(8, 38, 18, 3, '789 Pham Van Dong, Da Nang', 'Hoan thanh', '2024-03-05 15:00:00', 8, 250.00),
(9, 39, 19, 4, '101 Hai Ba Trung, Can Tho', 'Hoan thanh', '2024-04-04 15:15:00', 9, 400.00),
(10, 40, 20, 5, '202 Nguyen Du, Hue', 'Dang xu ly', '2024-05-05 16:00:00', 10, 180.00),
(11, 31, 11, 5, '202 Nguyen Du, Hue', 'Hoan thanh', '2024-05-06 16:30:00', 1, 200.00),
(12, 32, 12, 6, '303 Tran Hung Dao, Hai Phong', 'Hoan thanh', '2024-06-06 17:30:00', 2, 270.00),
(13, 33, 13, 7, '404 Le Loi, Quang Ninh', 'Dang xu ly', '2024-07-07 18:00:00', 3, 300.00),
(14, 34, 14, 7, '404 Le Loi, Quang Ninh', 'Hoan thanh', '2024-07-08 18:30:00', 4, 320.00),
(15, 35, 15, 7, '404 Le Loi, Quang Ninh', 'Hoan thanh', '2024-07-09 19:00:00', 5, 330.00),
(16, 36, 16, 8, '505 Bao Khanh, Nam Dinh', 'Dang xu ly', '2024-08-08 19:15:00', 6, 340.00),
(17, 37, 17, 8, '505 Bao Khanh, Nam Dinh', 'Hoan thanh', '2024-08-09 19:45:00', 7, 350.00),
(18, 38, 18, 9, '606 Hoang Hoa Tham, Bac Giang', 'Hoan thanh', '2024-09-09 20:00:00', 8, 360.00),
(19, 39, 19, 10, '707 Tran Phu, Da Nang', 'Dang xu ly', '2024-10-10 21:00:00', 9, 370.00),
(20, 40, 20, 10, '707 Tran Phu, Da Nang', 'Hoan thanh', '2024-10-11 21:30:00', 10, 380.00),
(21, 31, 11, 10, '707 Tran Phu, Da Nang', 'Hoan thanh', '2024-10-12 22:00:00', 1, 390.00);

-- order item
INSERT INTO Order_Items (Order_Item_Id, Quantity, Price, Menu_Item_Id, Order_Id)
VALUES
(1, 2, 100.00, 1, 1),   
(2, 1, 150.00, 2, 2),  
(3, 3, 75.00, 3, 3),    
(4, 1, 200.00, 4, 4),   
(5, 2, 80.00, 5, 5),   
(6, 4, 50.00, 6, 6),    
(7, 1, 120.00, 7, 7),   
(8, 3, 90.00, 8, 8),   
(9, 2, 60.00, 9, 9),    
(10, 5, 45.00, 10, 10);
select * from Order_Items
-- Payments
INSERT INTO Payments (Payment_Id, Amount, Payment_Method, Payment_Date, Order_Id, CUser_Id, Payment_Status)
VALUES
(1, 250.00, 'Tien mat', '2024-01-01', 1, 1, 'Thanh cong'),
(2, 300.00, 'The tin dung', '2024-01-02', 2, 1, 'Dang xu ly'),
(3, 220.00, 'Chuyen khoan', '2024-01-03', 3, 2, 'Thanh cong'),
(4, 210.00, 'Tien mat', '2024-02-02', 4, 2, 'That bai'),
(5, 220.00, 'The tin dung', '2024-02-03', 5, 3, 'Thanh cong'),
(6, 230.00, 'Chuyen khoan', '2024-03-03', 6, 3, 'Dang xu ly'),
(7, 240.00, 'Tien mat', '2024-03-04', 7, 4, 'Thanh cong'),
(8, 250.00, 'The tin dung', '2024-03-05', 8, 4, 'Thanh cong'),
(9, 400.00, 'Chuyen khoan', '2024-04-04', 9, 5, 'That bai'),
(10, 180.00, 'Tien mat', '2024-05-05', 10, 5, 'Thanh cong'),
(11, 200.00, 'The tin dung', '2024-05-06', 11, 6, 'Dang xu ly'),
(12, 270.00, 'Chuyen khoan', '2024-06-06', 12, 6, 'Thanh cong'),
(13, 300.00, 'Tien mat', '2024-07-07', 13, 7, 'Thanh cong'),
(14, 320.00, 'The tin dung', '2024-07-08', 14, 7, 'That bai'),
(15, 330.00, 'Chuyen khoan', '2024-07-09', 15, 8, 'Thanh cong'),
(16, 340.00, 'Tien mat', '2024-08-08', 16, 8, 'Dang xu ly'),
(17, 350.00, 'The tin dung', '2024-08-09', 17, 9, 'Thanh cong'),
(18, 360.00, 'Chuyen khoan', '2024-09-09', 18, 9, 'Thanh cong'),
(19, 370.00, 'Tien mat', '2024-10-10', 19, 10, 'That bai'),
(20, 380.00, 'The tin dung', '2024-10-11', 20, 10, 'Thanh cong');

-- Customer service 
INSERT INTO Customer_Service (Service_Request_Id, EUser_Id, Description, Created_at,Issuse_Type, Status)
VALUES
(1, 21, 'Khách hàng báo lỗi thanh toán', '2024-11-01 10:00:00', 'Lỗi hệ thống', 'Đang xử lý'),
(2, 22, 'Cập nhật thông tin giao hàng', '2024-11-02 11:30:00', 'Thông tin khách hàng', 'Hoàn thành'),
(3, 23, 'Phàn nàn về chất lượng món ăn', '2024-11-03 12:15:00', 'Phản hồi món ăn', 'Đang xử lý'),
(4, 24, 'Yêu cầu hỗ trợ đặt lại đơn hàng', '2024-11-04 13:45:00', 'Hỗ trợ đơn hàng', 'Hoàn thành'),
(5, 25, 'Thắc mắc về chương trình khuyến mãi', '2024-11-05 14:30:00', 'Khuyến mãi', 'Đã giải quyết'),
(6, 26, 'Hủy đơn hàng', '2024-11-06 15:00:00', 'Hủy đơn hàng', 'Đang xử lý'),
(7, 27, 'Phản ánh về thái độ tài xế', '2024-11-07 16:20:00', 'Phản hồi tài xế', 'Đã giải quyết'),
(8, 28, 'Lỗi không nhận được mã giảm giá', '2024-11-08 17:10:00', 'Mã giảm giá', 'Hoàn thành'),
(9, 29, 'Góp ý về giao diện ứng dụng', '2024-11-09 18:05:00', 'Góp ý', 'Đang xử lý'),
(10, 30, 'Yêu cầu hỗ trợ giao hàng nhanh', '2024-11-10 19:00:00', 'Hỗ trợ giao hàng', 'Hoàn thành');

-- Product reviews
INSERT INTO Product_Reviews (Review_Id, Order_Id, RUser_Id, DUser_Id, CUser_Id, Service_Request_Id, Created_At, Rating, Review_Text)
VALUES
(1, 1, 31, 11, 1, 1, '2024-01-05 10:00:00', 5, 'Mon an rat ngon va giao hang nhanh'),
(2, 2, 32, 12, 1, 2, '2024-01-10 12:30:00', 4, 'Tai xe lich su nhung mon an hoi nguoi'),
(3, 3, 33, 13, 2, 3, '2024-02-15 14:00:00', 3, 'Dich vu tam duoc, co the cai thien'),
(4, 4, 34, 14, 2, 4, '2024-03-01 15:30:00', 2, 'Mon an khong ngon, giao hang cham'),
(5, 5, 35, 15, 3, 5, '2024-03-20 17:45:00', 1, 'Rat that vong voi chat luong mon an'),
(6, 6, 36, 16, 3, 6, '2024-04-10 18:00:00', 5, 'Mon an tuyet voi, tai xe nhiet tinh'),
(7, 7, 37, 17, 4, 7, '2024-04-25 19:15:00', 4, 'Dich vu tot nhung gia hoi cao'),
(8, 8, 38, 18, 4, 8, '2024-05-05 20:00:00', 5, 'Tai xe rat de thuong, giao hang nhanh'),
(9, 9, 39, 19, 5, 9, '2024-05-15 21:30:00', 3, 'Mon an binh thuong, khong dac sac'),
(10, 10, 40, 20, 5, 10, '2024-06-01 22:45:00', 2, 'Rat that vong ve dich vu giao hang');

-- Report type
INSERT INTO Report_Types (Report_Type_Id, Report_Type_Name)
VALUES
(1, 'Bao cao giao hang cham'),
(2, 'Bao cao thai do tai xe'),
(3, 'Bao cao chat luong mon an'),
(4, 'Phan nan ve dich vu khach hang'),
(5, 'Phan hoi ve ung dung'),
(6, 'Yeu cau ho tro khan cap'),
(7, 'Phan nan ve ma giam gia'),
(8, 'Phan hoi ve hoa don sai'),
(9, 'Gop y ve he thong'),
(10, 'Khieu nai ve dich vu giao hang');

-- Reports
-- Chèn 25 dòng dữ liệu vào bảng Reports
INSERT INTO Reports (Report_Id, Report_Type_Id, Service_Request_Id, Generated_By, RUser_Id, DUser_Id, Created_At, Report_Description)
VALUES
(1, 1, 1, 'Driver', 31, 11, '2024-01-01 10:00:00', 'Giao hang cham hon du kien'),
(2, 2, 2, 'Restaurant', 32, 12, '2024-01-02 11:30:00', 'Thai do tai xe khong tot'),
(3, 3, 3, 'Driver', 33, 13, '2024-01-03 12:15:00', 'Mon an khong dam bao chat luong'),
(4, 4, 4, 'Restaurant', 34, 14, '2024-01-04 13:45:00', 'Dich vu khach hang cham phan hoi'),
(5, 5, 5, 'Driver', 35, 15, '2024-01-05 14:30:00', 'Ung dung bi loi khi su dung'),
(6, 6, 6, 'Restaurant', 36, 16, '2024-01-06 15:00:00', 'Can ho tro khan cap trong giao hang'),
(7, 7, 7, 'Driver', 37, 17, '2024-01-07 16:20:00', 'Ma giam gia khong dung duoc'),
(8, 8, 8, 'Restaurant', 38, 18, '2024-01-08 17:10:00', 'Hoa don sai thong tin'),
(9, 9, 9, 'Driver', 39, 19, '2024-01-09 18:05:00', 'He thong ung dung can cai thien'),
(10, 10, 10, 'Restaurant', 40, 20, '2024-01-10 19:00:00', 'Khieu nai ve dich vu giao hang'),
(11, 1, 1, 'Driver', 31, 11, '2024-01-11 10:00:00', 'Giao hang bi cham do tai xe'),
(12, 2, 2, 'Restaurant', 32, 12, '2024-01-12 11:30:00', 'Phan nan ve thai do tai xe'),
(13, 3, 3, 'Driver', 33, 13, '2024-01-13 12:15:00', 'Chat luong mon an khong on dinh'),
(14, 4, 4, 'Restaurant', 34, 14, '2024-01-14 13:45:00', 'Dich vu cham giai quyet van de'),
(15, 5, 5, 'Driver', 35, 15, '2024-01-15 14:30:00', 'Giao dien ung dung kho su dung'),
(16, 6, 6, 'Restaurant', 36, 16, '2024-01-16 15:00:00', 'Can ho tro trong qua trinh giao hang'),
(17, 7, 7, 'Driver', 37, 17, '2024-01-17 16:20:00', 'Ma giam gia khong hoat dong'),
(18, 8, 8, 'Restaurant', 38, 18, '2024-01-18 17:10:00', 'Thong tin hoa don khong chinh xac'),
(19, 9, 9, 'Driver', 39, 19, '2024-01-19 18:05:00', 'Gop y ve he thong ung dung'),
(20, 10, 10, 'Restaurant', 40, 20, '2024-01-20 19:00:00', 'Dich vu giao hang can cai thien'),
(21, 1, 1, 'Driver', 31, 11, '2024-01-21 10:00:00', 'Tai xe giao hang cham hon mong doi'),
(22, 2, 2, 'Restaurant', 32, 12, '2024-01-22 11:30:00', 'Thai do tai xe gay kho chiu'),
(23, 3, 3, 'Driver', 33, 13, '2024-01-23 12:15:00', 'Phan nan ve chat luong mon an'),
(24, 4, 4, 'Restaurant', 34, 14, '2024-01-24 13:45:00', 'Cham giai quyet van de cua khach hang'),
(25, 5, 5, 'Driver', 35, 15, '2024-01-25 14:30:00', 'Loi ung dung trong qua trinh dat hang');

