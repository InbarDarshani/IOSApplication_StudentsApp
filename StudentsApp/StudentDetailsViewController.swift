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
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
