// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tun2SocksSPM",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Tun2SocksSPM",
            targets: ["Tun2SocksSPM"]
        ),
        .library(
            name: "Tun2SocksSPMC",
            targets: ["Tun2SocksSPMC"]
        )
    ],
    targets: [
        .target(
            name: "Tun2SocksSPM",
            dependencies: ["HevSocks5Tunnel", "Tun2SocksSPMC"]
        ),
        .target(
            name: "Tun2SocksSPMC",
            path: "Sources/Tun2SocksSPMС",
            publicHeadersPath: "."
        ),
        .binaryTarget(
            name: "HevSocks5Tunnel",
            url: "https://github.com/VasiliyShaydullin/Tun2SocksSPM/releases/download/2.7.5/HevSocks5Tunnel.xcframework.zip",
            checksum: "daff29b48fca7cb477a32e0693b06c5c0e2020c0e4ee23d871312f09f6e36648"
        )
    ]
)
