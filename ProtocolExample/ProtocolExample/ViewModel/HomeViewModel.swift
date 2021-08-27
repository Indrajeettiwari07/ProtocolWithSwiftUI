//
//  HomeViewModel.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import Foundation

protocol EmployeeListProtocol: ObservableObject {
	var employeeList: [EmployeeListData] {get}
	func getEmployeeList() -> [EmployeeListData]
}

final class HomeViewModel: EmployeeListProtocol {
	@Published var employeeList: [EmployeeListData] = [EmployeeListData(title: "Test Data 1", role: "iOS Engineer"),
														EmployeeListData(title: "Test Data 2", role: "Android Engineer")]
	
	init() {
		Timer.scheduledTimer(withTimeInterval: 5.0,
							 repeats: false) { _ in
			self.updateList()
		}
	}
	
	func getEmployeeList() -> [EmployeeListData] {
		employeeList
	}
	
	private func updateList() {
		let list = [EmployeeListData(title: "Test Data 1", role: "iOS Engineer"),
					EmployeeListData(title: "Test Data 2", role: "Android Engineer"),
					EmployeeListData(title: "Test Data 3", role: "QA Engineer"),
					EmployeeListData(title: "Test Data 4", role: "Backend Engineer"),
					EmployeeListData(title: "Test Data 5", role: "Frontend Engineer")]
				   
				   self.employeeList = list
	}
}

