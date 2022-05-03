//
//  ReplaceSegue.swift
//  StudentsApp
//
//  Created by Inbar on 03/05/2022.
//

import UIKit

protocol ReplaceSegueProtocol{
	func getContainerView(identifier:String) ->UIView
	func getContainerViewController(identifier:String) ->UIViewController
}

class ReplaceSegue: UIStoryboardSegue{
	
	override func perform() {
		let sourceVC = self.source
		let destinationVC = self.destination
		
		if let svcp = sourceVC as? ReplaceSegueProtocol{
			let containerV = svcp.getContainerView(identifier: self.identifier!)
			let containerVC = svcp.getContainerViewController(identifier: self.identifier!)
			
			//Navigation bar setup
			containerVC.title = destinationVC.title
			containerVC.navigationItem.title = destinationVC.title
			containerVC.navigationItem.backButtonTitle = ""
			
			//Child frame setup
			destinationVC.view.frame = containerV.frame
			destinationVC.view.frame.origin.x = 0
			destinationVC.view.frame.origin.y = 0
			
			//Remove existing children
			containerVC.children.forEach( {
				$0.view.removeFromSuperview()
				$0.removeFromParent()
			})
			
			//Add new destination child view
			containerVC.addChild(destinationVC)
			containerV.addSubview(destinationVC.view)
		}
	}
}
