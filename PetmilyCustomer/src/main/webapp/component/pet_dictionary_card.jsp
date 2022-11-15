<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="row">
		<c:forEach var="list" items="${petList }">
			<div class="col-3 gy-3">
				<div class="card">
					<a href="pet_dictionary_detail.do?psbreeds=${list.psbreeds }">
						<img src="petspec/${list.psbreeds }.jpeg" class="card-img-top"
						height="264">
					</a>
					<div class="card-body">
						<p class="card-text text-center">
							<a href="pet_dictionary_detail.do?psbreeds=${list.psbreeds }" style=" font-weight: 800; font-size:1.2rem; ">
								${list.psbreeds }
							</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
