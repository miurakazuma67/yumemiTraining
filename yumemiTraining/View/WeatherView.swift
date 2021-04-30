//
//  WeatherView.swift
//  yumemiTraining
//
//  Created by 三浦　一真 on 2021/04/21.
//

import Foundation
import UIKit

class WeatherView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var reloadButton: UIButton!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            loadNib()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        private func loadNib() {
          let nib = UINib(nibName: "WeatherView", bundle: nil)
            if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
                
                view.frame = self.bounds
                self.addSubview(view)
            }
        }
}
