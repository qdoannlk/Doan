
-- Table hóa đơn
CREATE TABLE bills
(
  id int PRIMARY KEY AUTO_INCREMENT,
  customer_id int DEFAULT,
  date_order date DEFAULT,
  total float DEFAULT COMMENT 'tổng tiền',
  payment varchar(200) DEFAULT COMMENT 'hình thức thanh toán',
  note text DEFAULT,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu bills
INSERT INTO bills (id, customer_id, date_order, total, payment, note, created_at, updated_at) VALUES
(4, 4, '2018-07-23', 160000, 'COD', 'k', '2018-07-23 04:46:05', '2018-07-23 04:46:05'),
(3, 3, '2018-07-21', 400000, 'ATM', 'Vui lòng giao hàng trước 5h', '2018-07-21 07:29:31', '2018-07-21 07:29:31'),
(2, 2, '2018-07-21', 520000, 'COD', 'Vui lòng chuyển đúng hạn', '2018-07-21 07:20:07', '2018-07-21 07:20:07'),
(1, 1, '2018-07-21', 420000, 'COD', 'không chú', '2018-07-21 07:16:09', '2018-07-21 07:16:09'),
(5, 5, '2018-07-24', 220000, 'COD', 'e', '2018-07-24 07:14:32', '2018-07-24 07:14:32');

-- --------------------------------------------------------

-- Table chi tiết hóa đơn
CREATE TABLE bill_detail
(
  id int PRIMARY KEY AUTO_INCREMENT,
  bill_id int NOT NULL,
  product_id int NOT NULL,
  quantity int NOT NULL COMMENT 'số lượng',
  price double NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT '0000-00-00 00:00:00'
);

-- Insert dữ liệu bill_detail
INSERT INTO bill_detail (id, bill_id, product_id, quantity, price, created_at, updated_at) VALUES
(8, 5, 62, 5, 220000, '2018-07-24 07:14:32', '2018-07-24 07:14:32'),
(7, 4, 2, 1, 160000, '2018-07-23 04:46:05', '2018-07-23 04:46:05'),
(6, 3, 60, 1, 200000, '2018-07-21 07:29:31', '2018-07-21 07:29:31'),
(5, 3, 59, 1, 200000, '2018-07-21 07:29:31', '2018-07-21 07:29:31'),
(4, 2, 60, 2, 200000, '2018-07-21 07:20:07', '2018-07-21 07:20:07'),
(3, 2, 61, 1, 120000, '2018-07-21 07:20:07', '2018-07-21 07:20:07'),
(2, 1, 61, 1, 120000, '2018-07-21 07:16:09', '2018-07-21 07:16:09'),
(1, 1, 57, 2, 150000, '2018-07-21 07:16:09', '2018-07-21 07:16:09');

-- --------------------------------------------------------

-- Table khách hàng
CREATE TABLE customer (
  id int PRIMARY KEY AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  gender varchar(10) NOT NULL,
  email varchar(50) NOT NULL,
  address varchar(100) NOT NULL,
  phone_number varchar(20) NOT NULL,
  note varchar(200) NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu customer
INSERT INTO customer (id, name, gender, email, address, phone_number, note, created_at, updated_at) VALUES
(5, 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '2018-07-24 07:14:32', '2018-07-24 07:14:32'),
(4, 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '2018-07-23 04:46:05', '2018-07-23 04:46:05'),
(3, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '2018-07-21 07:29:31', '2018-07-21 07:29:31'),
(2, 'Khoa phạm', 'Nam', 'khoapham@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '2018-07-21 07:20:07', '2018-07-21 07:20:07'),
(1, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '2018-07-21 07:16:09', '2018-07-21 07:16:09');

-- --------------------------------------------------------

-- Table tin mới
CREATE TABLE news 
(
  id int PRIMARY KEY AUTO_INCREMENT,
  title varchar(200) NOT NULL COMMENT 'tiêu đề',
  content text NOT NULL COMMENT 'nội dung',
  image varchar(100) NOT NULL COMMENT 'hình',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu news
INSERT INTO news (id, title, content, image, create_at, update_at) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam "Bánh trung thu Bơ Sữa HongKong".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------
-- Table danh mục sản phẩm
CREATE TABLE category 
(
  id int PRIMARY KEY AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  slug varchar(100) NOT NULL,
  parent int DEFAULT '0',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu category
INSERT INTO category (id, name, slug, created_at, updated_at) VALUES
(1, 'Bánh mặn', 'banh-man', 'banh-man-thu-vi-nhat-1.jpg', NULL, NULL),
(2, 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '20131108144733.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi "lạc" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', 'banhtraicay.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'Bánh crepe', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng”', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'Bánh Pizza', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này.', 'pizza.jpg', '2016-10-25 17:19:00', NULL),
(7, 'Bánh su kem', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp.', 'sukemdau.jpg', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

-- Table sản phẩm
CREATE TABLE product
(
  id int PRIMARY KEY AUTO_INCREMENT,
  category_id int(10) NOT NULL,
  name varchar(100) NOT NULL,
  slug varchar(100) NOT NULL,
  price float NOT NULL,
  sale_price float DEFAULT,
  content text,
  image varchar(255) NULL,
  type varchar(100) NOT NULL,
  gender varchar(20) NOT NULL,
  origin varchar(100) NOT NULL,
  status tinyint DEFAULT '0',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu product
INSERT INTO product (id, category_id, name, slug, price, sale_price, content, image, type, gender
  , origin, status, created_at, updated_at) VALUES
(1, 'Bánh Crepe Sầu riêng', 5, 'Bánh crepe sầu riêng nhà làm', 150000, 120000, '1430967449-pancake-sau-rieng-6.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(2, 'Bánh Crepe Chocolate', 6, '', 180000, 160000, 'crepe-chocolate.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00');

-- --------------------------------------------------------

-- -- Table banner
CREATE TABLE banner
(
  id int PRIMARY KEY AUTO_INCREMENT,
  link varchar(100) NOT NULL,
  image varchar(100) NOT NULL,
  status tinyint DEFAULT '0',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu slide
INSERT INTO slide (id, link, image) VALUES
(1, '', 'banner1.jpg'),
(2, '', 'banner2.jpg'),
(3, '', 'banner3.jpg'),
(4, '', 'banner4.jpg');

-- --------------------------------------------------------


-- Table tài khoản
CREATE TABLE users
(
  id int PRIMARY KEY AUTO_INCREMENT,
  full_name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  phone varchar(20) DEFAULT,
  address varchar(255) DEFAULT,
  remember_token varchar(100) DEFAULT,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP
);

-- Insert dữ liệu user
INSERT INTO users (id, full_name, email, password, phone, address, remember_token, created_at, updated_at) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33');


-- --------------------------------------------------------


-- Constraints for table product

ALTER TABLE product ADD FOREIGN KEY FK_product_categpry (category_id) REFERENCES category (id);
ALTER TABLE bills ADD FOREIGN KEY FK_bills_customer (customer_id) REFERENCES customer(id);
ALTER TABLE bill_detail ADD FOREIGN KEY FK_bill_detail_bills (bill_id) REFERENCES bills(id);
ALTER TABLE bill_detail ADD FOREIGN KEY FK_bill_detail_product (product_id) REFERENCES product(id);
ALTER TABLE product ADD FOREIGN KEY FK_product_category (category_id) REFERENCES category(id);

