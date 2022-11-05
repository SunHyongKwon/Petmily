<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container">
<table class="table table-hover table-striped text-center" style="border: 1px solid;">
<%-- <div class="container"></div>  이걸 어디다 붙어야 가운데 정렬이 될까? --%>
	<br>
	
	<h1 class="text-center"><a href="#">Cha4ser's Free Board!</a></h1>
	
	<br>
	<br>

	<thead>
	
		<tr>
        <td><input type="checkbox" id="checkall" /></td>
        <td>내용</td>
    </tr>
    
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Title_1</td>
			<td>Cha4ser</td>
			<td>1</td>
		</tr>
		
		<tr>
			<td>2</td>
			<td>Title_2</td>
			<td>Cha4ser</td>
			<td>10</td>
		</tr>
		
		<tr>
			<td>3</td>
			<td>Title_3!</td>
			<td>Cha4ser</td>
			<td>12</td>
			<td><a href="${ changeRoleUr1 }/admin" class="btn btn-light">승인</a></td>
			
		</tr>	
		
	</tbody>
</table>

<hr>

	<div>
			<%-- 왜 가운데 정렬이 안되는 것인가!!! --%>
			<ul class="pagination justify-content-center">
			
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> ◀ </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> 1 </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> 2 </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> 3 </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> 4 </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> 5 </a></li>
				<li><a href = "#" style="margin-right:5px;" class="text-secondary"> ▶ </a></li>
				
			</ul>
			
		</div>
		
	<a class="btn btn-outline-info float-right">글쓰기</a>

	
	<a href="${ changeRoleUr1 }/admin" class="btn btn-light">승인</a>

    <div class="container">
 
          <div class="row">
            <div class="col-lg-12">
               <form class="well" action="upload.php" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="file">Select a file to upload</label>
                    <input type="file" name="file">
                    <p class="help-block">Only jpg,jpeg,png and gif file with maximum size of 1 MB is allowed.</p>
                  </div>
                  <input type="submit" class="btn btn-lg btn-primary" value="Upload">
                </form>
            </div>
          </div>
    </div> <!-- /container -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</div>
</body>
</html>