//
//  UIViewController+Alert.swift
//  StarWarsApi
//
//  Created by tobi adegoroye on 06/05/2021.
//

import UIKit

extension UIViewController {
    func show(title: String, message: String, buttonTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: nil))

        self.present(alert, animated: true)
    }
}
