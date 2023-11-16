//
//  InitialSceneViewController.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

final class InitialSceneViewController: BaseViewController<InitialSceneInteractable> {
	// MARK: View lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setup()
	}
	
	private func setup() {
		interactor?.makeRequest(requestType: .initialSetup)
	}
}

extension InitialSceneViewController: InitialSceneViewControllerType {
	func update(viewModelDataType: InitialSceneViewControllerViewModel.ViewModelDataType) {
		switch viewModelDataType {
		case .initialSetup(let model):
			print("\(self) \(#function) with model instance \(model)")
		}
	}
}

extension InitialSceneViewController {
	private struct Constants {
		
	}
}
