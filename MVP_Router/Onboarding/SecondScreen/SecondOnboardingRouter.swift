import UIKit

protocol SecondOnboardingRouterInput {
    func showNextFlow()
}

final class SecondOnboardingRouter {
    // MARK: - Properties
    
    // MARK: Public
    
    // MARK: Private
    private let navigationController: UINavigationController
    private let window: UIWindow
    
    // MARK: - Lifecycle
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
        let view = DefaultSecondOnboardingView()
        let presenter = DefaultSecondOnboardingPresenter(view: view, router: self)
        view.presenter = presenter
        navigationController.pushViewController(view, animated: true)
    }
    
    // MARK: - API
    
    // MARK: - Setups
    
    // MARK: - Helpers
}

// MARK: - Extensions
extension SecondOnboardingRouter: SecondOnboardingRouterInput {
    func showNextFlow() {
        navigationController.popToRootViewController(animated: false)
        let clearNavigationController = UINavigationController()
        window.rootViewController = clearNavigationController
        let _ = MainWelcomeRouter(navigationController: clearNavigationController, window: window)
    }
}
