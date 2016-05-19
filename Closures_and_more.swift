enum SortMethod {
	case AscendingPriority
	case DescendingPriority
	case AscendingDueDate
	case DescendingDueDate

	func sort_function()->(Homework, Homework)->Bool{
		switch self {
		case AscendingPriority:
			return { (h1, h2) in
				return h1.priority>h2.priority
			}
		case DescendingPriority:
			return { (h1, h2) in
				return h1.priority<h2.priority
			}
		case AscendingDueDate:
			return { (h1, h2) in
				return h1.due_date>h2.due_date
			}
		case DescendingDueDate:
			return { (h1, h2) in
				return h1.due_date<h2.due_date
			}
		}
	}
}

enum Subject {
  case English
  case Programming
  case Language
  case Science
  case History
}
struct Homework {
  var subject: Subject
  var due_date: String
  var name: String
  var priority: Int
}
class Student {
  var name: String
  var age: Int
  var grade: String
  static let uniform_needed = false
  var sortMethod: SortMethod = .AscendingPriority
  private var _homework: [Homework] = []
  public var homework:[Homework]{
    get {
    	self._homework = self._homework.sort(self.sortMethod.sort_function())
    	return self._homework
  	}
  }

  init(name:String, age:Int, grade:String) {
    self.name=name
    self.age=age
    self.grade=grade
  }
  func new_assignment(new_homework: Homework){
    self._homework.append(new_homework)
  }
}

let jacob = Student(name:"Jacob", age: 18, grade:"Senior")
jacob.new_assignment(Homework(subject: .Programming, due_date:"Tuesday",name:"Finish Swift Tutorial", priority: 4))
jacob.new_assignment(Homework(subject: .Science, due_date:"Wednesday",name:"MasteringPhysics", priority: 1))
jacob.new_assignment(Homework(subject: .English, due_date:"Monday",name:"Reading", priority: 2))
jacob.new_assignment(Homework(subject: .History, due_date:"Friday",name:"Textbook reading", priority: 5))
jacob.new_assignment(Homework(subject: .Language, due_date:"Thursday",name:"Quiz", priority: 3))

jacob.sortMethod = .AscendingPriority
print("-----AscendingPriority-----")
print(jacob.homework)
print("-----AscendingPriority-----")
jacob.sortMethod = .DescendingPriority
print("-----DescendingPriority-----")
print(jacob.homework)
print("-----DescendingPriority-----")
jacob.sortMethod = .AscendingDueDate
print("-----AscendingDueDate-----")
print(jacob.homework)
print("-----AscendingDueDate-----")
jacob.sortMethod = .DescendingDueDate
print("-----DescendingDueDate-----")
print(jacob.homework)
print("-----DescendingDueDate-----")



//***************************************************
var cool_closure: (String)->String = { (param1) in
  return "hello \(param1)"
}
print(cool_closure("world"))
func apply_operator(op: (lhs: Int, rhs: Int)->Int){
  print(op(lhs: 3,rhs: 10))
}
apply_operator({ (lhs, rhs) in
  return lhs * rhs
})
apply_operator({ (lhs, rhs) in
  return lhs + rhs
})
//***************************************************



