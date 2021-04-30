//
//  ViewController.swift
//  yumemiTraining
//
//  Created by 三浦　一真 on 2021/04/19.
//

import UIKit

class WeatherViewController: UIViewController {

    private var weatherModel: WeatherModel? {
        didSet {
            registerModel()
        }
    }
    
    private(set) var weatherView: WeatherView = WeatherView()
    
    override func loadView() {
        view = WeatherView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherModel =  WeatherModel()
        weatherModel?.delegate = self
    }

    private func registerModel() {
        weatherView.reloadButton.addTarget(self, action: #selector(reloadButtonTapped), for: .touchUpInside)
    }
    @objc private func reloadButtonTapped() {
        let area = "tokyo"
        weatherModel?.returnWeatherOrError(area: area)
    }
}

extension

