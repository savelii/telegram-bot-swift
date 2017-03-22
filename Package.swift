import PackageDescription

let package = Package(
    name: "telegram-bot-swift",
    dependencies: [
        //.Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 6),
	.Package(url: "https://github.com/IBM-Swift/CCurl.git", majorVersion: 0, minor: 2),
	.Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 15),
        .Package(url: "https://github.com/smud/ScannerUtils.git", majorVersion: 1)
    ]
)

