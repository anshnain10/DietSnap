//
//  FoodPageManager.swift
//  DietSnap
//
//  Created by ANSH on 06/04/24.
//

import Foundation

class FoodPageManager {
    func fetchData(completion: @escaping (RecipeDetails?) -> Void) {
        // Simulated data fetching from API
        let jsonString = """
            {
                "success": true,
                "data": {
                    "_id": "570c739087f8dc157887928b",
                    "api_name": ["nan"],
                    "badge_indicator": ["nan"],
                    "credits_url": "http://www.zeekhanakhazana.com/recipes/chicken-biryani.html",
                    "cuisine": "Indian",
                    "description": "Traditional Indian Rice Preparation with helf boiled fragrant basmati rice,aromatic Indian spices yogurt and chicken",
                    "generic_facts": ["Chicken biryani is a popular Indian dish made with fragrant basmati rice, tender chicken, and a blend of aromatic spices.", "It is believed to have originated in the Indian subcontinent and is now enjoyed worldwide for its rich flavors and comforting taste.", "There are many regional variations of chicken biryani, with each region adding its own unique twist to the dish.", "Traditionally, chicken biryani is cooked in layers, with marinated chicken and partially cooked rice layered together and then slow-cooked to perfection.", "Chicken biryani is often served with accompaniments such as raita, a yogurt-based condiment, and salan, a spicy curry."],
                    "health_rating": 76.0,
                    "image": "mastermenu/10470.png",
                    "image_url": "",
                    "ingredients": [
                        {"ingid": "5704dab487f8dc1454bf2e44", "name": "Basmati Rice", "value": 150.0},
                        {"ingid": "5704dab487f8dc1454bf2e46", "name": "Bay Leaves", "value": 2.0},
                        {"ingid": "5704dab487f8dc1454bf2e87", "name": "Cardamom", "value": 0.5},
                        {"ingid": "5704dab487f8dc1454bf2ea8", "name": "Chicken-Breast", "value": 200.0},
                        {"ingid": "5704dab487f8dc1454bf2eb1", "name": "Chillies Green", "value": 1.5},
                        {"ingid": "5704dab487f8dc1454bf2ec2", "name": "Cinamon", "value": 2.0},
                        {"ingid": "5704dab487f8dc1454bf2ec3", "name": "Cloves Dry", "value": 2.0},
                        {"ingid": "5704dab487f8dc1454bf2ed5", "name": "Cooking Oil", "value": 25.0},
                        {"ingid": "5704dab487f8dc1454bf2ed8", "name": "Coriander Leaves", "value": 10.0},
                        {"ingid": "5704dab487f8dc1454bf2eee", "name": "Cumin Seeds", "value": 2.5},
                        {"ingid": "5704dab487f8dc1454bf2f0e", "name": "Egg-Hen", "value": 50.0},
                        {"ingid": "5704dab487f8dc1454bf2f2b", "name": "Garam Masala", "value": 1.3},
                        {"ingid": "5704dab487f8dc1454bf2f33", "name": "Ginger", "value": 1.0},
                        {"ingid": "5704dab487f8dc1454bf2f34", "name": "Ginger Garlic Paste ", "value": 3.0},
                        {"ingid": "5704dab487f8dc1454bf2fba", "name": "Milk Cow", "value": 62.5},
                        {"ingid": "5704dab487f8dc1454bf2fbd", "name": "Mint", "value": 10.0},
                        {"ingid": "5704dab487f8dc1454bf2fe3", "name": "Onion Big", "value": 50.0},
                        {"ingid": "5704dab487f8dc1454bf2fe7", "name": "Onion Small", "value": 100.0},
                        {"ingid": "5704dab487f8dc1454bf304c", "name": "Red Chilli", "value": 1.3},
                        {"ingid": "5704dab487f8dc1454bf306c", "name": "Rose Water", "value": 0.5},
                        {"ingid": "5704dab487f8dc1454bf3079", "name": "Salt", "value": 2.5},
                        {"ingid": "5704dab487f8dc1454bf30d5", "name": "Turmeric", "value": 0.5},
                        {"ingid": "5704dab487f8dc1454bf3102", "name": "Yogurt", "value": 125.0}
                    ],
                    "itemtype": "Biryani",
                    "name": "Chicken Biryani",
                    "no_of_servings": 4.0,
                    "nutrition_facts": ["nan"],
                    "nutrition_info": [{"units": "Kcal", "name": "Energy", "value": 1387.0}, {"units": "gms", "name": "Proteins", "value": 91.0}, {"units": "gms", "name": "Fat", "value": 32.0}, {"units": "gms", "name": "Carbs", "value": 152.0}, {"units": "mg", "name": "Calcium", "value": 1207.0}, {"units": "gms", "name": "Sugar", "value": 1.0}, {"units": "mg", "name": "Iron", "value": 1387.0}, {"units": "mg", "name": "Sodium", "value": 1815.0}, {"units": "mg", "name": "Potassium", "value": 210.0}, {"units": "mcg", "name": "Carotene", "value": 22885.0}, {"units": "mg", "name": "Vitaminc", "value": 118.0}, {"units": "mg", "name": "Thiamine", "value": 759.0}, {"units": "mcg", "name": "FolicAcid", "value": 5190.0}, {"units": "gms", "name": "Fibre", "value": 8.0}],
                    "nutrition_info_scaled": [{"name": "Calories", "value": 196.13958411156767, "units": "kCal"}, {"name": "Protein", "value": 8.004016934379283, "units": "gms"}, {"name": "Carbohydrates", "value": 19.430579006350396, "units": "gms"}, {"name": "Total Fat", "value": 9.373579877972858, "units": "gms"}, {"name": "Saturated Fat", "value": 1.7389186900759561, "units": "gms"}, {"name": "Unsaturated Fat", "value": 0, "units": "gms"}, {"name": "Trans Fat", "value": 0.010784460216660442, "units": "gms"}, {"name": "Fiber", "value": 1.1127132362096877, "units": "gms"}, {"name": "Sugar", "value": 1.4311106960527955, "units": "gms"}, {"name": "Cholesterol", "value": 59.5504918441041, "units": "mg"}, {"name": "Vitamin A", "value": 0.0, "units": "IU"}, {"name": "Vitamin C", "value": 3.0660689826920686, "units": "mg"}, {"name": "Sodium", "value": 148.69488419872994, "units": "mg"}, {"name": "Vitamin D", "value": 5.105217283028266, "units": "IU"}, {"name": "Vitamin B6", "value": 0.15440144440293865, "units": "mg"}, {"name": "Vitamin B12", "value": 0.2393848835761425, "units": "mcg"}, {"name": "Vitamin E", "value": 1.4444054289627692, "units": "mg"}, {"name": "Vitamin K", "value": 4.646557091271323, "units": "mcg"}, {"name": "Calcium", "value": 87.20514257253146, "units": "mg"}, {"name": "Iron", "value": 1.727243182667165, "units": "mg"}, {"name": "Potassium", "value": 126.98680114556097, "units": "mg"}, {"name": "Magnesium", "value": 15.166728925414022, "units": "mg"}, {"name": "Zinc", "value": 0.9237492217656583, "units": "mg"}, {"name": "Selenium", "value": 10.38008965259619, "units": "mcg"}, {"name": "Copper", "value": 0.08226086415141329, "units": "mg"}],
                    "serving_sizes": [{"units": "Kcal", "name": "Energy", "value": 1387.0}, {"units": "gms", "name": "Proteins", "value": 91.0}, {"units": "gms", "name": "Fat", "value": 32.0}, {"units": "gms", "name": "Carbs", "value": 152.0}, {"units": "mg", "name": "Calcium", "value": 1207.0}, {"units": "gms", "name": "Sugar", "value": 1.0}, {"units": "mg", "name": "Iron", "value": 1387.0}, {"units": "mg", "name": "Sodium", "value": 1815.0}, {"units": "mg", "name": "Potassium", "value": 210.0}, {"units": "mcg", "name": "Carotene", "value": 22885.0}, {"units": "mg", "name": "Vitaminc", "value": 118.0}, {"units": "mg", "name": "Thiamine", "value": 759.0}, {"units": "mcg", "name": "FolicAcid", "value": 5190.0}, {"units": "gms", "name": "Fibre", "value": 8.0}],
                    "similar_items": [{"_id": "570c739087f8dc157887928b", "name": "Veg Biryani", "image": "veg_biryani.png"}, {"_id": "570c737e87f8dc15788790c4", "name": "Paneer Biryani", "image": "paneer_biryani.png"}, {"_id": "570c739087f8dc1578879287", "name": "Mutton Biryani", "image": "mutton_biryani.png"}],
                    "type": "recipe",
                    "default_unit_serving": "unit"
                },
                "message": "Homepage!"
            }
        """
        let jsonData = Data(jsonString.utf8)
        let decoder = JSONDecoder()
        do {
            let recipeData = try decoder.decode(RecipeData.self, from: jsonData)
            completion(recipeData.data)
        } catch {
            print("Error decoding JSON: \(error)")
            completion(nil)
        }
    }
}




