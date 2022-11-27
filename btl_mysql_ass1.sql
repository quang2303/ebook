CREATE DATABASE ebook;
use ebook;
CREATE TABLE Customer (
    ID varchar(255) NOT NULL ,
    account varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(255) not null,
    phone_number varchar(255) not null,
    Fname varchar(255)  not null,
    Mname varchar(255) default null,
    Lname varchar(255)  not null,
    date_of_birth DATE not null,
    PRIMARY KEY (ID)
);

CREATE TABLE Publisher (
    Pub_ID varchar(255) NOT NULL ,
    name varchar(255)  not null,
	url varchar(255) NOT NULL,
    PRIMARY KEY (Pub_ID)
);

CREATE TABLE Author (
    Aut_ID varchar(255) NOT NULL ,
    email varchar(255) not null,
    name varchar(255)  not null,
    date_of_birth DATE not null,
    PRIMARY KEY (Aut_ID)
);
CREATE TABLE Orders (
    cus_id varchar(255) not null,
	order_id varchar(255) NOT NULL ,
    total_price int  not null,
    day DATE not null,
    PRIMARY KEY (order_id)
);

CREATE TABLE Customer_care (
    Cus_ID varchar(255) NOT NULL ,
    ID varchar(255) NOT NULL ,
    content varchar(255) not null,
    cus_email varchar(255) not null,
    PRIMARY KEY (Cus_ID,ID)
);

CREATE TABLE Comment (
    Cus_ID varchar(255) NOT NULL ,
    Book_ID varchar(255) NOT NULL ,
    content varchar(255) not null,
    rating float not null,
    PRIMARY KEY (Cus_ID,Book_ID)
);

CREATE TABLE Book_of_order (
    Order_ID varchar(255) NOT NULL ,
	Book_ID varchar(255)  not null,
	PRIMARY KEY (Order_ID,Book_ID)
);
CREATE TABLE Edition (
	Book_ID varchar(255)  not null,
	Version varchar(255) NOT NULL ,
	Year YEAR  NOT NULL ,
	PRIMARY KEY (Book_ID,Version)
);

CREATE TABLE Book_catagory (
	Book_ID varchar(255)  not null,
	Name varchar(255) NOT NULL ,
	PRIMARY KEY (Book_ID,Name)
);

CREATE TABLE Cart (
    Cus_id varchar(255) NOT NULL ,
    quantity int NOT NULL,
	total_pricce int NOT NULL,
    PRIMARY KEY (Cus_id)
);

CREATE TABLE Book_Of_Cart (
    Cart_id varchar(255) NOT NULL ,
    Book_ID varchar(255)  not null,
    PRIMARY KEY (Cart_id,Book_ID)
);

CREATE TABLE Author_of_book (
    Au_id varchar(255) NOT NULL ,
    Book_ID varchar(255)  not null,
    PRIMARY KEY (Au_id,Book_ID)
);

CREATE TABLE Publisher_address (
    Pub_id varchar(255) NOT NULL ,
    Pub_address varchar(255)  not null,
    PRIMARY KEY (Pub_id,Pub_address)
);

CREATE TABLE Favorite_book (
    Book_ID varchar(255)  not null,
	Cus_id varchar(255) NOT NULL ,
    PRIMARY KEY (Book_ID,Cus_id)
);
CREATE TABLE Book (
    ISBN varchar(255) NOT NULL ,
    num_of_page int NOT NULL,
	name varchar(255)  not null,
    book_status varchar(255) NOT NULL,
    rating float not null,
    price int NOT NULL,
	discount int NOT NULL,
    pub_id varchar(255)  not null,
    img varchar(255) NOT NULL,
    PRIMARY KEY (ISBN)
-- 	CONSTRAINT FK_PUB_ID FOREIGN KEY (Aut_ID) 
--     REFERENCES Persons(PersonID)
);
-- insert data
	
