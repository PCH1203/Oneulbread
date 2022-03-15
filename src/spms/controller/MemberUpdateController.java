package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlMemberDAO;
import spms.vo.Member;

@Component("/member/update.do")
public class MemberUpdateController implements Controller, DataBinding {
   MySqlMemberDAO memberDAO = null;
   
   public MemberUpdateController setMemberDAO(MySqlMemberDAO memberDAO) {
      this.memberDAO = memberDAO;
      return this;
   }
   
   @Override
   public Object[] getDataBinders() {
      //key 값과 이름으로 매핑하여 자동으로 생성해야 되는 클래스 타입 지정
      return new Object[] {
            "no", Integer.class,
            "member", spms.vo.Member.class
      };
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      Member member = (Member)model.get("member");
      
      if(member.getEmail() == null) {
         Integer no = (Integer)model.get("no");
         Member detailInfo = memberDAO.selectOne(no);
         model.put("member", detailInfo);
         return "/member.jsp";
      } else {
         memberDAO.update(member);
            Member modifiedUser = memberDAO.exist(member.getEmail(), member.getPassword());
            HttpSession session = (HttpSession)model.get("session");
            session.setAttribute("Member", modifiedUser);
         return "redirect:/mypage.jsp";
      }
   }

}