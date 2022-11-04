import Foundation

protocol SecondWelcomeViewPresenter {
    
}

final class DefaultSecondWelcomeViewPresenter: SecondWelcomeViewPresenter {
    // MARK: Public
    unowned var view: SecondWelcomeView
    private let router: SecondWelcomeRouterInput
    
    // MARK: Private
    
    // MARK: - Lifecycle
    init(view: SecondWelcomeView, router: SecondWelcomeRouterInput) {
        self.view = view
        self.router = router
    }
}
