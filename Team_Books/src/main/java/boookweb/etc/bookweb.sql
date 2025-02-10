# 프로젝트 : jspweb DML 과 샘플 INSERT
# 1. DB 구성한다.
drop database if exists bookweb;                
create database bookweb;                           
use bookweb;                                                  
# 2. 테이블 생성  , PK 테이블 먼저 생성 한다. 적절하게 타입 과 제약조건을 고려한다.

# [1] 테이블 생성 
create table book(
 bno int unsigned auto_increment , 
    btitle varchar(255) not null unique ,
    bwriter varchar(255) not null ,
    bcompany varchar(255) not null ,
	cdate datetime default now() , 
    udate datetime default now() , 
    constraint primary key( bno ) # 제약조건을 추가 또는 설정.
); # table end

# [*] DB 샘플 삽입
INSERT INTO book(bno, btitle, bwriter, bcompany, cdate, udate) VALUES						
(1, '자바의 정석', '남궁성', '도우출판', '2025-01-01', '2025-01-01'),						
(2, '토비의 스프링', '이일민', '에이콘출판', '2025-01-02', '2025-01-02'),						
(3, 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', '2025-01-03', '2025-01-03'),						
(4, 'Clean Code', 'Robert C. Martin', 'Prentice Hall', '2025-01-04', '2025-01-04'),						
(5, '파이썬 코딩의 기술', '브렛 슬라킨', '길벗', '2025-01-05', '2025-01-05'),						
(6, '모던 자바스크립트', '이선 브라운', '한빛미디어', '2025-01-06', '2025-01-06'),						
(7, '리팩터링', '마틴 파울러', '인사이트', '2025-01-07', '2025-01-07'),						
(8, '알고리즘 문제 해결 전략', '구종만', '인사이트', '2025-01-08', '2025-01-08'),						
(9, '객체지향의 사실과 오해', '조영호', '위키북스', '2025-01-09', '2025-01-09'),						
(10, 'The Pragmatic Programmer', 'Andy Hunt', 'Addison-Wesley', '2025-01-10', '2025-01-10'),						
(11, 'Head First Design Patterns', 'Eric Freeman', 'O’Reilly Media', '2025-01-11', '2025-01-11'),						
(12, 'Do it! 자바 프로그래밍', '정석훈', '이지스퍼블리싱', '2025-01-12', '2025-01-12'),						
(13, 'JavaScript: The Good Parts', 'Douglas Crockford', 'O’Reilly Media', '2025-01-13', '2025-01-13'),						
(14, 'SQL First Steps', 'Joe Celko', 'Morgan Kaufmann', '2025-01-14', '2025-01-14'),						
(15, 'Spring in Action', 'Craig Walls', 'Manning', '2025-01-15', '2025-01-15'),						
(16, 'Kotlin in Action', 'Dmitry Jemerov', 'Manning', '2025-01-16', '2025-01-16'),						
(17, 'Android Programming', 'Bill Phillips', 'Big Nerd Ranch Guides', '2025-01-17', '2025-01-17'),						
(18, 'Vue.js 완벽 가이드', '에반 유', '길벗', '2025-01-18', '2025-01-18'),						
(19, '데이터베이스 설계', 'C.J. 데이트', 'Pearson', '2025-01-19', '2025-01-19'),						
(20, 'Code Complete', 'Steve McConnell', 'Microsoft Press', '2025-01-20', '2025-01-20'),						
(21, 'Designing Data-Intensive Applications', 'Martin Kleppmann', 'O’Reilly Media', '2025-01-21', '2025-01-21'),						
(22, 'Python for Data Analysis', 'Wes McKinney', 'O’Reilly Media', '2025-01-22', '2025-01-22'),						
(23, 'Hadoop: The Definitive Guide', 'Tom White', 'O’Reilly Media', '2025-01-23', '2025-01-23'),						
(24, '머신 러닝 교과서', '세바스찬 라시카', '에이콘출판', '2025-01-24', '2025-01-24'),						
(25, '딥러닝 입문', '김성진', '한빛미디어', '2025-01-25', '2025-01-25'),						
(26, 'Git으로 배우는 버전 관리', '스콧 샤콘', 'O’Reilly Media', '2025-01-26', '2025-01-26'),						
(27, '컴퓨터 네트워킹', 'James Kurose', 'Pearson', '2025-01-27', '2025-01-27'),						
(28, 'Linux Kernel Development', 'Robert Love', 'Addison-Wesley', '2025-01-28', '2025-01-28'),						
(29, 'Unix Programming', 'W. Richard Stevens', 'Prentice Hall', '2025-01-29', '2025-01-29'),						
(30, 'R로 배우는 데이터 분석', '해들리 위컴', '한빛미디어', '2025-01-30', '2025-01-30'),						
(31, 'Azure DevOps', 'Donovan Brown', 'Microsoft Press', '2025-01-31', '2025-01-31'),						
(32, '프로그래밍 C#', 'Ian Griffiths', 'O’Reilly Media', '2025-02-01', '2025-02-01'),						
(33, 'Node.js Design Patterns', 'Mario Casciaro', 'Packt Publishing', '2025-02-02', '2025-02-02'),						
(34, 'C Programming Language', 'Brian W. Kernighan', 'Prentice Hall', '2025-02-03', '2025-02-03'),						
(35, 'Scala Programming', 'Martin Odersky', 'Artima Press', '2025-02-04', '2025-02-04'),						
(36, 'TensorFlow 딥러닝', 'Tom Hope', '에이콘출판', '2025-02-05', '2025-02-05'),						
(37, '빅데이터 분석', 'Daniel G. Murray', 'Wiley', '2025-02-06', '2025-02-06'),						
(38, 'Java Concurrency in Practice', 'Brian Goetz', 'Addison-Wesley', '2025-02-07', '2025-02-07'),						
(39, '데이터베이스 시스템', '이준석', '인사이트', '2025-02-08', '2025-02-08'),						
(40, 'Swift 프로그래밍', 'Chris Lattner', '길벗', '2025-02-09', '2025-02-09'),						
(41, 'Docker in Practice', 'Ian Miell', 'Manning', '2025-02-10', '2025-02-10'),						
(42, '마이크로서비스 설계', 'Sam Newman', '한빛미디어', '2025-02-11', '2025-02-11'),						
(43, 'React Native Cookbook', 'Jonathan Lebensold', 'Packt Publishing', '2025-02-12', '2025-02-12'),						
(44, '고급 프로그래밍', 'Donald Knuth', 'Pearson', '2025-02-13', '2025-02-13'),						
(45, 'Deep Learning with Python', 'François Chollet', 'Manning', '2025-02-14', '2025-02-14'),						
(46, 'Apache Kafka 실전 가이드', 'Neha Narkhede', '한빛미디어', '2025-02-15', '2025-02-15'),						
(47, '디자인 패턴', 'Erich Gamma', 'Addison-Wesley', '2025-02-16', '2025-02-16'),						
(48, 'Programming Rust', 'Jim Blandy', 'O’Reilly Media', '2025-02-17', '2025-02-17'),						
(49, '웹 성능 최적화', 'Ilya Grigorik', 'O’Reilly Media', '2025-02-18', '2025-02-18'),						
(50, '프론트엔드 개발', 'Robin Wieruch', 'Packt Publishing', '2025-02-19', '2025-02-19');						

# DML : INSERT SELECT UPDATE DELETE 

#(1) 게시물 등록
insert into book(bno, btitle, bwriter, bcompany) VALUES(bno, btitle, bwriter, bcompany);
#DAO : String sql = "insert into board(btitle,bcontent,bwriter,bpwd) values(?,?,?,?)";

#(2) 게시물 전체 조회
select * from book; # 작업확인용으로 사용.	
#DAO : String sql = "select * from board";

#(3) 게시물 개별 조회
select * from book where bno = 1;
#DAO : String sql = "select * from board where bno =?";

#(4) 게시물 개별수정
update book set btitle = '나자바바라', bwriter='김현수' , bcompany='현수출판' where bno =1;
#DAO : String sql = "update board set btitle = ? , bcontent = ? where bno =?";