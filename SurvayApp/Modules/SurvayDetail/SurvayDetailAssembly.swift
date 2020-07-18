import UIKit
import Swinject
import SwinjectAutoregistration

final class SurvayDetailAssembly {
    private let resolver: Resolver

    init(resolver: Resolver) {
        self.resolver = resolver
    }

    func module(closeCompletion: VoidHandler? = nil, survayModel: SurvayModel) -> UIViewController {
        let view = resolver.resolve(SurvayDetailViewProtocol.self)!
        let interactor = resolver.resolve(SurvayDetailInteractorProtocol.self)!
        let router = resolver.resolve(SurvayDetailRouterProtocol.self)!

        let controller = SurvayDetailViewController(view: view, interactor: interactor, router: router, model: survayModel)

        router.sourceViewController = controller
        router.closeCompletion = closeCompletion

        view.presenter = controller

        return controller
    }
}

final class SurvayDetailDIAssembly: Assembly {
    func assemble(container: Container) {
        container.register(SurvayDetailAssembly.self) { SurvayDetailAssembly(resolver: $0) }
        container.autoregister(SurvayDetailViewProtocol.self, initializer: SurvayDetailView.init)
        container.autoregister(SurvayDetailInteractorProtocol.self, initializer: SurvayDetailInteractor.init)
        container.autoregister(SurvayDetailRouterProtocol.self, initializer: SurvayDetailRouter.init)
    }
}
