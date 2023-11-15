import Cocoa

func areLettersIdentical(s1: String, s2: String) -> Bool {
    s1.sorted() == s2.sorted()
}
