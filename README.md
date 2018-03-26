# MakemojiSDK-Data

[![CI Status](http://img.shields.io/travis/Makemoji/MakemojiSDK-Data.svg?style=flat)](https://travis-ci.org/Makemoji/MakemojiSDK-Data)
[![Version](https://img.shields.io/cocoapods/v/MakemojiSDK-Data.svg?style=flat)](http://cocoapods.org/pods/MakemojiSDK-Data)
[![License](https://img.shields.io/cocoapods/l/MakemojiSDK-Data.svg?style=flat)](http://cocoapods.org/pods/MakemojiSDK-Data)
[![Platform](https://img.shields.io/cocoapods/p/MakemojiSDK-Data.svg?style=flat)](http://cocoapods.org/pods/MakemojiSDK-Data)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

MakemojiSDK-Data is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MakemojiSDK-Data'
```

## Usage

Include the framework header:
```
#import <MakemojiSDK_Data/MEData.h>
```

First set yout Makemoji SDK Key once:

```
[[MEData sharedManager] setSdkKey:@"YOUR_KEY_HERE"];
```

Then start tracking emoji events throughout your app. These can be any ```NSDictionary``` you want. Here's an example.

```   
[[MEData sharedManager] sendEmojiEvent:@{@"emoji" : @"😀" }];
```

We will automatically track this to a individual user, but you can also add your own user data to this.

```   
[[MEData sharedManager] sendEmojiEvent:@{@"emoji" : @"😀", @"shared_user" : @"myfriend" }];
```
