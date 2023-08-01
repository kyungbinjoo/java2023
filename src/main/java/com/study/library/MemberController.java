package com.study.library;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.library.model.BookDTO;
import com.study.library.model.MemberDTO;
import com.study.library.service.BookMapper;
import com.study.library.service.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private BookMapper bookMappper;
	
	@RequestMapping("/list_member.do")
	public String listMember(HttpServletRequest req) {
		List<MemberDTO> list = memberMapper.listMember();
		req.setAttribute("listMember",list);
		return "member/list";
	}
	
	@RequestMapping(value="regist_member.do", method=RequestMethod.GET)
	public String registMemberForm() {
		return "member/registForm";
	}
	
	@RequestMapping(value="regist_member.do", method=RequestMethod.POST)
	public String registMemberDone(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		if(dto.getId() == req.getParameter("id")) {
			System.out.println("중복");
		}int res = memberMapper.insertMember(dto);
		return "member/registDone";
	}
	
	@RequestMapping(value="login_member.do", method=RequestMethod.POST)
	public String loginMember(@RequestParam Map<String, String> params, MemberDTO dto,HttpServletRequest req) {
		if(params.get("id") == dto.getId()) {
			List<MemberDTO> list = memberMapper.listMember();
			req.setAttribute("listMember",list);
			return "admin/adminPage";
		}
		return "member/myPage";  
	}
	
	@RequestMapping(value="search_book.do", method=RequestMethod.GET)
	public String searchBook() {
		return "book/search";
	}
	
	@RequestMapping(value="regist_book.do", method=RequestMethod.POST)
	public String registBook(HttpServletRequest req, @ModelAttribute BookDTO dto) {
		int res = bookMappper.insertBook(dto);
		
		if (res>0) {
			req.setAttribute("msg", "책등록성공");
			req.setAttribute("url", "list_book.do");
		}else {
			req.setAttribute("msg", "책등록실패");
			req.setAttribute("url", "home.do");
		}
		return "message";	
	}
	
	@RequestMapping("/list_book.do")
	public String listBook(HttpServletRequest req) {
		List<BookDTO> list = bookMappper.listBook();
		req.setAttribute("listBook",list);
		return "book/list";
	}
	
	@RequestMapping(value="serch_book.do", method=RequestMethod.POST)
	public String searchBook(HttpServletRequest req, @ModelAttribute BookDTO dto) {
		List<BookDTO> list = bookMappper.selectBookbyTitle("title");
		
		req.setAttribute("listBook",list);
		return "book/list";
	}
	
	@RequestMapping("delete_book.do")
	public String deleteBook(HttpServletRequest req, @RequestParam int no) {
		int res = bookMappper.deleteBook(no);
		if(res>0) {
			req.setAttribute("msg", "책 삭제 완료");
			req.setAttribute("url","list_book.do");
		}
		else {
			req.setAttribute("msg", "삭제 실패");
			req.setAttribute("url", "home.do");
		}
		return "message";
		
	}
	

}
