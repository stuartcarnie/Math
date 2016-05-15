import PackageDescription

let package = Package(
    name: "SGLMath"
)

let ar = Product(name: "SGLMath", type: .Library(.Static), modules: "SGLMath")

products.append(ar)
