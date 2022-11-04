import UIKit

protocol SecondWelcomeRouterInput {
    
}

final class SecondWelcomeRouter {
    // MARK: Public
    let navigationController: UINavigationController
    let window: UIWindow
    // MARK: Private
    // MARK: - Lifecycle
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
        let view = DefaultSecondWelcomeView()
        let presenter = DefaultSecondWelcomeViewPresenter(view: view, router: self)
        view.presenter = presenter
        navigationController.pushViewController(view, animated: true)
    }
}

// MARK: - Extensions
extension SecondWelcomeRouter: SecondWelcomeRouterInput {
    
}
