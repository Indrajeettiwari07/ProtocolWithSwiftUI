//
//  HomeView.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import SwiftUI

struct HomeView<T>: View where T: EmployeeListProtocol {
	@ObservedObject var viewModel: T
	
	init(_ viewModel: T) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		VStack {
			Text("Test Data")
				.foregroundColor(.primary)
				.frame(height: 50, alignment: .center)
			EmployeeList(viewModel.getEmployeeList())
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			HomeView(HomeViewModel())
		}
		
	}
}





