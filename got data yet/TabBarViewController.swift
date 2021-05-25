//
//  TabBarViewController.swift
//  got data yet
//
//  Created by Matheus Pedrosa on 24/05/21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private var connectionViewController: UIViewController?
    
    init() {
        connectionViewController = ViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Connection"
        setUp()
        setTabBarItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func setUp() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    
    private func setTabBarItems() {
        guard let connectionViewController = connectionViewController else { return }
        let connectionTabBarItem = UITabBarItem(title: "Connection", image: #imageLiteral(resourceName: "antenna.radiowaves.left.and.right"), selectedImage: #imageLiteral(resourceName: "antenna.radiowaves.left.and.right"))
        connectionViewController.tabBarItem = connectionTabBarItem
        
        self.viewControllers = [connectionViewController]
    }
}
