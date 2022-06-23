create or replace procedure vocDelete  --프로시저 이름 
(
--매개변수
    p_groupNo number,
    p_step    number,
    p_no      number
)
is
--변수선언부
cnt number;

begin
--처리할 내용
    --[1] 원본글인 경우
    if p_step=0 then
        --답변이 존재하는지 체크
        select count(*) into cnt
        from board
        where b_groupno=p_groupNo;
        
        --1) 답변이 존재하면
        if cnt>1 then
          update board
          set b_delflag='Y'
          where b_no = p_no;
        else --2) 답변이 없으면
          delete from board
          where b_no = p_no;
        end if;
    else --[2] 답변글인 경우
        delete from board
        where b_no=p_no;
        
        --답변을 삭제 후 남아있는 글이 1개인지 체크
        select count(*) into cnt
        from board
        where b_groupno=p_groupNo;
      
        if cnt=1 then
            /*--남아있는 글이 원본글이면서 삭제된 글이라면
            select count(*) into cnt from reboard
            where groupno=p_groupNo and delflag='Y' and step=0;
            
            if cnt=1 then
                --원본글도 delete
                delete from reboard
                where groupno=p_groupNo;
            end if;*/
            
            delete from board a
            where exists (select 1 from board b
                where a.b_no=b.b_no
                and b_groupno=p_groupNo and b_delflag='Y' and b_step=0);
        end if;        
    end if;
    
    commit;

EXCEPTION
    WHEN OTHERS THEN
   raise_application_error(-20001, ' 실패!');
        ROLLBACK;
end;