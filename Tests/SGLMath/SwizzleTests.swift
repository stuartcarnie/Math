// Copyright (c) 2015-2016 David Turnbull
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and/or associated documentation files (the
// "Materials"), to deal in the Materials without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Materials, and to
// permit persons to whom the Materials are furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Materials.
//
// THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.


import XCTest
@testable import SGLMath

class SwizzleTests: XCTestCase {

    func test1() {
        var a = vec2(1, 2)
        XCTAssertEqual(a.yx, vec2(2, 1))
        a.yx = vec2(5, 4)
        XCTAssertEqual(a, vec2(4, 5))
        XCTAssertEqual(a.xy, vec2(4, 5))
    }

    func test2() {
        var z = vec4(1, 2, 3, 4)
        z.ab = vec2(99, 98)
        XCTAssertEqual(z.ab, vec2(99,98))
        XCTAssertEqual(z, vec4(1,2,98,99))
    }

}
