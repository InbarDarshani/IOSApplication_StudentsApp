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

	let data = Model.instance.getAll()
	
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
		cell.studentId?.text = String(student.id)
		cell.studentImage?.image =  UIImage(named: student.image)
	
        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "toDetails"{
			//let studentDetailsVC = segue.destination as! StudentDetailsViewController
			//let studentCell = sender as? StudentTableViewCell
			
			let destination = segue.destination as? StudentDetailsViewController
			let studentIndex = tableView.indexPathForSelectedRow!.row
						
			destination?.studentName.text = data[studentIndex].name
			destination?.studentId.text = String(data[studentIndex].id)
			destination?.studentPhone.text = data[studentIndex].phone
			destination?.studentImage.image = UIImage(named: data[studentIndex].image)
			
		}
			
    }
	
    

}



