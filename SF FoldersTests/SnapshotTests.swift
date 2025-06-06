//
// SF Folders
// SnapshotTests.swift
//
// Created on 5/6/25
//
// Copyright ©2025 DoorHinge Apps.
//


import XCTest
@testable import SF_Folders
import SwiftUI

final class SnapshotTests: XCTestCase {
    func testSnapshotReturnsImage() {
        #if os(macOS)
        let view = Text("Hello").padding()
        let image = view.snapshotAsNSImage()
        XCTAssertGreaterThan(image.size.width, 0)
        XCTAssertGreaterThan(image.size.height, 0)
        #else
        let view = Text("Hello").padding()
        let image = view.snapshotAsUIImage()
        XCTAssertGreaterThan(image.size.width, 0)
        XCTAssertGreaterThan(image.size.height, 0)
        #endif
    }
    
    func testFolderIconViewSnapshotHasSize() {
        let vm = FoldersViewModel()
        let view = FolderIconView(resolutionScale: 0.2).environmentObject(vm)
        #if os(macOS)
        let img = view.snapshotAsNSImage()
        XCTAssertGreaterThan(img.size.width, 0)
        XCTAssertGreaterThan(img.size.height, 0)
        #else
        let img = view.snapshotAsUIImage()
        XCTAssertGreaterThan(img.size.width, 0)
        XCTAssertGreaterThan(img.size.height, 0)
        #endif
    }
}
