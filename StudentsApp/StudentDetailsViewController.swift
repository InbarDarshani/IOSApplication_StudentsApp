//
//  StudentDetailsViewController.swift
//  StudentsApp
//
//  Created by Inbar on 30/04/2022.
//

import UIKit

class StudentDetailsViewController: UIViewController {

	@IBOutlet weak var studentName: UILabel!
	@IBOutlet weak var studentId: UILabel!
	@IBOutlet weak var studentPhone: UILabel!
	@IBOutlet weak var studentAddress: UILabel!
	@IBOutlet weak var studentImage: UIImageView!
	
	var name = ""{
		didSet{
			if (studentName != nil) {
				studentName.text = name
			}
		}
	}
	
	var id = ""{
		didSet{
			if (studentId != nil) {
				studentId.text = id
			}
		}
	}
	
	var phone = ""{
		didSet{
			if (studentPhone != nil) {
				studentPhone.text = phone
			}
		}
	}
	
	var address = ""{
		didSet{
			if (studentAddress != nil) {
				studentAddress.text = address
			}
		}
	}
	
	var imageName = ""{
		didSet{
			if (studentImage != nil){
				studentImage.image = UIImage(named: imageName)
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		studentName.text = name
		studentId.text = id
		studentPhone.text = phone
		studentAddress.text = address
		studentImage.image = UIImage(named: imageName)
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
