//
//  MainViewController.swift
//  StudentsApp
//
//  Created by Inbar on 27/04/2022.
//

import UIKit

class MainViewController: UIViewController, ReplaceSegueProtocol {
	
	@IBOutlet weak var container: UIView!
	@IBOutlet weak var homeButton: UIButton!
	@IBOutlet weak var addButton: UIButton!
	@IBOutlet weak var aboutButton: UIButton!
	
	func getContainerView(identifier: String) -> UIView {
		return container
	}
	
	func getContainerViewController(identifier: String) -> UIViewController {
		return self
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		performSegue(withIdentifier: "toList", sender: self)
	}
	
	@IBAction func homeButton(_ sender: UIButton) {
		performSegue(withIdentifier: "toList", sender: self)
	}
	
	@IBAction func addButton(_ sender: UIButton) {
		performSegue(withIdentifier: "toAdd", sender: self)
	}
	
	@IBAction func aboutButton(_ sender: UIButton) {
		performSegue(withIdentifier: "toAbout", sender: self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		switch segue.identifier {
		case "toList":
			homeButton.isSelected = true
			addButton.isSelected = false
			aboutButton.isSelected = false
		case "toAdd":
			homeButton.isSelected = false
			addButton.isSelected = true
			aboutButton.isSelected = false
		case "toAbout":
			homeButton.isSelected = false
			addButton.isSelected = false
			aboutButton.isSelected = true
		default:
			return
		}
	}
	
}

