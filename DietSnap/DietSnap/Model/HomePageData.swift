//
//  HomePageData.swift
//  DietSnap
//
//  Created by ANSH on 02/04/24.
//
import Foundation

struct FitnessDataResponse: Codable {
    let success: Bool
    let data: FitnessData
    let message: String
}

struct FitnessData: Codable {
    let section_1: Section1
    let section_2: Section2
    let section_3: Section3
    let section_4: Section4
}

struct Section1: Codable {
    let planName: String
    let progress: String

    enum CodingKeys: String, CodingKey {
        case planName = "plan_name"
        case progress
    }
}

struct Section2: Codable {
    let accuracy: String
    let workoutDuration: String
    let reps: Int
    let caloriesBurned: Int

    enum CodingKeys: String, CodingKey {
        case accuracy
        case workoutDuration = "workout_duration"
        case reps
        case caloriesBurned = "calories_burned"
    }
}

struct Section3: Codable {
    let plan1: FitnessPlan
    let plan2: FitnessPlan

    enum CodingKeys: String, CodingKey {
        case plan1 = "plan_1"
        case plan2 = "plan_2"
    }
}

struct FitnessPlan: Codable {
    let planName: String
    let difficulty: String

    enum CodingKeys: String, CodingKey {
        case planName = "plan_name"
        case difficulty
    }
}

struct Section4: Codable {
    let category1: FitnessCategory
    let category2: FitnessCategory

    enum CodingKeys: String, CodingKey {
        case category1 = "category_1"
        case category2 = "category_2"
    }
}

struct FitnessCategory: Codable {
    let categoryName: String
    let noOfExercises: String

    enum CodingKeys: String, CodingKey {
        case categoryName = "category_name"
        case noOfExercises = "no_of_exercises"
    }
}
    
