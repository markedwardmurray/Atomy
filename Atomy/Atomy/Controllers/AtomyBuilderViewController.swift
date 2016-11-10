//
//  AtomyBuilderViewController.swift
//  Atomy
//
//  Created by Mark Murray on 11/10/16.
//
//

import UIKit

class AtomyBuilderViewController: UIViewController {
    
    static func instantiate() -> AtomyBuilderViewController {
        return UIStoryboard(name: String(describing: self), bundle: nil).instantiateInitialViewController() as! AtomyBuilderViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
