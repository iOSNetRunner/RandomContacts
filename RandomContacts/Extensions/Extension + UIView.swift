//
//  Extension + UIView.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 27.05.2023.
//

import UIKit

extension UIViewController {
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor,
                                UIColor.black.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
