/* Bowl, a project by:
Amanda Caroline
Giulia Cacciaguerra
Gustavo Souza
José Elias */
 
import SwiftUI
import SwiftData
import UIKit


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [RecipeStorage]
    
    @State var selectedTab = 1
    
    var body: some View {
        TabView (selection: $selectedTab, content: {
            NavigationStack {
                FeedView()
            }
            .tabItem() {
                Image(selectedTab==1 ? "home.fill" : "home")
                Text("Feed")
            }
            .tag(1)
            
            NavigationStack {
                SliderCategoriesView()
                    .navigationBarHidden(true)
                
            }
            .tabItem() {
                Image(selectedTab == 2 ? "category.fill" : "category")
                Text("Categories")
            }
            .tag(2)
            
            
            NavigationStack {
                GenerateRandomRecipeView()
            }
            .tabItem() {
                Image(selectedTab == 3 ? "random.fill" : "random")
                Text("Random")
            }
            .tag(3)
            
            NavigationStack {
                BookmarksView()
                
            }.tabItem() {
                Image(selectedTab == 4 ? "bookmark.fill" : "bookmark")
                Text("Bookmarks")
            }
            .tag(4)
        })
        .tint(.redBase)
        .onAppear(){
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor.FAFAFA
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
    }
}


#Preview {
    ContentView()
}
