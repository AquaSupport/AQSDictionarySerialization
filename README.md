AQSDictionarySerialization
==========================

[iOS] Dictionary Serializable Object Protocol

```objc
@interface Book : NSObject <AQSDictionarySerialization>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *authorName;
@property (nonatomic, copy) NSNumber *isPublished;

@end

@implement Book

+ (NSDictionary *)aqs_keyPathsByPropertyKey {
    return @{
        @"title": @"title",
        @"authorName": @"author_name",
        @"isPublished": @"is_published"
    };
}

@end
```

Then

```objc
[[AQSDictionarySerializer serializer] applyPatchForObject:book withDictionary:@{
    @"title": @"Harry Potter",
    @"author_name": @"J. K. Rowling",
    @"is_published": @(NO)
}];
```

### Current Limitations

- You cannot use primitive properties such as `BOOL`, `NSInteger`, etc...
- Currently you cannot use `keyPath` such as `author.name`.
