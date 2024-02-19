package com.smhrd.users.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.main.controller.Controller;
import com.smhrd.users.model.UsersDAO;
import com.smhrd.users.model.UsersDTO;

public class CartController implements Controller {
    
    private UsersDAO usersDAO = new UsersDAO(); // DAO 객체 생성 (실제로는 주입되어야 함)
    
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에서 사용자 정보 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");
        
        // 세션에 사용자 ID가 없으면 로그인 페이지로 리다이렉트
        if (userId == null || userId.isEmpty()) {
            return "redirect:/loginpage.do";
        }
        
        // 장바구니에 담긴 상품 정보 가져오기
        List<UsersDTO> cartItems = usersDAO.getCartItems(userId);
        
        // 장바구니에 담긴 상품들의 출력
        request.setAttribute("cartItems", cartItems);
        
        // 현재 장바구니에 담겨있는 전체 상품의 가격의 합 출력
        int totalPrice = usersDAO.getTotalPrice(userId);
        request.setAttribute("totalPrice", totalPrice);
        
        // 장바구니 페이지로 이동
        return "cartPage.jsp";
    }
}