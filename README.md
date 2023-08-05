<p align="center">
<img width="70%" src="./Assets/ShuffleIt.png">
</p>

<p align="center">
    <a href="https://swiftpackageindex.com/dscyrescotti/ShuffleIt">
	    <img  src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fdscyrescotti%2FShuffleIt%2Fbadge%3Ftype%3Dplatforms"/> 
    </a>
    <a href="https://swiftpackageindex.com/dscyrescotti/ShuffleIt">
	    <img  src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fdscyrescotti%2FShuffleIt%2Fbadge%3Ftype%3Dswift-versions"/> 
    </a>
    <a href="https://codecov.io/gh/dscyrescotti/ShuffleIt">
	    <img  src="https://codecov.io/gh/dscyrescotti/ShuffleIt/branch/main/graph/badge.svg?token=D7DRKAD0VP"/> 
    </a>
    <a href="https://github.com/dscyrescotti/ShuffleIt/actions/workflows/swift.yml">
     	<img src="https://github.com/dscyrescotti/ShuffleIt/actions/workflows/swift.yml/badge.svg" alt="Action Status"/>
    </a>
    <a href="LICENSE">
        <img src="https://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
</p>

**ShuffleIt** is a user interface library for **SwiftUI** which delivers a collection of customizable stack views with a wide range of elegant shuffling, sliding and swiping behaviours.

<table>
<tr>
<th>CarouselStack</th>
<th>ShuffleDeck</th>
<th>ShuffleStack</th>
</tr>
<tr>
<td align="center" width="30%"><img src="./Assets/CarouselStack-Demo.gif" alt="CarouselStack-Demo" width="100%"/></td>
<td align="center" width="30%"><img src="./Assets/ShuffleDeck-Demo.gif" width="100%"/></td>
<td align="center" width="30%"><img src="./Assets/ShuffleStack-Demo.gif" alt="ShuffleStack-Demo" width="100%"/></td>
</tr>
</table>

