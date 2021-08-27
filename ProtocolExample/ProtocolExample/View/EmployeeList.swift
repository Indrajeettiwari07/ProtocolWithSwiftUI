//
//  ItemList.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import SwiftUI

struct EmployeeList: View {
	// MARK: Properties
	private var list: [EmployeeListData]

	// MARK: Init
	init(_ employeeList: [EmployeeListData]) {
		list = employeeList
	}
	
	var body: some View {
		// ScrollView
		ScrollView {
			VStack(alignment: .leading) {
				ForEach(list) { rowData in
					HStack {
						ItemRowView(itemListData: rowData)
							.padding(.all)
						
						Spacer()
					}
					// Divider
					Divider()
						.background(Color.gray)
						.padding(.horizontal)
				}
			}
			.overlay(RoundedRectangle(cornerRadius: 16)
						.stroke(Color.gray, lineWidth: 1))

			.padding(.all)
		} // ScrollView
	}
}

struct EmployeeList_Previews: PreviewProvider {
	static var previews: some View {
		EmployeeList([EmployeeListData(title: "Employee 1", role: "iOS Engineer"),
					  EmployeeListData(title: "Employee 2", role: "Android Engineer")])
	}
}
