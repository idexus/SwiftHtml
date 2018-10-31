import XCTest
@testable import SwiftHtml

final class SwiftHtmlTests: XCTestCase {

    func testSwiftHtml() {
        
        let tableBody = {
            Tag.tbody {
                for i in 1...3 {
                    $0 += Tag.tr {
                        $0 += Tag.td ("Name \(i)")
                        $0 += Tag.td ("Last name \(i)")
                        $0 += Tag.td ("email\(i)@test.org")
                    }
                }
            }
        }
        
        let table = {
            Tag.table ()
                .class("table", "table-striped")
                .innerHtml {
                    $0 += Tag.thead (
                        Tag.tr (
                            Tag.th ("First name"),
                            Tag.th ("Last name"),
                            Tag.th ("Email")
                        )
                    )
                    $0 += tableBody()
            }
        }
        
        let head = {
            Tag.head {
                $0 += Tag.meta ()
                    .httpequiv(.contentType)
                    .content("text/html")
                    .charset("utf-8")
                
                $0 += Tag.link ()
                    .rel(.stylesheet)
                    .href("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css")
                
                $0 += Tag.title ("Users")
            }
        }
        
        let page = {
            Tag.html (
                head(),
                Tag.body (
                    Tag.h1("Hello world!").style("text-align:center"),
                    Tag.br(),
                    table()
                )
            )
        }

        //print(page().toString())
        
        let newTestString = """
        <!DOCTYPE html><html><head><meta http-equiv="content-type" content="text/html" charset="utf-8"><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><title>Users</title></head><body><h1 style="text-align:center">Hello world!</h1><br><table class="table table-striped"><thead><tr><th>First name</th><th>Last name</th><th>Email</th></tr></thead><tbody><tr><td>Name 1</td><td>Last name 1</td><td>email1@test.org</td></tr><tr><td>Name 2</td><td>Last name 2</td><td>email2@test.org</td></tr><tr><td>Name 3</td><td>Last name 3</td><td>email3@test.org</td></tr></tbody></table></body></html>
        """

        XCTAssertEqual(page().toString(), newTestString)
    }

    func testExampe() {
        
        let page = {
            Tag.html("Hello World!")
        }
        
        XCTAssertEqual(page().toString(), "<!DOCTYPE html><html>Hello World!</html>")
    }
    
    static var allTests = [
        ("testSwiftHtml", testSwiftHtml),
        ("testExampe", testExampe),
    ]
}
