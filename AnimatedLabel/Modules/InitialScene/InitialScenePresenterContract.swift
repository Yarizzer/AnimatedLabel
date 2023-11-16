//
//  InitialScenePresenterContract.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialScenePresentable: AnyObject {
    func response(responseType: InitialScenePresenterResponse.InitialSceneResponseType)
}

struct InitialScenePresenterResponse {
	enum InitialSceneResponseType {
		case initialSetup
		case drainView
	}
}
