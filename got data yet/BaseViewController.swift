//
//  BaseViewController.swift
//  got data yet
//
//  Created by Matheus Pedrosa on 24/05/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .systemBackground
    }

}
