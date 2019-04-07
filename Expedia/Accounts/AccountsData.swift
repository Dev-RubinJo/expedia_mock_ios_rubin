//
//  AccountsData.swift
//  Expedia
//
//  Created by YooBin Jo on 07/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import Foundation

class AccountsData {
    let sectionsIfLogin = ["계정", "고객 지원", "커뮤니케이션", "법적사항", "", ""]
    let cellsIfLogin = [
        ["", "계정 정보 수정"],
        ["익스피디아 웹사이트", "예약 지원에 연락하기", "앱 지원에 연락하기"],
        ["앱 평가", "앱 추천하기"],
        ["개인 정보 삭제", "이용약관", "개인정보 보호정책", "법적고지"],
        [""],
        [""]
    ]
    
    let sectionsIfNLogin = ["", "계정", "고객 지원", "커뮤니케이션", "법적사항", ""]
    let cellsIfNLogin = [
        [""],
        [""],
        ["익스피디아 웹사이트", "예약 지원에 연락하기", "앱 지원에 연락하기"],
        ["앱 평가", "앱 추천하기"],
        ["개인 정보 삭제", "이용약관", "개인정보 보호정책", "법적고지"],
        [""]
    ]
}
