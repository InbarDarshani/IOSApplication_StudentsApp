//
//  MainViewController.swift
//  StudentsApp
//
//  Created by Inbar on 27/04/2022.
//

import UIKit

class MainViewController: UIViewController, ReplaceSegueProtocol {
	
	@IBOutlet weak var container: UIView!

	var listVC: UITableViewController?
	var aboutVC: UIViewController?
	
	func getViewContainer(identifier: String) -> UIView {
		return container
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
	
	
}

protocol ReplaceSegueProtocol{
	func getViewContainer(identifier:String) ->UIView
}
class ReplaceSegue: UIStoryboardSegue{
	
	override func perform() {
		let svc = self.source
		let dvc = self.destination
		
		svc.addChild(dvc)
		
		if let svcp = svc as? ReplaceSegueProtocol{
			let container = svcp.getViewContainer(identifier: self.identifier!)
			dvc.view.frame = container.frame
			dvc.view.frame.origin.x = 0
			dvc.view.frame.origin.y = 0
			container.addSubview(dvc.view)
		}
	}
}
