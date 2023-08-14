package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kic.mskim.Login;
import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import member.Member;
//import member.MemberDao;
import member.MemberMybatis;

@WebServlet(urlPatterns= {"/member/*"},  
initParams= {@WebInitParam(name="view",value="/view/member/"),//jsp 위치
		@WebInitParam(name="login",value="login")} )  //package

public class MemberController extends  MskimRequestMapping {
	
    @RequestMapping("joinForm") //  /member/joinForm
	public String  joinForm(HttpServletRequest request, 
			HttpServletResponse response) {
    	
		
		return "joinForm";
	}
    
    @RequestMapping("loginForm") //  /member/joinForm
	public String  loginForm(HttpServletRequest request, 
			HttpServletResponse response) {
		
		return "loginForm";
	}
    
    @RequestMapping("joinPro") //  /member/joinForm
	public String  joinPro(HttpServletRequest request, 
			HttpServletResponse response) {
    	try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	Member mem = new Member();
    	mem.setId(request.getParameter("id"));
    	mem.setPass(request.getParameter("pass"));
    	mem.setName(request.getParameter("name"));
    	mem.setGender(Integer.parseInt(request.getParameter("gender")));
    	mem.setTel(request.getParameter("tel"));
    	mem.setEmail(request.getParameter("email"));
    	mem.setZipcode(request.getParameter("zipcode"));
    	mem.setAddress(request.getParameter("address"));

    	MemberMybatis md = new MemberMybatis();
    	int num = md.insertMember(mem);
    	String msg = "";
    	String url = "";
    	if (num > 0) {
    		//insert ok
    		msg = mem.getName() + "님이 가입을 하였습니다";
    		url = "member/loginForm";
    	} else {
    		// insert error
    		msg = "회원가입이 실패 하였습니다";
    		url = "member/joinForm";
    	}
    	request.setAttribute("msg", msg);
    	request.setAttribute("url", url);
		return "alert";
	}
	
    
    @RequestMapping("loginPro") //  /member/joinForm
	public String  loginPro(HttpServletRequest request, 
			HttpServletResponse response) {
    	
    	String id = request.getParameter("id");
    	String pass = request.getParameter("pass");

    	MemberMybatis md = new MemberMybatis();
    	Member mem = md.oneMember(id); 
    	String msg = "";
    	String url = "";
    	if (mem ==null) {   //id 없음
    		msg="아이디를 확인 하세요";
    	    url="member/loginForm";
    	} else  {	
    		if (pass.equals(mem.getPass())) {  //login ok
    			request.getSession().setAttribute("id", id);
    		    msg=mem.getName()+"님이 로그인 하셨습니다";
    			url="home/index";
    		} else {
    			msg = "비밀번호를 확인 하세요";
    			url="member/loginForm";
    		}}
    	request.setAttribute("msg", msg);
    	request.setAttribute("url", url);
		return "alert";
	}
    
    
    
    @RequestMapping("logout") //  /member/joinForm
	public String  logout(HttpServletRequest request, 
			HttpServletResponse response) {
    	HttpSession session = request.getSession();
    	String login = (String)session.getAttribute("id");
    	session.invalidate();
    	String msg = login + "님이 로그아웃 되었습니다";
    	String url = "member/loginForm";
    	request.setAttribute("msg", msg);
    	request.setAttribute("url", url);
    	return "alert";
	}
    
  
    @RequestMapping("memberInfo") //  /member/joinForm
    @Login("MemberLoginUser")
	public String  memberInfo(HttpServletRequest request, 
			HttpServletResponse response) {
    	HttpSession session = request.getSession();
    	String id = (String)session.getAttribute("id");
    	Member m = new MemberMybatis().oneMember(id);
    	System.out.println(m);
    	request.setAttribute("m", m);
		return "memberInfo";
	}
    
    
    
    
    
    @RequestMapping("memberUpdateForm") 
    @Login("MemberLoginUser")
	public String  memberUpdateForm(HttpServletRequest request, 
			HttpServletResponse response) {
    	HttpSession session = request.getSession();
    	String id = (String)session.getAttribute("id");
    	Member m = new MemberMybatis().oneMember(id);
    	
    	request.setAttribute("m", m);
		return "memberUpdateForm";
	}
    
    @RequestMapping("checkDuplicateId") 
   
	public String  checkDuplicateId(HttpServletRequest request, 
			HttpServletResponse response) {
    
    	String id = request.getParameter("id");
    	Member m = new MemberMybatis().oneMember(id);
    	if (m==null) request.setAttribute("chk", "사용 가능한 아이디 입니다.");
    	else request.setAttribute("chk", "아이디가 이미 사용 중입니다. 다른 아이디를 선택해주세요.");
    	
    	
		return "checkDuplicateId";
	}
    
    
    
    
    @RequestMapping("memberUpdatePro")
    @Login("MemberLoginUser")
	public String  memberUpdatePro(HttpServletRequest request, 
			HttpServletResponse response) {
    	try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();			}
    	HttpSession session = request.getSession();
    	String id = (String) session.getAttribute("id");
    	String msg="로그인이 필요합니다";    	String url="member/loginForm";
    		Member newm = new Member();
    		newm.setId(id);
    		newm.setPass(request.getParameter("pass"));
    		newm.setName(request.getParameter("name"));
    		newm.setGender(Integer.parseInt(request.getParameter("gender")));
    		newm.setTel(request.getParameter("tel"));
    		newm.setEmail(request.getParameter("email"));
    		newm.setZipcode(request.getParameter("zipcode"));
    		newm.setAddress(request.getParameter("address"));
    		MemberMybatis md = new MemberMybatis();
    		Member  dbm = md.oneMember(id);  //password 확인
    		
