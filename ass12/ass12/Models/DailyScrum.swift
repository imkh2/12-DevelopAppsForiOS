//
//  DailyScrum.swift
//  ass12
//
//  Created by MAJEDAH on 01/07/1444 AH.
//
import Foundation

struct DailyScrum : Identifiable {
    var id: UUID
    
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
            self.id = id
            self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
            self.lengthInMinutes = lengthInMinutes
            self.theme = theme
        }

}
extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
                    self.id = id
                    self.name = name
                }
        
    }
    
    struct Data {
           var title: String = ""
           var attendees: [Attendee] = []
           var lengthInMinutes: Double = 5
           var theme: Theme = .seafoam
       }
       
       var data: Data {
           Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
       }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
    ]
}


