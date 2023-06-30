# Swift-RandomNumberGenerator
Swift随机数程序
import Foundation

// 导入Foundation框架，它包含了Swift语言的基本功能和类型

func generateRandomNumbers(minRange: Int, maxRange: Int, count: Int) -> [Int] {
    // 定义一个函数用于生成随机数，接受最小范围、最大范围和数量作为输入，返回一个整数数组
    
    var randomNumbers = [Int]()
    // 创建一个空的整数数组用于存储生成的随机数
    
    for _ in 0..<count {
        // 循环count次，每次生成一个随机数
        
        let randomNumber = Int.random(in: minRange...maxRange)
        // 使用Int.random(in: Range)方法生成一个minRange到maxRange之间的随机数
        
        randomNumbers.append(randomNumber)
        // 将生成的随机数添加到数组中
    }
    
    return randomNumbers
    // 返回生成的随机数数组
}

// 获取用户输入的范围和数量
print("请输入随机数的最小范围: ")
// 打印提示消息，要求用户输入最小范围

let minRange = Int(readLine()!) ?? 0
// 读取用户输入的最小范围，并将其转换为整数类型，如果转换失败，则使用默认值0

print("请输入随机数的最大范围: ")
// 打印提示消息，要求用户输入最大范围

let maxRange = Int(readLine()!) ?? 0
// 读取用户输入的最大范围，并将其转换为整数类型，如果转换失败，则使用默认值0

print("请输入要生成的随机数的数量: ")
// 打印提示消息，要求用户输入要生成的随机数的数量

let count = Int(readLine()!) ?? 0
// 读取用户输入的数量，并将其转换为整数类型，如果转换失败，则使用默认值0

// 生成随机数
let randomNumbers = generateRandomNumbers(minRange: minRange, maxRange: maxRange, count: count)
// 调用generateRandomNumbers函数，传入用户输入的最小范围、最大范围和数量，获取生成的随机数数组

// 打印结果
print("生成的随机数为: \(randomNumbers)")
// 打印生成的随机数数组