    		if (dbm!=null) {
    			if (dbm.getPass().equals(newm.getPass())) {
    				int num = md.updateMember(newm);
    				
    				if (num>0) {
    					msg=newm.getName() +"님의 정보 수정이 되었습니다";
    					url="member/memberInfo";
    				} else {
    					msg="정보수정이 실패 하였습니다";
    					url="member/memberUpdateForm";
    				}
    			} else {
    				msg="비밀번호가 틀렸습니다";
    				url="member/memberUpdateForm";
    			}
    		}  //password 확인
    	
    		
    	
    		request.setAttribute("msg", msg);
	    	request.setAttribute("url", url);
	    	return "alert";
	}
    
    @RequestMapping("memberPassForm") 
    @Login("MemberLoginUser")
    
	public String  memberPassForm(HttpServletRequest request, 
			HttpServletResponse response) { 
    	

		return "memberPassForm";
    	
	}
    
    
    @RequestMapping("memberPassPro")
    @Login("MemberLoginUser")
	public String  memberPassPro(HttpServletRequest request, 
			HttpServletResponse response) {
    	HttpSession session = request.getSession();
    	String id = (String) session.getAttribute("id");
    	String msg="로그인이 필요합니다";    	String url="loginForm.jsp";
    	MemberMybatis md = new MemberMybatis();
    		Member  dbm = md.oneMember(id);  //password 확인
    		String pass  = request.getParameter("pass"); 
    		String chgpass1  = request.getParameter("chgpass1"); 
    		if (dbm!=null) {
    			if (dbm.getPass().equals(pass)) {
    				int num = md.changePass(id, chgpass1); 
    				if (num>0) { 
    					msg=dbm.getName() +"님의 비밀번호가 수정 되었습니다";
    					url="member/memberInfo";
    				} else {
    					msg="비밀번호 수정을 실패 하였습니다";
    					url="member/memberPassForm";	}					
    			} else {
    				msg="비밀번호가 틀렸습니다";
    				url="member/memberPassForm";} 		}  //password 확인
    	request.setAttribute("msg", msg);
    	request.setAttribute("url", url);
    	return "alert";		}   
    
    
    
    @RequestMapping("memberDeleteForm") 
    @Login("MemberLoginUser")
	public String  memberDeleteForm(HttpServletRequest request, 
			HttpServletResponse response) {
    	 	
    	
		return "memberDeleteForm";
	}
    
    @RequestMapping("memberDeletePro")
    @Login("MemberLoginUser")
	public String  memberDeletePro(HttpServletRequest request, 
			HttpServletResponse response) {
    	HttpSession session = request.getSession();
    	String id = (String) session.getAttribute("id");
    	String msg="로그인이 필요합니다";   	String url="member/loginForm";
    	MemberMybatis md = new MemberMybatis();
    		Member  dbm = md.oneMember(id);  //password 확인
    		String pass  = request.getParameter("pass"); 
    		if (dbm!=null) {
    			if (dbm.getPass().equals(pass)) {
    				int num = md.deleteMember(id); 
    				if (num>0) {
    					msg=dbm.getName() +"님의 탈퇴 처리 되었습니다";
    					session.invalidate();
    					url="member/loginForm";
    				} else {
    					msg="회원탈퇴가 실패 하였습니다";
    					url="member/memberDeleteForm";
    				}	} else {
    				msg="비밀번호가 틀렸습니다";
    				url="member/memberDeleteForm";	}}  //password 확인
    	request.setAttribute("msg", msg);
    	request.setAttribute("url", url);  	return "alert";	
	} 
    
    @RequestMapping("pictureimgForm")
    public String  pictureimgForm(HttpServletRequest request, 
			HttpServletResponse response) {
    	 	
    	
		return "pictureimgForm";
	}
    
    
    @RequestMapping("picturePro") 
    public String  picturePro(HttpServletRequest request, 
			HttpServletResponse response) {
    	String path = 
    			request.getServletContext().getRealPath("/")
    			+"view/member/picture/";
    	String filename = null;
 	    	try {
			MultipartRequest  multi = 
			new MultipartRequest(request,path,10*1024*1024,"UTF-8");
			filename = multi.getFilesystemName("picture");
				//upload filename   type="file" name="picture">
    	} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();}
	    request.setAttribute("filename", filename);
    	
		return "picturePro";
	}
    
   
    
    @RequestMapping("memberList") 
    @Login("MemberLoginAdmin")
    public String  memberList(HttpServletRequest request, 
			HttpServletResponse response) {
    	 String id = (String) request.getSession().getAttribute("id"); 	
    	 List<Member>  li = new MemberMybatis().memberList();  	
    	 request.setAttribute("li", li);
		return "memberList";
	}
	

@RequestMapping("AdminMemberDelete")
@Login("MemberLoginAdmin")
public String  MemberAdminDelete(HttpServletRequest request, 
		HttpServletResponse response) {
	
	String[] chkdel = request.getParameterValues("chkdel");
	
	MemberMybatis md = new MemberMybatis();
	
	for (String cid : chkdel) {
		
		md.deleteMember(cid); 
		String msg = "해당 회원의 탈퇴 처리가 되었습니다";
		String url = "member/memberList";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);		
	}

	
  	return "alert";	
} 
}