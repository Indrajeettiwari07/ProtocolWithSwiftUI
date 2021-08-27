//
//  ContentView.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import SwiftUI



struct EmployeeView: View {
	
	let listData: EmployeeListData
	
    var body: some View {
		VStack(alignment: .leading) {
			HStack{
				VStack(alignment: .leading) {
					Text(listData.title)
						.padding([.horizontal])
					Text(listData.role)
						.padding([.horizontal])
				}
				Spacer()
			}
			
			Spacer()
		}
		.padding()
	}
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
		EmployeeView(listData: EmployeeListData(title: "Employee1", role: "iOS Engineer"))
    }
}
