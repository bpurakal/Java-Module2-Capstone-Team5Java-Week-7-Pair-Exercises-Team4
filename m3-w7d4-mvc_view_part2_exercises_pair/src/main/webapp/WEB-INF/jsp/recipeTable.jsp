<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <c:url var="stylesheetUrl" value="/css/site.css" />
    <link rel="stylesheet" href="${stylesheetUrl}" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <c:url var="recipeTilesUrl" value="/recipeTiles" />
            <li><a href="${recipeTilesUrl}">Tile Layout</a></li>
            <c:url var="recipeTableUrl" value="/recipeTable" />
            <li><a href="${recipeTableUrl}">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content" class="table-main">
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
       
       
       
       
    </section>
</body>
</html>