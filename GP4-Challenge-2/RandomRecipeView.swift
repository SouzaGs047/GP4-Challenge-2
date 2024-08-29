import SwiftUI

struct RandomRecipeView: View {
    @StateObject var randomRecipeModel = RecipeModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(randomRecipeModel.recipesArray, id: \.idMeal) { meal in
                    RecipeView(recipe: Recipe(idMeal: meal.idMeal,
                                              strMeal: meal.strMeal,
                                              strCategory: meal.strCategory,
                                              strArea: meal.strArea,
                                              strInstructions: meal.strInstructions,
                                              strMealThumb: meal.strMealThumb,
                                              strIngredient1: meal.strIngredient1,
                                              strIngredient2: meal.strIngredient2,
                                              strIngredient3: meal.strIngredient3,
                                              strIngredient4: meal.strIngredient4,
                                              strIngredient5: meal.strIngredient5,
                                              strIngredient6: meal.strIngredient6,
                                              strIngredient7: meal.strIngredient7,
                                              strIngredient8: meal.strIngredient8,
                                              strIngredient9: meal.strIngredient9,
                                              strIngredient10: meal.strIngredient10,
                                              strIngredient11: meal.strIngredient11,
                                              strIngredient12: meal.strIngredient12,
                                              strIngredient13: meal.strIngredient13,
                                              strIngredient14: meal.strIngredient14,
                                              strIngredient15: meal.strIngredient15,
                                              strIngredient16: meal.strIngredient16,
                                              strIngredient17: meal.strIngredient17,
                                              strIngredient18: meal.strIngredient18,
                                              strIngredient19: meal.strIngredient19,
                                              strIngredient20: meal.strIngredient20,
                                              strMeasure1: meal.strMeasure1,
                                              strMeasure2: meal.strMeasure2,
                                              strMeasure3: meal.strMeasure3,
                                              strMeasure4: meal.strMeasure4,
                                              strMeasure5: meal.strMeasure5,
                                              strMeasure6: meal.strMeasure6,
                                              strMeasure7: meal.strMeasure7,
                                              strMeasure8: meal.strMeasure8,
                                              strMeasure9: meal.strMeasure9,
                                              strMeasure10: meal.strMeasure10,
                                              strMeasure11: meal.strMeasure11,
                                              strMeasure12: meal.strMeasure12,
                                              strMeasure13: meal.strMeasure13,
                                              strMeasure14: meal.strMeasure14,
                                              strMeasure15: meal.strMeasure15,
                                              strMeasure16: meal.strMeasure16,
                                              strMeasure17: meal.strMeasure17,
                                              strMeasure18: meal.strMeasure18,
                                              strMeasure19: meal.strMeasure19,
                                              strMeasure20: meal.strMeasure20))
                    
//                    VStack(alignment: .leading) {
//                        AsyncImage(url: meal.strMealThumb){result in result.image?
//                                .resizable()
//                                .scaledToFit()
//                        }.padding(.leading, 20.0).frame(width: 300)
//                        
//                        Text(meal.strMeal)
//                            .font(.subheadline)
//                        
//                        Text("\(meal.strCategory) • \(meal.strArea)")
//                            .font(.caption)
//                            .foregroundStyle(Color(.gray))
//                        
//                        Text(meal.strInstructions)
//                            .font(.caption2)
//                        
//                    }
                }
                .navigationTitle("Random Recipe")
            }
        }
        .onAppear {
            randomRecipeModel.fetchRandom()
        }
    }
}

#Preview {
    RandomRecipeView()
}
