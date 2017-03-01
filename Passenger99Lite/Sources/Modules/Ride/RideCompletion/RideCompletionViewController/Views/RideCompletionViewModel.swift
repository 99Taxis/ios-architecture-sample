
import Foundation

struct RideCompletionViewModel: Equatable {
    let tips: [Tip]
    let selectedIndexTip: Int
}

func ==(lhs: RideCompletionViewModel, rhs: RideCompletionViewModel) -> Bool {
    return true
}
