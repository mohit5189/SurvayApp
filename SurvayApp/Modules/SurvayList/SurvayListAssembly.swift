import UIKit
import Swinject
import SwinjectAutoregistration

final class SurvayListAssembly {
    private let resolver: Resolver

    init(resolver: Resolver) {
        self.resolver = resolver
    }

    func module(closeCompletion: VoidHandler? = nil) -> UIViewController {
        let view = resolver.resolve(SurvayListViewProtocol.self)!
        let interactor = resolver.resolve(SurvayListInteractorProtocol.self)!
        let router = resolver.resolve(SurvayListRouterProtocol.self)!

        let controller = SurvayListViewController(view: view, interactor: interactor, router: router)

        router.sourceViewController = controller
        router.closeCompletion = closeCompletion

        view.presenter = controller

        return controller
    }
}

final class SurvayListDIAssembly: Assembly {
    func assemble(container: Container) {
        container.register(SurvayListAssembly.self) { SurvayListAssembly(resolver: $0) }
        container.autoregister(SurvayListViewProtocol.self, initializer: SurvayListView.init)
        container.autoregister(SurvayListInteractorProtocol.self, initializer: SurvayListInteractor.init)
        container.autoregister(SurvayListRouterProtocol.self, initializer: SurvayListRouter.init)
    }
}
