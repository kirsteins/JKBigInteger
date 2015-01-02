# JKBigInteger

## About JKBigInteger

JKBigInteger is a small library to facilitate easy working with big integers in Objective-C. JKBigInteger is a Objective-C wrapper around LibTomMath C library. It is inspired by the Java's BigInteger.

## Example

```objective-c
JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"123"];

NSLog(@"%@ + %@ = %@", int1, int1, [int1 add:int1]);

JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000001234567890123"];
JKBigInteger *int3 = [[JKBigInteger alloc] initWithString:@"123"];

NSLog(@"%@ - %@ = %@", int2, int3, [int2 subtract:int3]);

JKBigInteger *int4 = [[JKBigInteger alloc] initWithString:@"11111111111111111111"];

NSLog(@"%@ * %@ = %@", int4, int4, [int4 multiply:int4]);

JKBigInteger *int5 = [[JKBigInteger alloc] initWithString:@"10000001234567890123123123123"];
JKBigInteger *int6 = [[JKBigInteger alloc] initWithString:@"123"];

NSLog(@"%@ / %@ = %@", int5, int6, [int5 divide:int6]);

unsigned int numBytesInt5 = [int5 countBytes];
unsigned char bytes[numBytesInt5];
        
[int5 toByteArrayUnsigned:bytes];
        
for(unsigned i = 0; i < numBytesInt5; i++)
{
     NSLog(@"Byte %d: %X", i, bytes[i]);
}
```

## Installation

You can easily add `JKBigInteger` to your project with [CocoaPods](http://cocoapods.org) by adding it to your `Podfile`:

```
pod 'JKBigInteger', '~> 0.0.1'
```

Read the ['Pod' Syntax Reference](http://guides.cocoapods.org/syntax/podfile.html) for more details.

## Credits

JKBigInteger was created by Jānis Kiršteins

## License

JKBigInteger is available under the MIT license. See the LICENSE file for more info.