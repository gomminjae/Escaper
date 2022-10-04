//
//  BaseViewController.swift
//  Escaper
//
//  Created by 권민재 on 2022/09/30.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configLaout()
        configAttribute()

        // Do any additional setup after loading the view.
    }
    

    func configLaout() {}
    func configView() {}
    func configAttribute() {}

}
