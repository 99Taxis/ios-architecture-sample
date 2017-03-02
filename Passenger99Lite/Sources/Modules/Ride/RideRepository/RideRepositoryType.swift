import Foundation
import RxSwift

protocol RideRepositoryType {
    var rideProgressObservable: Observable<Float> { get }
    func requestTips() -> Observable<[Tip]>
}
