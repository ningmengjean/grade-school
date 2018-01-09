//Solution goes in Sources
import Foundation

struct GradeSchool {
    var roster = [Int: [String]]()
   
    var sortedRoster: [Int: [String]] {
        var dic = [Int:[String]]()
        for (k,v) in roster {
            dic[k] = v.sorted()
        }
        return dic
    }
    
    mutating func addStudent(_ name: String, grade: Int)  {
        if let _ = roster[grade] {
            roster[grade]!.append(name)
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? [String]()
    }
}
