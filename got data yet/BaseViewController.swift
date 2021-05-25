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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func setUp() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .systemBackground
    }

}
