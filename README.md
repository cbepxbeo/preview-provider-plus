# PreviewProviderPlus

<b>Complements the provider's basic capabilities for easy interaction with typical needs.</b>   

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding PreviewProviderPlus as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/cbepxbeo/preview-provider-plus.git", .upToNextMajor(from: "0.0.1"))
]
```

## Usage

The basic call will configure the preview to output the largest and smallest display, using both color schemes.

```swift
struct ExampleView: View {
    var body: some View {
        VStack {
            Text("Example")
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        composition {
            ExampleView()
        }
    }
}
```
<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/empty_max_dark.png" alt="PreviewProviderPlus (Empty - Max & Dark)"> 

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/empty_min_light.png" alt="PreviewProviderPlus (Empty - Min & Light)"> 

You can specify a specific color scheme.

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        composition {
            ExampleView()
        }
        .appliedColorScheme(.dark)
    }
}
```

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/color_scheme_dark_without_device.png" alt="PreviewProviderPlus (Specific color scheme - without device)"> 

You can also specify a specific device

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        composition {
            ExampleView()
        }
        .appliedColorScheme(.dark)
        .appliedDevice(.iPhoneSE1St)
    }
}
```

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/color_scheme_with_device.png" alt="PreviewProviderPlus (Specific color scheme - with device)"> 


In addition to displaying, you can perform various actions before the preview is shown. For example, your application uses custom fonts and for correct display, you need to register them before displaying them.


```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        composition {
            ExampleView()
        }
        .appliedColorScheme(.dark)
        .appliedDevice(.iPhoneSE1St)
        .preliminaryAction {
            //your action
        }
    }
}
```

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/preliminary_action.png" alt="PreviewProviderPlus (Preliminary action)"> 


You can also use any available values ​​for bindings.

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/binding_one_value.png" alt="PreviewProviderPlus (Binding one value)"> 

<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/binding_two_values.png" alt="PreviewProviderPlus (Binding two values)"> 


Within a scope, bindings allow you to bind different views and react accordingly.


<img src="https://github.com/cbepxbeo/resorces/blob/595daf44e7d6de32b986ca63b89018a91820c9f8/resources/preview-provider-plus/media/binding.gif" alt="PreviewProviderPlus (Binding)"> 

<b>You can use up to five (inclusive) binding values.</b>

