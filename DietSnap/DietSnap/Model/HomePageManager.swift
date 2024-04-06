import Foundation

class HomePageManager {
    func fetchData(completion: @escaping (FitnessDataResponse?) -> Void) {
        // Simulated network request
        let jsonData = """
        {
          "success": true,
          "data": {
            "section_1": {
              "plan_name": "Chest Workout with Dumbbells & Barbell",
              "progress": "35%"
            },
            "section_2": {
              "accuracy": "82%",
              "workout_duration": "30 mins",
              "reps": 35,
              "calories_burned": 12
            },
            "section_3": {
              "plan_1": {
                "plan_name": "Toned Arms for Women",
                "difficulty": "Beginner"
              },
              "plan_2": {
                "plan_name": "Toned Shoulders for Beginners",
                "difficulty": "Beginner"
              }
            },
            "section_4": {
              "category_1": {
                "category_name": "Triceps",
                "no_of_exercises": "12"
              },
              "category_2": {
                "category_name": "Biceps",
                "no_of_exercises": "10"
              }
            }
          },
          "message": "Homepage!"
        }
        """


        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if let data = jsonData.data(using: .utf8) {
                do {
                    let decoder = JSONDecoder()
                    let fitnessData = try decoder.decode(FitnessDataResponse.self, from: data)
                    completion(fitnessData)
                } catch {
                    print("Error decoding JSON: \(error)")
                    completion(nil)
                }
            } else {
                completion(nil)
            }
        }
    }
}


