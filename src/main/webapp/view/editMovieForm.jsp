<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.dto.MovieDTO" %>

<%
    // 컨트롤러에서 전달된 영화 정보 받기
    MovieDTO movie = (MovieDTO) request.getAttribute("movie");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>영화 정보 수정</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

    <h2>영화 정보 수정</h2>

    <!-- 영화 정보 수정 폼 -->
    <form action="../controller/editMovieProcess.jsp" method="post">
        <!-- movieId는 hidden 필드로 전달 -->
        <input type="hidden" name="movieId" value="<%= movie.getMovieId() %>">

        <!-- 입력 필드: 기존 정보는 value에 채워져 있음 -->
        <label>제목: 
            <input type="text" name="title" value="<%= movie.getTitle() %>" required>
        </label><br>

        <label>개봉일: 
            <input type="text" name="releaseDate" value="<%= movie.getReleaseDate() %>" required>
        </label><br>

        <label>줄거리:<br>
            <textarea name="overview" rows="5" cols="50"><%= movie.getOverview() != null ? movie.getOverview() : "" %></textarea>
        </label><br>

        <label>감독: 
            <input type="text" name="director" value="<%= movie.getDirector() %>" required>
        </label><br>

        <label>주연: 
            <input type="text" name="mainCast" value="<%= movie.getMainCast() %>" required>
        </label><br>

        <label>장르(쉼표 구분): 
            <input type="text" name="genres" value="<%= movie.getGenres() %>">
        </label><br>

        <label>키워드(쉼표 구분): 
            <input type="text" name="keywordList" value="<%= movie.getKeywordList() %>">
        </label><br><br>

        <!-- 액션 버튼 -->
        <button type="submit">저장</button>
        <a href="../view/admin.jsp">취소</a>
    </form>

</body>
</html>
