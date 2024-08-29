import SwiftUI

struct RecipeByIDView: View {
    @StateObject var recipeModel = RecipeModel()
    let recipeID : String
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { recipe in
                    AsyncImage(url: recipe.strMealThumb){result in result.image?
                            .resizable()
                            .scaledToFill()
                    }.frame(width: 200, height: 200)
                    
                    Text(recipe.strMeal)
                    CountryAndCat(country: recipe.strArea, category: recipe.strCategory)
                    Ingredients(ingredient: recipe.strIngredient1, measure: recipe.strMeasure1)
                    Ingredients(ingredient: recipe.strIngredient2, measure: recipe.strMeasure2)
                    Ingredients(ingredient: recipe.strIngredient3, measure: recipe.strMeasure3)
                    Ingredients(ingredient: recipe.strIngredient4, measure: recipe.strMeasure4)
                    Ingredients(ingredient: recipe.strIngredient5, measure: recipe.strMeasure5)
                    Ingredients(ingredient: recipe.strIngredient6, measure: recipe.strMeasure6)
                    Ingredients(ingredient: recipe.strIngredient7, measure: recipe.strMeasure7)
                    Ingredients(ingredient: recipe.strIngredient8, measure: recipe.strMeasure8)
                    Ingredients(ingredient: recipe.strIngredient9, measure: recipe.strMeasure9)
                    Ingredients(ingredient: recipe.strIngredient10, measure: recipe.strMeasure10)
                    Ingredients(ingredient: recipe.strIngredient11, measure: recipe.strMeasure11)
                    Ingredients(ingredient: recipe.strIngredient12, measure: recipe.strMeasure12)
                    Ingredients(ingredient: recipe.strIngredient13, measure: recipe.strMeasure13)
                    Ingredients(ingredient: recipe.strIngredient14, measure: recipe.strMeasure14)
                    Ingredients(ingredient: recipe.strIngredient15, measure: recipe.strMeasure15)
                    Ingredients(ingredient: recipe.strIngredient16, measure: recipe.strMeasure16)
                    Ingredients(ingredient: recipe.strIngredient17, measure: recipe.strMeasure17)
                    Ingredients(ingredient: recipe.strIngredient18, measure: recipe.strMeasure18)
                    Ingredients(ingredient: recipe.strIngredient19, measure: recipe.strMeasure19)
                    Ingredients(ingredient: recipe.strIngredient20, measure: recipe.strMeasure20)

                    
                    Text(recipe.strInstructions)
                        
                    
                }
            .navigationTitle("Recipe")
            .onAppear {
                recipeModel.fetchByID(id: recipeID)
            }
            }
        }
    }
}

#Preview {
    RecipeByIDView(recipeID: "52769")
}
