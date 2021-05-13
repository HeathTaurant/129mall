<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="productDetail.ProductDetailDao" %>
<%@ page import ="productDetail.ReviewDto" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.List" %>
<%@ page import = "org.apache.tomcat.jdbc.pool.DataSource" %>


<%!
int pageSize = 10;

%>


<%
  String pageNum = request.getParameter("pageNum");
if (pageNum == null) {
    pageNum = "1";
}	 
int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;
int count = 0;
int number = 0;
List<ReviewDto> reviewList = null; 

DataSource ds = new DataSource();
ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
ds.setUrl("jdbc:mysql://localhost/129mall?characterEncoding=utf8");
ds.setUsername("musun129");
ds.setPassword("musun129");
ds.setInitialSize(2);
ds.setMaxActive(100);
ds.setTestWhileIdle(true);
ds.setMinEvictableIdleTimeMillis(60000 * 3);
ds.setTimeBetweenEvictionRunsMillis(10 * 1000);
ds.setMaxIdle(10);

ProductDetailDao reviewDao = new ProductDetailDao(ds);
count = reviewDao.getReviewCnt();
if (count > 0) {
	reviewList = reviewDao.getArticles(startRow, pageSize);
     
	number = count-(currentPage-1)*pageSize;


}
%>

<% if (count == 0) { %>

              게시판에 저장된 글이 없습니다.

<% } else {%>

<%  
   for (int i = 0 ; i < reviewList.size() ; i++) {
	   ReviewDto article = reviewList.get(i);
%>
								<ul class="review-list">
									<li>평점:<%=article.getReview_point() %> <span>
											<%=article.getReview_date() %></span> <br><%=article.getReview_content() %><br>
										<img src="resources/Img/Review/<%=article.getReview_Img()%>" />
												<a class=review-img-btn></a>
												<i class="far fa-hand-point-left"></i>
										<div class="crossLine"></div></li>
								</ul>

						<%}%>
				
				<%}%>
				
<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

		int pageBlock = 10;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <a class="reviewPage"  href="/main?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
           <a class="reviewPage"  href="/main?pageNum=<%= i %>">[<%= i %>]</a>
<%      }
        
        if (endPage < pageCount) {  %>
        <a class="reviewPage" href="/main?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>				
				