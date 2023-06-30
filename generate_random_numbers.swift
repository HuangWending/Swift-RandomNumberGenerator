import Foundation

func generateRandomNumbers(minRange: Int, maxRange: Int, count: Int) -> [Int] {
    var randomNumbers = [Int]()
    
    for _ in 0..<count {
        let randomNumber = Int.random(in: minRange...maxRange)
        randomNumbers.append(randomNumber)
    }
    
    return randomNumbers
}

// 获取用户输入的范围和数量
print("请输入随机数的最小范围: ")
let minRange = Int(readLine()!) ?? 0

print("请输入随机数的最大范围: ")
let maxRange = Int(readLine()!) ?? 0

print("请输入要生成的随机数的数量: ")
let count = Int(readLine()!) ?? 0

// 生成随机数
let randomNumbers = generateRandomNumbers(minRange: minRange, maxRange: maxRange, count: count)

// 打印结果
print("生成的随机数为: \(randomNumbers)")
