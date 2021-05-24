//
//  ViewConfiguration.swift
//  got data yet
//
//  Created by Matheus Pedrosa on 24/05/21.
//

import Foundation
import UIKit

protocol ViewConfiguration: class {
    func configureView()
    func buildViewHierarchy()
    func setupConstraints()
    func updateLayoutConstraints()
}

extension ViewConfiguration {
    func configureView() {
        buildViewHierarchy()
        setupConstraints()
    }
}
