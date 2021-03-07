import XCTest
@testable import sample

class Sampletests: XCTestCase {
    var testSample: Sample!
  
 
  override func setUp() {
    super.setUp()

    testSample = Sample()
  }

  func testCanary() {
    XCTAssertTrue(true)
  }

  func test_average_letter_for_empty_list() {
    let namesArr: [String] = []
    XCTAssertEqual(0.0, testSample.countAvgNumLetters(names: namesArr))
  }

    func test_average_letter_for_one_name() {
       let namesArr: [String] = ["hello"]
        XCTAssertEqual(5.0, testSample.countAvgNumLetters(names: namesArr))
     }
    func test_average_letter_for_two_names_same() {
       let namesArr: [String] = ["hello", "hello"]
       XCTAssertEqual(5.0, testSample.countAvgNumLetters(names: namesArr))
     }
    func test_average_letter_for_two_names_different() {
       let namesArr: [String] = ["hello", "hi"]
        XCTAssertEqual(3.5, testSample.countAvgNumLetters(names: namesArr))
     }
    func test_average_letter_for_three_names_different() {
       let namesArr: [String] = ["hello", "hi", "hiiiiiiiiii"]
        XCTAssertEqual(6.0, testSample.countAvgNumLetters(names: namesArr))
     }
    
    
    
    
    func test_group_names_for_empty_name() {
      let namesArr: [String] = []
      XCTAssertEqual([:], testSample.groupNames(names: namesArr))
    }

      func test_group_names_for_one_name() {
         let namesArr: [String] = ["jet"]
          XCTAssertEqual(["j": ["jet"]], testSample.groupNames(names: namesArr))
       }
      func test_group_names_for_two_samename() {
         let namesArr: [String] = ["jet", "jet"]
         XCTAssertEqual(["j": ["jet", "jet"]], testSample.groupNames(names: namesArr))
       }
      func test_group_names_for_two_name_different() {
         let namesArr: [String] = ["jet", "aet"]
          XCTAssertEqual(["a": ["aet"], "j": ["jet"]], testSample.groupNames(names: namesArr))
       }
      func test_group_names_for_three_name_different() {
         let namesArr: [String] = ["jet", "aet", "b"]
          XCTAssertEqual(["a": ["aet"], "j": ["jet"], "b": ["b"]], testSample.groupNames(names: namesArr))
       }
    
    func test_group_names_for_four_name_different() {
           let namesArr: [String] = ["jet", "aet", "b", "jet"]
            XCTAssertEqual(["a": ["aet"], "b": ["b"], "j": ["jet", "jet"]], testSample.groupNames(names: namesArr))
         }
    
    
    func test_number_inletter_empty_name() {
         let namesArr: [String] = []
          XCTAssertEqual([:], testSample.countFirstLetterNames(names: namesArr))
       }
      func test_number_inletter_one_name() {
         let namesArr: [String] = ["hello"]
         XCTAssertEqual(["h": 1], testSample.countFirstLetterNames(names: namesArr))
       }
      func test_number_inletter_two_samename() {
         let namesArr: [String] = ["hello", "hello"]
          XCTAssertEqual(["h": 2], testSample.countFirstLetterNames(names: namesArr))
       }
      func test_number_inletter_two_differentname() {
         let namesArr: [String] = ["hello", "ai"]
          XCTAssertEqual(["h": 1, "a": 1], testSample.countFirstLetterNames(names: namesArr))
       }
    
    func test_number_inletter_three_samename() {
           let namesArr: [String] = ["hello", "hi", "hiiiiiiiiii"]
            XCTAssertEqual(["h": 3], testSample.countFirstLetterNames(names: namesArr))
         }
    
    func test_number_inletter_two_samename_two_different() {
      let namesArr: [String] = ["jet", "aet", "b", "jet"]
       XCTAssertEqual(["a": 1, "b": 1, "j": 2], testSample.countFirstLetterNames(names: namesArr))
    }
    
    
    
    
    func test_average_letter_for_empty_name_im() {
      let namesArr: [String] = []
        XCTAssertEqual(0.0, testSample.immutabilityCountAvgNumLetters(names: namesArr))
    }

