//
//  Model.swift
//  StudentsApp
//
//  Created by Inbar on 30/04/2022.
//

import Foundation

struct Student {
	var id: Int
	var name: String
	var image: String
	var phone: String
	var address: String
}

let students = [
	Student(id: 1, name: "Ilan Rozenfeld", image: "avatar1.png", phone: "0501111", address: "Somewhere"),
	Student(id: 2, name: "Alona Tal", image: "avatar2.png", phone: "0501111", address: "Somewhere"),
	Student(id: 3, name: "Kobi Farag", image: "avatar3.png", phone: "0501111", address: "Somewhere"),
	Student(id: 4, name: "Oded Paz", image: "avatar4.png", phone: "0501111", address: "Somewhere")
]

public class Model {
	static let instance = Model()
	
	init() {}
	
	func getCount() -> Int{
		return students.count
	}
	
	func getAll() -> Array<Student> {
		return students
	}
	
	func getOneByID(_ id: Int) ->Student {
		return students.first(where: {$0.id == id})!}
}
