//
//  InitialSceneInteractorService.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialSceneInteractorServiceType: AnyObject { }

final class InitialSceneInteractorService {
	init(withModel model: InitialSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: InitialSceneViewModelType
}

extension InitialSceneInteractorService: InitialSceneInteractorServiceType { }
