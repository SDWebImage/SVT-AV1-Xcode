// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "svt-av1",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "svt-av1",
            targets: ["svt-av1"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "svt-av1",
            dependencies: [],
            path: ".",
            exclude: ["SVT-AV1/Source/Lib/Common/ASM_AVX2", "SVT-AV1/Source/Lib/Common/ASM_AVX512", "SVT-AV1/Source/Lib/Common/ASM_SSE2", "SVT-AV1/Source/Lib/Common/ASM_SSE4_1", "SVT-AV1/Source/Lib/Common/ASM_SSSE3", "SVT-AV1/Source/Lib/Encoder/ASM_AVX2", "SVT-AV1/Source/Lib/Encoder/ASM_AVX512", "SVT-AV1/Source/Lib/Encoder/ASM_SSE2", "SVT-AV1/Source/Lib/Encoder/ASM_SSE4_1", "SVT-AV1/Source/Lib/Encoder/ASM_SSSE3"],
            sources: ["SVT-AV1/Source/API", "SVT-AV1/Source/Lib", "SVT-AV1/third_party/fastfeat", "generate"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("SVT-AV1/Source/API"), .headerSearchPath("SVT-AV1/Source/Lib/Common/Codec"), .headerSearchPath("SVT-AV1/Source/Lib/Common/C_DEFAULT"), .headerSearchPath("SVT-AV1/Source/Lib/Encoder/Codec"), .headerSearchPath("SVT-AV1/Source/Lib/Encoder/Globals"), .headerSearchPath("SVT-AV1/Source/Lib/Encoder/C_DEFAULT"), .headerSearchPath("SVT-AV1/third_party/fastfeat")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
