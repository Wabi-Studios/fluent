protocol Driver {
	func fetchOne(table table: String, filters: [Filter]) -> [String: String]?
	func fetch(table table: String, filters: [Filter]) -> [[String: String]]
	func delete(table table: String, filters: [Filter])
	func update(table table: String, filters: [Filter], data: [String: String])
	func insert(table table: String, items: [[String: String]])
}