INSERT INTO book
VALUES ('8935280904262',223, 'Đọc vị bất kỳ ai','Đang bán',4.5,79000,30,'T01','https://i0.wp.com/ducngokhong.com/wp-content/uploads/2017/06/duc-ngo-khong-doc-vi-bat-ky-ai-book-review1-1.jpg?resize=800%2C533&ssl=1'),
('9781250854124',496, 'Nona the Ninth','Đang bán',5,504000,0,'T02','https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1627659550i/58662507._UY630_SR1200,630_.jpg'),
('9781108667579',540, 'Dinosaurs','Đang bán',5,1344000,0,'T03','https://th.bing.com/th/id/OIP.2aK3oWoZLwGu9qTbf33MswHaI6?pid=ImgDet&rs=1'),
('9781108857185',412, 'World War II','Đang bán',5,720000,10,'T03','https://th.bing.com/th/id/OIP.lddxtQPSfI3ZuAlQQ-FZYAHaI1?pid=ImgDet&rs=1'),
('9781491903117',614, 'Designing Data-Intensive Applications','Đang bán',4,1220000,0,'T04','https://th.bing.com/th/id/R.1bc7ee20263f25ba3fbefad55c982b0d?rik=TCk%2bfVe%2b4zp%2b6A&pid=ImgRaw&r=0'),
('9781108957694',286, 'Mathematical Logic through Python','Đang bán',4.5,576000,5,'T03','https://forcoder.su/wp-content/uploads/mathematical-logic-through-python.jpg'),
('9781668001233',352, 'It Start with Us','Tạm ngưng',5,336000,20,'T05','https://www.gnomebookwriting.com/blog/wp-content/uploads/2022/10/FLVPgUHXsAEd4tV.jpg'),
('9780698176508',304, 'The songs of trees','Đang bán',3.5,360000,0,'T02','https://th.bing.com/th/id/OIP.e7IOkYpKjZbryu8Bc-xqqwHaLQ?pid=ImgDet&rs=1'),
('9781108645140',724, 'Mathematics for Physicists','Đang bán',4.5,1000000,5,'T03','https://th.bing.com/th/id/OIP.qjft2oKpsqFrUJG-WrtMcQHaJt?pid=ImgDet&rs=1'),
('9780765396402',264, 'American Hero','Đang bán',4,120000,10,'T02','https://th.bing.com/th/id/OIP.aXyN2SGKiHa1icdyAB17JQHaHa?pid=ImgDet&rs=1'),
('9780393442946',728, 'Worlds Together, Worlds Apart','Tạm ngưng',4.3,500000,5,'T02','https://cs.cheggcdn.com/covers2/70020000/70023348_1578715881_Width288.jpg'),
('9781136052460',331, 'Colonial Legacies','Đang bán',4,900000,0,'T02','https://th.bing.com/th/id/OIP.NCooh38d0gd_JJ4dtGRavgAAAA?pid=ImgDet&rs=1'),
('9781908284976',132, 'Effective Classroom Communication Pocketbook','Đang bán',4.5,250000,0,'4.5','https://th.bing.com/th/id/R.859ddce6afb4e6a84961688c6abbeb90?rik=Ph55wTqzgFtQEA&pid=ImgRaw&r=0');
select * from book;

INSERT INTO Edition
VALUES ('9781250854124','3','2022'),
('8935280904262','33','2019'),
('9781108667579','4','2021'),
('9781108857185','2','2020'),
('9781491903117','1','2017'),
('9781108957694','1','2020'),
('9781668001233','2','2022'),
('9780698176508','1','2017'),
('9781108645140','1','2019'),
('9780765396402','1','2020'),
('9780393442946','3','2021'),
('9781136052460','1','2012'),
('9781908284976','1','2015');


INSERT INTO Book_catagory
VALUES ('9781250854124','Viễn tưởng'),
('9781250854124','Kịch chính'),
('8935280904262','Tâm lý'),
('9781108667579','Tự nhiên'),
('9781108667579','Sinh học	'),
('9781108857185','Chiến tranh'),
('9781491903117','Lập trình'),
('9781108957694','Logic'),
('9781668001233','Tiểu thuyết'),
('9781668001233','Lãng mạn'),
('9780698176508','Tự nhiên'),
('9781108645140','Vật lý'),
('9780765396402','Viễn tưởng'),
('9780765396402','Hành động'),
('9780393442946','Lịch sử'),
('9781136052460','Lịch sử'),
('9781908284976','Giáo dục'),
('9781908284976','Tâm lý');