## 💡 Features
- [CarouselStack](#carouselstack)
- [ShuffleDeck](#shuffledeck)
- [ShuffleStack](#shufflestack)

### CarouselStack <a id="carouselstack"></a>
**CarouselStack** is a stack view with sliding behaviour on the stack of content views with carousel effect. Just like **ShuffleStack**, it doesn't render all content views but it renders at most five content views which is enough to display content views with sliding animation. Besides, it provides customizablae modifiers to modify the view's appearance so that it is easy to adjust to what is desired.

#### Usage
```swift
let colors: [Color] = [.blue, .brown, .black, .cyan, .green, .indigo, .pink, .purple, .red, .orange, .yellow]
var body: some View {
    CarouselStack(
        colors,
        initialIndex: 0
    ) { color in
        color
            .frame(height: 200)
            .cornerRadius(16)
    }
}
```
<details>
<summary>Preview</summary>
<img src="./Assets/Previews/CarouselStack-Preview.gif" alt="CarouselStack-Preview"  height="300px"/>
</details>

To explore more about **CarouselStack**, check out the [documentation](https://dscyrescotti.github.io/ShuffleIt/documentation/shuffleit/carouselstack/).

### ShuffleDeck <a id="shuffledeck"></a>
**ShuffleDeck** is a stack view with shuffling behaviour on the stack of content views which mimics the behaviour of photo collections in Apple's Messages App. As it is based on the reusability of content views, it only renders views that are visible on the screen and switches data of content views based on the current index. As it comes with a bunch of modifiers, it fully supports to tailor the view to meet the wanted appearance.

#### Usage
```swift
let colors: [Color] = [.blue, .brown, .black, .cyan, .green, .indigo, .pink, .purple, .red, .orange, .yellow]
var body: some View {
    ShuffleDeck(
        colors,
        initialIndex: 0
    ) { color in
        color
            .frame(width: 200, height: 300)
            .cornerRadius(16)
    }
}
```
<details>
<summary>Preview</summary>
<img src="./Assets/Previews/ShuffleDeck-Preview.gif" alt="ShuffleDeck-Preview" height="300px"/>
</details>

To explore more about **ShuffleDeck**, check out the [documentation](https://dscyrescotti.github.io/ShuffleIt/documentation/shuffleit/shuffledeck/).

### ShuffleStack <a id="shufflestack"></a>
**ShuffleStack** is a stack view with shuffling behaviour on the stack of content views which will be useful as a banner. Not like normal stack view, it only renders three content views visible on the screen and switches data of content views based on the current index. As it comes with a bunch of modifiers, it is highly customizable to get the desired appearance.

#### Usage
```swift
let colors: [Color] = [.blue, .brown, .black, .cyan, .green, .indigo, .pink, .purple, .red, .orange, .yellow]
var body: some View {
    ShuffleStack(
        colors,
        initialIndex: 0
    ) { color in
        color
            .frame(height: 200)
            .cornerRadius(16)
    }
}
```
<details>
<summary>Preview</summary>
<img src="./Assets/Previews/ShuffleStack-Preview.gif" alt="ShuffleStack-Preview" height="300px"/>
</details>

To explore more about **ShuffleStack**, check out the [documentation](https://dscyrescotti.github.io/ShuffleIt/documentation/shuffleit/shufflestack/).

> Starting from Version 2.0.0, there are some changes which rename some modifiers and some types of ShuffleStack. Please check out [documentation](https://dscyrescotti.github.io/ShuffleIt/documentation/shuffleit/shufflestack/) to update your code accordingly.

## ⚠️ Requirements 
- iOS 15+, macOS 12+, watchOS 8+, tvOS 15+
> ShuffleIt is developed using Xcode 13.3.1. Make sure you are using Xcode 13.3.1 and above.

## 🛠 Installation 
### 📦 Using Swift Package Manager
Add it as a dependency within your Package.swift.
```
dependencies: [
    .package(url: "https://github.com/dscyrescotti/ShuffleIt.git", from: "2.1.3")
]
```

## 🔎 Exploration
### Documentation
**ShuffleIt** provides a clear documentation to increase the familiarity with the API and shallow learning curve when using it. You can check it out via this [link](https://dscyrescotti.github.io/ShuffleIt/documentation/shuffleit/).

### Demo Project
**ShuffleIt** also comes with the demo project which is an optimal spot to explore the API usage for available stack views. To run the demo project, you can use the following commands in your terminal.
```
> git clone https://github.com/dscyrescotti/ShuffleIt.git
> cd ShuffleIt && xed Demo
```
Afterwards, Xcode will open the project and then you can hit ⌘+R to run the project.


## 🎉 Motivation 
As I'm kinda like an artistic guy, I really indulge in crafting something innovative, in particular, in area of implementing user interface elements. It's a huge pleasure for me to explore the API and create an elegant components and then it has attached to me as my precious hobby. That's why, I used to craft various components to test out what I can achieve so far. Recently, I got the idea of gathering my creations in one place and delivering them to the world so that it can be easily used in other projects and also used as a learning resource for other developers. With this intention, I eventually published my first UI library called **ShuffleIt** for SwiftUI.

## ✍️ Author
Scotti | [@dscyrescotti](https://twitter.com/dscyrescotti) 

<p>
<a href="https://twitter.com/dscyrescotti">
<img src="https://img.shields.io/twitter/follow/dscyrescotti.svg?style=social">
</a>
&nbsp;
<a href="https://github.com/dscyrescotti">
<img src="https://img.shields.io/github/followers/dscyrescotti.svg?style=social&label=Follow">
</a>
</p>

## 👨‍💻 Contributions

**ShuffleIt**  welcomes all developers to contribute if you have any idea to enhance and open an issue if you encounter any bug.

## © License

**ShuffleIt** is available under the MIT license. See the  [LICENSE](https://github.com/dscyrescotti/ShuffleIt/blob/main/LICENSE)  file for more info.
