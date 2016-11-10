//
//  AppViewController.swift
//  Atomy
//
//  Created by Mark Murray on 11/9/16.
//
//

import UIKit

class AppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setEmbeddedViewController(viewController: AtomyBuilderViewController.instantiate())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setEmbeddedViewController(viewController: UIViewController) {
        if (self.childViewControllers.contains(viewController)) {
            return
        }
        
        for childVC in self.childViewControllers {
            childVC.willMove(toParentViewController: nil)
            
            if (childVC.isViewLoaded) {
                childVC.view.removeFromSuperview()
            }
            childVC.removeFromParentViewController()
        }
        
        self.addChildViewController(viewController)
        self.view.addSubview(viewController.view)
        viewController.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        viewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        viewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        viewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        viewController.didMove(toParentViewController: self)
    }

}