INSERT Into Author
VALUES  ('1', 'lieberman@gmail.com', 'TS David J Lieberman', '1950/06/15'), 
		('2', 'tamsynmuir@gmail.com', 'Tamsyn Muir', '1985/03/14'),
        ('3', 'fastovsky@gmail.com', 'David E. Fastovsky', '1954/12/18'),
        ('4', 'weishampel@gmail.com', 'David B. Weishampel', '1952/11/16'),
        ('5', 'johnsibbick@gmail.com', 'John Sibbick', '1960/01/03'),
        ('6', 'evanmawdsley@gmail.com', 'Evan Mawdsley', '1945/06/11'),
        ('7', 'martinkleppmann@gmail.com', 'Martin Kleppmann', '1980/08/16'),
        ('8', 'gonczarowski@gmail.com', 'Yannai A. Gonczarowski', '1974/04/18'),
        ('9', 'colleenhoover@gmail.com', 'Colleen Hoover', '1979/12/11'),
        ('10', 'georgehaskell@gmail.com', 'David George Haskell', '1969/05/14'),
        ('11', 'alexanderaltland@gmail.com', 'Alexander Altland', '1965/08/09'),
        ('12', 'janvondelft@gmail.com', 'Jan von Delft', '1960/12/10'),
        ('13', 'georgerrmatin@gmail.com', 'George R. R. Martin', '1948/09/20'),
        ('14', 'jeremyadelman@gmail.com', 'Jeremy Adelman', '1960/10/25'),
        ('15', 'elizabethpollard@gmail.com', 'Elizabeth Pollard', '1920/09/12'),
        ('16', 'Richardchurches@gmail.com', 'Richard Churches', '1971/10/13');


INSERT Into Author_of_book
VALUES ('1', '8935280904262'),
		('2', '9781250854124'),
        ('3', '9781108667579'),
        ('4', 9781108667579),
        ('5', '9781108667579'),
        ('6', '9781108857185'),
        ('7', '9781491903117'),
        ('8', '9781108957694'),
        ('9', '9781668001233'),
        ('10', '9780698176508'),
        ('11', '9781108645140'),
        ('12', '9781108645140'),
        ('13', '9780765396402'),
        ('14', '9780393442946'),
        ('15', '9780393442946'),
        ('14', '9781136052460'),
        ('16', '9781908284976');


INSERT INTo Publisher
VALUES ('T01', 'NXB Lao Động', 'nxblaodong.com.vn'),
		('T02', 'Tor Publishing Group', 'en.wikipedia.org/wiki/Tor_Books'),
        ('T03', 'Cambridge University Press', 'en.wikipedia.org/wiki/Cambridge_University_Press'),
        ('T04', 'O Reilly Media', 'en.wikipedia.org/wiki/O%27Reilly_Media'),
        ('T05', 'Atria Books', 'en.wikipedia.org/wiki/Atria_Publishing_Group');
        
ALTER TABLE customer_care
ADD CONSTRAINT FK_care_customer
FOREIGN KEY (Cus_ID) REFERENCES customer(ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE favorite_book
ADD CONSTRAINT FK_favorite_book_book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE favorite_book
ADD CONSTRAINT FK_favorite_book_customer
FOREIGN KEY (Cus_ID) REFERENCES customer(ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Comment
ADD CONSTRAINT FK_Comment_customer
FOREIGN KEY (Cus_ID) REFERENCES customer(ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Comment
ADD CONSTRAINT FK_Comment_Book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE publisher_address
ADD CONSTRAINT FK_publisher_address_publisher
FOREIGN KEY (Pub_id) REFERENCES publisher(Pub_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE orders
ADD CONSTRAINT FK_orders_customer
FOREIGN KEY (cus_id) REFERENCES customer(ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE author_of_book
ADD CONSTRAINT FK_author_of_book_author
FOREIGN KEY (Au_ID) REFERENCES author(Aut_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE author_of_book
ADD CONSTRAINT FK_author_of_book_book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE book_of_order
ADD CONSTRAINT FK_book_of_order_orders
FOREIGN KEY (Order_ID) REFERENCES orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE book_of_order
ADD CONSTRAINT FK_book_of_order_book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE book_of_cart
ADD CONSTRAINT FK_book_of_cart_cart
FOREIGN KEY (Cart_id) REFERENCES cart(Cus_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE book_of_cart
ADD CONSTRAINT FK_book_of_cart_book
FOREIGN KEY (Book_id) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE cart
ADD CONSTRAINT FK_cart_customer
FOREIGN KEY (Cus_id) REFERENCES customer(ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE book_catagory
ADD CONSTRAINT FK_book_catagory_book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;     

ALTER TABLE edition
ADD CONSTRAINT FK_edition_book
FOREIGN KEY (Book_ID) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;     
	
select * from Publisher;        
select * from Author_of_book;
select * from Author;
select * from Book_catagory;
select * from Edition;
select * from book;







