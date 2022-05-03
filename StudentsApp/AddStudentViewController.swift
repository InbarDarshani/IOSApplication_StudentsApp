//
//  AddStudentViewController.swift
//  StudentsApp
//
//  Created by Inbar on 30/04/2022.
//

import UIKit

class AddStudentViewController: UIViewController {
	
	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var idField: UITextField!
	@IBOutlet weak var phoneField: UITextField!
	@IBOutlet weak var addressField: UITextField!
	@IBOutlet weak var saveButton: UIButton!
	@IBOutlet weak var cancelButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
		
	@IBAction func cancelButton(_ sender: UIButton) {
		self.parent?.performSegue(withIdentifier: "toList", sender: self)
	}
	
	@IBAction func saveButton(_ sender: UIButton) {
		if validateInput() == false{
			return
		}else {
			Model.instance.addOne(Student(id: idField.text!, name: nameField.text!, image: "empty_pic", phone: phoneField.text!, address: addressField.text!))
			self.parent?.performSegue(withIdentifier: "toList", sender: self)
		}
	}
	
	func validateInput() -> Bool{
		//Create an alert win ok button
		let alert = UIAlertController(title: "Error", message: "", preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
		
		if nameField.text!.isEmpty || idField.text!.isEmpty || phoneField.text!.isEmpty || addressField.text!.isEmpty {
			alert.message =  "Please fill all fields"
			self.present(alert, animated: true, completion: nil)
			
			return false
		}
		
		if Model.instance.checkExisting(id: idField.text!){
			alert.message =  "A Student with this id already exists"
			self.present(alert, animated: true, completion: nil)
			
			return false
		}
		
		return true
	}
	
	
}
