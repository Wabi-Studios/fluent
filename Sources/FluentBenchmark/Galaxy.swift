import Fluent
import Foundation

final class Galaxy: FluentModel {
    var storage: Storage
    
    var fields: [AnyField] {
        return [id, name]
    }
    
    var entity: String {
        return "galaxies"
    }
    
    var id: Field<Int> {
        return self.field("id", .int, .primaryKey)
    }
    
    var name: Field<String> {
        return self.field("name")
    }
    
    var planets: Children<Planet> {
        return self.children(\.galaxy)
    }
    
    init(storage: Storage) {
        self.storage = storage
    }
}
