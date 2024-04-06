//
//  FoodPageData.swift
//  DietSnap
//
//  Created by ANSH on 06/04/24.
//

import Foundation

struct RecipeData: Codable {
    let success: Bool
    let data: RecipeDetails
    let message: String
}

struct RecipeDetails: Codable {
    let _id: String
    let apiName: [String]
    let badgeIndicator: [String]
    let creditsURL: String
    let cuisine: String
    let description: String
    let genericFacts: [String]
    let healthRating: Double
    let image: String
    let imageUrl: String
    let ingredients: [Ingredient]
    let itemType: String
    let name: String
    let numberOfServings: Double
    let nutritionFacts: [String]
    let nutritionInfo: [NutritionInfo]
    let nutritionInfoScaled: [NutritionInfoScaled]
    let servingSizes: [ServingSize]
    let similarItems: [SimilarItem]
    let type: String
    let defaultUnitServing: String

    enum CodingKeys: String, CodingKey {
        case _id
        case apiName = "api_name"
        case badgeIndicator = "badge_indicator"
        case creditsURL = "credits_url"
        case cuisine
        case description
        case genericFacts = "generic_facts"
        case healthRating = "health_rating"
        case image
        case imageUrl = "image_url"
        case ingredients
        case itemType = "itemtype"
        case name
        case numberOfServings = "no_of_servings"
        case nutritionFacts = "nutrition_facts"
        case nutritionInfo = "nutrition_info"
        case nutritionInfoScaled = "nutrition_info_scaled"
        case servingSizes = "serving_sizes"
        case similarItems = "similar_items"
        case type
        case defaultUnitServing = "default_unit_serving"
    }
}

struct Ingredient: Codable {
    let ingid: String
    let name: String
    let value: Double
}

struct NutritionInfo: Codable {
    let units: String
    let name: String
    let value: Double
}

struct NutritionInfoScaled: Codable {
    let name: String
    let value: Double
    let units: String
}

struct ServingSize: Codable {
    let units: String
    let name: String
    let value: Double
}

struct SimilarItem: Codable {
    let _id: String
    let name: String
    let image: String
}
