//
//  ListTableViewController.swift
//  StudentsApp
//
//  Created by Inbar on 30/04/2022.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
	
	@IBOutlet weak var studentName: UILabel!
	@IBOutlet weak var studentId: UILabel!
	@IBOutlet weak var studentImage: UIImageView!
	
}

class StudentsTableViewController: UITableViewController {

	var data = Model.instance.getAll()
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Model.instance.getCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentTableViewCell
		
		let student = data[indexPath.row]
		cell.studentName?.text = student.name
		cell.studentId?.text = student.id
		cell.studentImage?.image =  UIImage(named: student.image)
	
        return cell
    }
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "toDetails"{
			
			let destination = segue.destination as? StudentDetailsViewController
			let studentIndex = tableView.indexPathForSelectedRow!.row
						
			destination?.name = data[studentIndex].name
			destination?.id = data[studentIndex].id
			destination?.phone = data[studentIndex].phone
			destination?.address = data[studentIndex].address
			destination?.imageName = data[studentIndex].image
		}
    }
	
}



