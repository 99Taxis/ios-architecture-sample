
import UIKit

final class RideCoordinator {
    
    private unowned let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let repository = RideRepository()
        let presenter = RideProgressPresenter(repository: repository)
        let rideProgressViewController = RideProgressViewController(presenter: presenter)
        presenter.view = rideProgressViewController
        
        self.window.rootViewController = rideProgressViewController
        self.window.makeKeyAndVisible()
    }
}
