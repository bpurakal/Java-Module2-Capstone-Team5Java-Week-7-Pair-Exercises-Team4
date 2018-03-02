<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Reciple Table View" />
<%@ include file="common/header.jspf" %>

    	<h2 class="main-title">Recipes</h2>
    	
    	
<table cellspacing="0" cellpadding="0">
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
       <!-- first row -->
       <tr>
       			<th>
       			&nbsp;
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:url var="linkUrl"
				value="/recipeDetails?recipeId=${recipe.getRecipeId()}" />
				<a href="${linkUrl }">
       			<c:url var="recipeImageUrl"
					value="/img/recipe${recipe.getRecipeId()}.jpg" />
				<img src="${recipeImageUrl}" class="recipe-image">
				</a>
				</td>
       	</c:forEach>
       </tr>
       
       <!-- second row -->
       <tr>
       			<th>
       			Name
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:url var="linkUrl"
				value="/recipeDetails?recipeId=${recipe.getRecipeId()}" />
				<a href="${linkUrl }">
       			<c:out value="${recipe.getName()}" />
       			</a>
				</td>
       	</c:forEach>
       </tr>
       <!-- second row -->
       <tr>
       			<th>
       			Type
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:out value="${recipe.getRecipeType()}" />
				</td>
       	</c:forEach>
       </tr>
       
       <!-- third row -->
       <tr>
       			<th>
       			Cook Time
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:out value="${recipe.getCookTimeInMinutes()}" />
				</td>
       	</c:forEach>
       </tr>
       
       <!-- fourth row -->
       <tr>
       			<th>
       			Ingredients
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:out value="${recipe.getIngredients().size()} ingredients" />
				</td>
       	</c:forEach>
       </tr>
       
       <!-- fifth row -->
       <tr>
       			<th>
       			Rating
       			</th>
       	<c:forEach var="recipe" items="${recipes}">
       			<td>
       			<c:choose>
								<c:when
									test="${recipe.getAverageRating()  >= 0.5 && recipe.getAverageRating() < 1.5 }">
									<c:url var="ratingImageUrl" value="/img/1-star.png" />
									
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 1.5 && recipe.getAverageRating() < 2.5 }">
									<c:url var="ratingImageUrl" value="/img/2-star.png" />
									
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 2.5 && recipe.getAverageRating() < 3.5 }">
									<c:url var="ratingImageUrl" value="/img/3-star.png" />
									
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 3.5 && recipe.getAverageRating() < 4.5 }">
									<c:url var="ratingImageUrl" value="/img/4-star.png" />
									
									<img src="${ratingImageUrl}">
								</c:when>
								<c:when
									test="${recipe.getAverageRating()  >= 4.5 && recipe.getAverageRating() <= 5 }">
									<c:url var="ratingImageUrl" value="/img/5-star.png" />
									
									<img src="${ratingImageUrl}">
								</c:when>
								<c:otherwise>
									<c:out value="this recipe sucks" />
									
								</c:otherwise>
							</c:choose>
				</td>
       	</c:forEach>
       </tr>
       </table>
       
       
       
<%@ include file="common/footer.jspf" %>