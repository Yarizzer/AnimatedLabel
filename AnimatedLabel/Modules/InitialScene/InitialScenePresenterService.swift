//
//  InitialScenePresenterService.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialScenePresenterServiceType: AnyObject {
	var model: InitialSceneViewModelType { get }
}

final class InitialScenePresenterService {
	init(withModel model: InitialSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: InitialSceneViewModelType
}

extension InitialScenePresenterService: InitialScenePresenterServiceType {
	var model: InitialSceneViewModelType { return viewModel }
}
