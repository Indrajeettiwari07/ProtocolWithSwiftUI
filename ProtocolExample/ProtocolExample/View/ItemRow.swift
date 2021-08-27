//
//  ItemRow.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import SwiftUI

 struct ItemRowView: View {
	// MARK: - Properties

	var itemListData: EmployeeListData

	// MARK: - Body

	var body: some View {
		HStack {
			VStack(alignment: .leading) {
				// Title
				Text(itemListData.title)
					.foregroundColor(.primary)

				// Subtitle
				Text(itemListData.role)
					.foregroundColor(.secondary)

			}
			Spacer()
		}
	}
}

 struct EmployeeListData:  Identifiable {
	var id = UUID()
	var title: String
	var role: String
}
