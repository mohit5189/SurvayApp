//
//  ServiceAssembly.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Swinject
import SwinjectAutoregistration

final class ServiceAssembly: Assembly {
    func assemble(container: Container) {
        container.register(HTTPClientProtocol.self) { _ in HTTPClient() }
    }
}
