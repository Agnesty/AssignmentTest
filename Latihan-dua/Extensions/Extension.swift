//
//  Extension.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

extension ForgotPasswordController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == noKTPtextField {
            let allowCharacters = CharacterSet.decimalDigits
            let characterSet = CharacterSet(charactersIn: string)
            let isAllowed = allowCharacters.isSuperset(of: characterSet)
            
            print(isAllowed)
            return isAllowed
        } else {
            return true
        }
    }
}
