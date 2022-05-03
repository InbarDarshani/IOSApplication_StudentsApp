//
//  Model.swift
//  StudentsApp
//
//  Created by Inbar on 30/04/2022.
//

import Foundation

struct Student {
	var id: String
	var name: String
	var image: String
	var phone: String
	var address: String
}

var students = [
	Student(id: "1", name: "Ilan Rozenfeld", image: "avatar1.png", phone: "0501111", address: "Somewhere"),
	Student(id: "2", name: "Alona Tal", image: "avatar2.png", phone: "0501111", address: "Somewhere"),
	Student(id: "3", name: "Kobi Farag", image: "avatar3.png", phone: "0501111", address: "Somewhere"),
	Student(id: "4", name: "Oded Paz", image: "avatar4.png", phone: "0501111", address: "Somewhere"),
	Student(id: "5", name: "Student", image: "avatar5.png", phone: "0501111", address: "Somewhere"),
	Student(id: "6", name: "Student", image: "avatar6.png", phone: "0501111", address: "Somewhere"),
	Student(id: "7", name: "Student", image: "avatar7.png", phone: "0501111", address: "Somewhere"),
	Student(id: "8", name: "Student", image: "avatar8.png", phone: "0501111", address: "Somewhere"),
	Student(id: "9", name: "Student", image: "avatar9.png", phone: "0501111", address: "Somewhere"),
	Student(id: "10", name: "Student", image: "avatar10.png", phone: "0501111", address: "Somewhere")
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
	
	func checkExisting(id: String) ->Bool {
		return students.contains(where: {$0.id == id})}
	
	func getOneByID(_ id: String) ->Student {
		return students.first(where: {$0.id == id})!}
	
	func addOne(_ student: Student){
		students.append(student)
	}
}
