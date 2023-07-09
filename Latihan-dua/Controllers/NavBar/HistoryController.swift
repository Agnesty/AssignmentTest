//
//  HistoryController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class HistoryController: UIViewController {

    //IBOutlet
    @IBOutlet weak var viewTopBlue: UIView! {
        didSet {
            viewTopBlue.roundCorners(corners: [.bottomRight], radius: 32)
            viewTopBlue.backgroundColor = UIColor (
                red: CGFloat(0x00) / 255.0,
                green: CGFloat(0x62) / 255.0,
                blue: CGFloat(0xCD) / 255.0,
                alpha: 1.0
            )
        }
    }
    
    @IBOutlet weak var cardImage: UIImageView! {
        didSet {
            cardImage.layer.cornerRadius = CGFloat(10)
        }
    }
    @IBOutlet weak var cardName: UIView! {
        didSet {
            cardName.roundCorners(corners: .allCorners, radius: 15)
        }
    }
    
    @IBOutlet weak var viewNoKaryawan: UIView! {
        didSet {
            viewNoKaryawan.roundCorners(corners: .allCorners, radius: 10)
        }
    }
    @IBOutlet weak var imageNoKaryawan: UIImageView! {
        didSet {
            imageNoKaryawan.layer.cornerRadius = CGFloat(10)
        }
    }
    
    @IBOutlet weak var viewAlamat: UIView! {
        didSet {
            viewAlamat.roundCorners(corners: .allCorners, radius: 10)
        }
    }
    @IBOutlet weak var imageBook: UIImageView! {
        didSet{
            imageBook.layer.cornerRadius = CGFloat(10)
        }
    }
    
    @IBOutlet weak var viewChangePass: UIView! {
        didSet {
            viewChangePass.roundCorners(corners: .allCorners, radius: 10)
        }
    }
    @IBOutlet weak var imageChangePass: UIImageView! {
        didSet {
            imageChangePass.layer.cornerRadius = CGFloat(10)
        }
    }
    
    
    //IBAction
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
