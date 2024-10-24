import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var ingredients: [String]
    var instructions: String
    var servings: Int
    var prepTime: String
    var cookTime: String
    var imageName: String
}
