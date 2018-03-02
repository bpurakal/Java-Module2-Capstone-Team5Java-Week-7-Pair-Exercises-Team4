<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Recipe Tile View" />
<%@ include file="common/header.jspf" %>    

    <h2 class="main-title">Recipes</h2>

		<c:forEach var="recipe" items="${recipes}">
			<div class="recipe-tile">
			<c:url var="linkUrl"
				value="/recipeDetails?recipeId=${recipe.getRecipeId()}" />
				<a href="${linkUrl}">
				<c:url var="recipeImageUrl"
					value="/img/recipe${recipe.getRecipeId()}.jpg" />
				<img src="${recipeImageUrl}" class="recipe-image">
				</a>
				<div class="content">
				
						<h4 class="recipe-title">
							<c:out value="${recipe.getName()}" />
						</h4>
					
					<div class="bottom-content">
						<div class="left">
							<c:choose>
								<c:when
									test="${recipe.getAverageRating()  >= 0.5 && recipe.getAverageRating() < 1.5 }">
									<c:url var="ratingImageUrl" value="/img/1-star.png" />
									<br />
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 1.5 && recipe.getAverageRating() < 2.5 }">
									<c:url var="ratingImageUrl" value="/img/2-star.png" />
									<br />
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 2.5 && recipe.getAverageRating() < 3.5 }">
									<c:url var="ratingImageUrl" value="/img/3-star.png" />
									<br />
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 3.5 && recipe.getAverageRating() < 4.5 }">
									<c:url var="ratingImageUrl" value="/img/4-star.png" />
									<br />
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 4.5 && recipe.getAverageRating() <= 5 }">
									<c:url var="ratingImageUrl" value="/img/5-star.png" />
									<br />
									<img src="${ratingImageUrl}">
								</c:when>
								<c:otherwise>
									<c:out value="this recipe sucks" />
									<br />
								</c:otherwise>
							</c:choose>
						</div>
						<div class="right">
							<c:out value="${recipe.getIngredients().size()}" />
							ingredients
						</div>
					</div>
				</div>
			</div>

		</c:forEach>

		<!-- Use the request attribute "recipes" (List<Recipe>) -->

<%@ include file="common/footer.jspf" %>