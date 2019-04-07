//
//  TripReservationCellData.swift
//  Expedia
//
//  Created by YooBin Jo on 06/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//



// 이 파일은 잠시 보류
// TripReservationTableViewCell과 같이 보류



import Foundation
import UIKit


class TripReservationCellData {
    
    let sections = ["", "오늘의 인기 특가"]
    let cellTitle: Array<String> = ["₩80,000 이하 특가 호텔", "일일 특가"]
    let cellContents: Array<String> = ["호텔이 1박에 ₩80,000 이하!", "매일 일부 호텔을 40% 이상 할인해 드려요. 매일 밤 자정 특가 상품이 업데이트 됩니다."]
    let cellImage: Array<UIImage> = [UIImage(named: "eight")!, UIImage(named: "day")!]
}

