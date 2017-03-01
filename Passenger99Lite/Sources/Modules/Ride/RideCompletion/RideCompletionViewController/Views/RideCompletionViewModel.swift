
import Foundation

struct RideCompletionViewModel: Equatable {
    private let tips: [Tip]
    private let selectedIndexTip: Int
    var count: Int {
        return tips.count
    }
    var description: String {
        let tip = self.tips[self.selectedIndexTip]
        return tip.description
    }
    
    func getTipValueAt(index: Int) -> String {
        let tip = self.tips[self.selectedIndexTip]
        return "R$ \(tip.value)"
    }
}

func ==(lhs: RideCompletionViewModel, rhs: RideCompletionViewModel) -> Bool {
    return true
}
