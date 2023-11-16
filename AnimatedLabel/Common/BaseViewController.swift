//
//  BaseViewController.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import UIKit

class BaseViewController<InteractorT>: UIViewController {
    override func viewDidLoad() { super.viewDidLoad() }
    
    var interactor: InteractorT?
}
