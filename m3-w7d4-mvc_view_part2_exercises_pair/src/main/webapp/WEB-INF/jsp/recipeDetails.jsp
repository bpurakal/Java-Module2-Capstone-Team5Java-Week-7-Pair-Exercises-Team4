<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Recipe Detail View" />
<%@ include file="common/header.jspf" %>    	
  
  <div class ="detail-view">  	
    <div class="description">
    				<div class="image-wrap">
    				<c:url var="recipeImageUrl"
					value="/img/recipe${recipe.getRecipeId()}.jpg" />
				<img src="${recipeImageUrl}" class="recipe-image">
				</div>
    		<div class="descriptive-text">
		<h1><c:out value="${recipe.name }" /></h1>
		<p><c:out value="${recipe.getRecipeType() }" /></p>
		<p class="cook"><strong>Cook Time</strong> <c:out value="${recipe.getCookTimeInMinutes() }" /></p>
		<p><c:out value="${recipe.getDescription() }" /></p>
		</div>
		</div>
		
		
		<p><strong>Ingredients</strong></p>
		<ul>
		
		<c:forEach var="ingredient" items="${recipe.getIngredients()}">
		<li><c:out value="${ingredient.getQuantity()}" /> <c:out value="${ingredient.getName()}" />
		</li>
		</c:forEach>
		
		</ul>
		<hr />
		
		<p><strong>Preparation</strong></p>
		<ol>
		
		<c:forEach var="step" items="${recipe.getPreparationSteps()}">
		<li><c:out value="${step}" />
		</li>
		</c:forEach>
		
		</ol>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
       
       
       
       <c:forEach var="recipe" items="${recipes}">
			<div class="recipe-tile">
				<c:url var="recipeImageUrl"
					value="/img/recipe${recipe.getRecipeId()}.jpg" />
				<img src="${recipeImageUrl}" class="recipe-image">
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
	</div>
<%@ include file="common/footer.jspf" %>