      func test_average_letter_for_one_name_im() {
         let namesArr: [String] = ["hello"]
          XCTAssertEqual(5.0, testSample.immutabilityCountAvgNumLetters(names: namesArr))
       }
      func test_average_letter_for_two_names_same_im() {
         let namesArr: [String] = ["hello", "hello"]
         XCTAssertEqual(5.0, testSample.immutabilityCountAvgNumLetters(names: namesArr))
       }
      func test_average_letter_for_two_names_different_im() {
         let namesArr: [String] = ["hello", "hi"]
          XCTAssertEqual(3.5, testSample.immutabilityCountAvgNumLetters(names: namesArr))
       }
      func test_average_letter_for_three_names_different_im() {
         let namesArr: [String] = ["hello", "hi", "hiiiiiiiiii"]
          XCTAssertEqual(6.0, testSample.immutabilityCountAvgNumLetters(names: namesArr))
       }
    
    
    
    
    func test_group_names_for_empty_name_im() {
      let namesArr: [String] = []
      XCTAssertEqual([:], testSample.immutabilityGroupNames(names: namesArr))
    }

      func test_group_names_for_one_name_im() {
         let namesArr: [String] = ["jet"]
          XCTAssertEqual(["j": ["jet"]], testSample.immutabilityGroupNames(names: namesArr))
       }
      func test_group_names_for_two_samename_im() {
         let namesArr: [String] = ["jet", "jet"]
         XCTAssertEqual(["j": ["jet", "jet"]], testSample.immutabilityGroupNames(names: namesArr))
       }
      func test_group_names_for_two_name_different_im() {
         let namesArr: [String] = ["jet", "aet"]
          XCTAssertEqual(["a": ["aet"], "j": ["jet"]], testSample.immutabilityGroupNames(names: namesArr))
       }
      func test_group_names_for_three_name_different_im() {
         let namesArr: [String] = ["jet", "aet", "b"]
          XCTAssertEqual(["a": ["aet"], "j": ["jet"], "b": ["b"]], testSample.immutabilityGroupNames(names: namesArr))
       }
    
    func test_group_names_for_four_name_different_im() {
           let namesArr: [String] = ["jet", "aet", "b", "jet"]
            XCTAssertEqual(["a": ["aet"], "b": ["b"], "j": ["jet", "jet"]], testSample.immutabilityGroupNames(names: namesArr))
         }
    
    
    
    
    
    /*
    func test_number_inletter_empty_name_im() {
         let namesArr: [String] = []
          XCTAssertEqual([:], testSample.immutabilityCountFirstletterNames(names: namesArr))
       }
      func test_number_inletter_one_name_im() {
         let namesArr: [String] = ["hello"]
         XCTAssertEqual(["h": 1], testSample.immutabilityCountFirstletterNames(names: namesArr))
       }
      func test_number_inletter_two_samename_im() {
         let namesArr: [String] = ["hello", "hello"]
          XCTAssertEqual(["h": 2], testSample.immutabilityCountFirstletterNames(names: namesArr))
       }
      func test_number_inletter_two_differentname_im() {
         let namesArr: [String] = ["hello", "ai"]
          XCTAssertEqual(["h": 1, "a": 1], testSample.immutabilityCountFirstletterNames(names: namesArr))
       }
    
    func test_number_inletter_three_samename_im() {
           let namesArr: [String] = ["hello", "hi", "hiiiiiiiiii"]
            XCTAssertEqual(["h": 3], testSample.immutabilityCountFirstletterNames(names: namesArr))
         }
    
    func test_number_inletter_two_samename_two_different_im() {
      let namesArr: [String] = ["jet", "aet", "b", "jet"]
       XCTAssertEqual(["a": 1, "b": 1, "j": 2], testSample.immutabilityCountFirstletterNames(names: namesArr))
    }
 */
}
