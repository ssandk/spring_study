create table tbl_board (
	bno INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    content TEXT NULL,
    writer VARCHAR(50) NOT NULL,
    regdate TIMESTAMP NOT NULL DEFAULT now(),
    viewcnt INT DEFAULT 0,
    primary key (bno));
     
insert into tbl_board(title, content, writer)
values('제목입니다','내용입니다.', 'user00');


select * from tbl_board;


insert into tbl_board(title, content, writer)
(select title, content, writer from tbl_board);

select * from tbl_board where bno > 0 order by bno desc limit 20,20;


create table tbl_reply (
	rno INT NOT NULL AUTO_INCREMENT,
    bno INT NOT NULL default 0,
    replytext varchar(1000) not null,
	replyer varchar(50) not null,
    regdate timestamp not null default now(),
    updatedate timestamp not null default now(),
    primary key (rno)
);

alter table tbl_reply add constraint fk_board
foreign key (bno) references tbl_board (bno);