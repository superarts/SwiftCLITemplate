import ArgumentParser

struct SwiftCLITemplate: ParsableCommand {
    @Argument(help: "The phrase to repeat.")
    var phrase: String

    @Option(name: .long, help: "The number of times to repeat 'phrase'.")
    var count: Int?

    @Flag(help: "Include a counter with each repetition.")
    var includeCounter = false

    func run() throws {
        let repeatCount = count ?? .max

        for i in 1 ... repeatCount {
            if includeCounter {
                print("\(i): \(phrase)")
            } else {
                print(phrase)
            }
        }
    }
}

SwiftCLITemplate.main()