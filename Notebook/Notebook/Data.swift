//
//  Data.swift
//  Notebook
//
//  Created by Niklas Kuuva on 21/2/21.
//

import Foundation
import PencilKit

class Database {
    var drawings: [PKDrawing] = [PKDrawing(), PKDrawing()]
}

class DataSystem {
    var database = Database()
    func getDrawing(id: Int) -> PKDrawing {
        return database.drawings[id]
    }
    func saveDrawing(data: PKDrawing, id: Int) {
        database.drawings[id] = data
    }
}
