<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="container">
		<div class="row">
		
			 <c:forEach var="list" items="${petList }">
				<div class="col-3 gy-2">
					<a href="pet_dictionary_detail.do?psbreeds=${list.psbreeds }">
						<div class="card" style="width: 18rem;">
							<img src="${list.psimage }" class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text">${list.psbreeds }</p>
							</div>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
