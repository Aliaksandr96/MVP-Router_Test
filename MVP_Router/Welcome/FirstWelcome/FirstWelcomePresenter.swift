import Foundation

protocol FirstWelcomeViewPresenter {
    
}

final class DefaultFirstWelcomeViewPresenter: FirstWelcomeViewPresenter {
    // MARK: Public
    unowned var view: FirstWelcomeView
    private let router: FirstWelcomRouterInput
    
    // MARK: Private
    
    // MARK: - Lifecycle
    init(view: FirstWelcomeView, router: FirstWelcomRouterInput) {
        self.view = view
        self.router = router
    }
    
    // MARK: - API
    // MARK: - Setups
    // MARK: - Helpers
    // MARK: - Extensions
}
