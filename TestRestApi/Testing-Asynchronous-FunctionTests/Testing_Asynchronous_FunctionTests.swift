//
//  Testing_Asynchronous_FunctionTests.swift
//  Testing-Asynchronous-FunctionTests
//
//  Created by Akshay Kumar on 03/06/22.
//

import XCTest
@testable import Testing_Asynchronous_Function

class Testing_Asynchronous_FunctionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_GetAllPosts() {
        let expectation = XCTestExpectation(description: "post has been downloaded.")
        
        let url = URL(string:"https://jsonplaceholder.typicode.com/posts")!
        var posts = [Posts]()
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data , error == nil else {
                XCTFail()
                return
            }
            posts = try! JSONDecoder().decode([Posts].self, from: data)
            expectation.fulfill()
        }.resume()
        wait(for: [expectation], timeout: 2.0)
        XCTAssertTrue(posts.count > 0)

       
    }

}
