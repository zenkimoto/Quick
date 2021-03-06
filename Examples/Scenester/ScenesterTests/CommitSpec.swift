//
//  CommitSpec.swift
//  Scenester
//
//  Created by Brian Ivan Gesiak on 6/10/14.
//  Copyright (c) 2014 Brian Ivan Gesiak. All rights reserved.
//

import Scenester
import Quick

class CommitSpec: QuickSpec {
    override class func exampleGroups() {
        describe("Commit") {
            var commit: Commit!
            beforeEach { commit = Commit(message: "debt repaid", author: "jaime-lannister") }
            
            describe("simpleDescription") {
                it("returns author: 'commit message'") {
                    expect(commit.simpleDescription).to.equal("jaime-lannister: 'debt repaid'")
                }
            }
        }
    }
}
