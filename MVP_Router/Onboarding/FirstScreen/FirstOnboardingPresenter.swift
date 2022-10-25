
import Foundation

protocol FirstOnboardingPresenter {
    func nextButtonDidTapped()
}

final class DefaultFirstOnboardingPresenter: FirstOnboardingPresenter {
    // MARK: Public
    unowned let view: FirstOnboardingView
    private let router: FirstOnboardingRouterInput
    
    // MARK: Private
    
    // MARK: - Lifecycle
    init(view: FirstOnboardingView, router: FirstOnboardingRouterInput) {
        self.view = view
        self.router = router
    }
    
    // MARK: - API
    func nextButtonDidTapped() {
        router.moveToSecondScreen()
    }
}


