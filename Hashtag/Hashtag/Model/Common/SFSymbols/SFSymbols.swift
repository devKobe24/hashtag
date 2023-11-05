//
//  SFSymbols.swift
//  Hashtag
//
//  Created by Minseong Kang on 11/4/23.
//

enum SFSymbols {
    case map
    case building
    case person
    case mappinAndEllipse
    case locationFill
    case network
    case listClipboardFill
    case personFillCheckmark
    case squareAndPencil
    
    var imageName: String {
        switch self {
        case .map:
            return "map"
        case .building:
            return "building"
        case .person:
            return "person"
        case .mappinAndEllipse:
            return "mappin.and.ellipse"
        case .locationFill:
            return "location.fill"
        case .network:
            return "network"
        case .listClipboardFill:
            return "list.clipboard.fill"
        case .personFillCheckmark:
            return "person.fill.checkmark"
        case .squareAndPencil:
            return "square.and.pencil"
        }
    }
}
