//
//  Commit+NetworkSpec.swift
//  Scenester
//
//  Created by Brian Ivan Gesiak on 6/10/14.
//  Copyright (c) 2014 Brian Ivan Gesiak. All rights reserved.
//

import Scenester
import Quick

class Commit_NetworkSpec: QuickSpec {
    override class func exampleGroups() {
        describe("latestCommit") {
            context("when the request succeeds") {
                it("calls the success block with the latest commit") {
                    var commit: Commit?

                    Commit.latestCommit("modocache/taptap",
                        success: {(responseCommit: Commit) -> () in
                            commit = responseCommit
                        },
                        failure: {(responseError: NSError) -> () in })

                    expect{
                        if let author = commit?.author {
                            return author
                        } else {
                            return ""
                        }
                    }.willBefore(3).equal("modocache")
                }
            }
        }
    }
}
