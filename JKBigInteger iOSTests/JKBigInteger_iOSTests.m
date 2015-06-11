//
//  JKBigInteger_iOSTests.m
//  JKBigInteger iOSTests
//
//  Created by Jānis Kiršteins on 13/07/14.
//  Copyright (c) 2014 Jānis Kiršteins. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JKBigInteger.h"

@interface JKBigInteger_iOSTests : XCTestCase

@end

@implementation JKBigInteger_iOSTests

- (void)setUp {
    [super setUp];

    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}

- (void)testExample {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000000000"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"0000001000000"];

    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValue], @"1000001000000", @"Test example failed!");
}

- (void)testArchiving {
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *filePath = [rootPath stringByAppendingPathComponent:@"file.file"];

    // test 1
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111222233334444555566667777888899990000"];
    [NSKeyedArchiver archiveRootObject:int1 toFile:filePath];

    JKBigInteger *int2 = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    XCTAssertEqualObjects([int1 stringValue], [int2 stringValue], @"Test archiving failed!");

    // test2
    int1 = [[JKBigInteger alloc] initWithString:@"-123471238940713294701327508917230516230561320512352315021305012395091032950923520395013258623185465463545681428354162345612435416523"];
    [NSKeyedArchiver archiveRootObject:int1 toFile:filePath];

    int2 = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    XCTAssertEqualObjects([int1 stringValue], [int2 stringValue], @"Test archiving failed!");
}

- (void)testDescription0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2131231231231231231231231231231231231239876543210"];
    NSString *result = [NSString stringWithFormat:@"%@", int1];
    XCTAssertEqualObjects(result, @"2131231231231231231231231231231231231239876543210", @"Test Description 0 failed!");
}

- (void)testEqual0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71039487035325136518735"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71039487035325136518736"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedAscending, @"Test equal 0 failed!");
}

- (void)testEqual1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71039487035325136518799"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71039487035325136518736"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedDescending, @"Test equal 1 failed!");
}

- (void)testEqual2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"829472590263457620374652704650234675072346507826340750432234051"];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"829472590263457620374652704650234675072346507826340750432234051"];

    NSComparisonResult result = [int1 compare:int2];

    XCTAssertEqual(result, NSOrderedSame, @"Test equal 2 failed!");
}

// Auto generated tests below

- (void)testAdd0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1324363173651736969755537217937400034034948144717050671802" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"835301321423387782311290724817434637195392781" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1324363173652572271076960605719711324759765579354246064583", @"Add test 0 failed");
}

- (void)testAdd1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100110011000111000100101110000011100101101000000000100010111110001110110001000110010010111111100110100001011111110100100110001001110010001110110011001000010000100010101010011100111000000001110111010101001100100101110100001101100010011001111001011110010111010101011000000011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101101001101000111010111100101110101000111101100010" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100110011000111000100101110000011100101101000000000100010111110001110110001000110010010111111100110100001011111110100100110001001110010001110110011001000010000100010101010011100111000000001110111010101001100100101110100010000001111100111000000110101111101001010011111101111010", @"Add test 1 failed");
}

- (void)testAdd2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7a49201da7a7b3f7455851af34002273b4869c25626c4bfb33c861" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1d2cb3c50e55ee336796f8eca34380227ffffcc3e6a57e4f13241dd777dd17e5e082" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1d2cb3c50e55eeadb0b716944af77767d851abf7e6c7f20399c04339e4291319a8e3", @"Add test 2 failed");
}

- (void)testAdd3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e1d4ef4ed" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f3726e46e0b9781dece8fc5073fbcb8ac082448531e4e9c5282db035c60e0d99b5af82773e6c112d706" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"f3726e46e0b9781dece8fc5073fbcb8ac082448531e4e9c5282db035c60e0d99b5af82773f4de61cbf3", @"Add test 3 failed");
}

- (void)testAdd4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"413610463" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2117450364471704016" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2117450365105514501", @"Add test 4 failed");
}

- (void)testAdd5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2133525453530133124021302713756645131" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"13207243766225270673657771430264232466755030347646240373253216261" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"13207243766225270673657771432417760142505163473667543307232063412", @"Add test 5 failed");
}

- (void)testAdd6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1051244250201164454426053527210646076010342331262204672223430331343300441230" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"667330125345004671047741632531064513753072214503523153636363602415062352003134206621541256063260436276" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"667330125345004671047741633602330764154256671131576703047231700425424703265341101045171607426561077526", @"Add test 6 failed");
}

- (void)testAdd7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100111010010101000111001111100000101001011011111011010110011001110001001000100110001110010000010101011011010100001000001101101000100110111001111010010000000101100000111000010100010001001010010011110110110101110100110110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100111010010101000111001111100000101001011011111011010110011001110001001000100110001110010000010101011011010100001000001101101000100110111001111010010000000101100000111000010100010001001010010011110110110101110100111100", @"Add test 7 failed");
}

- (void)testAdd8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63610033701124745441034463714271204626756635302266140750176123023375277753210175516232207602" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"52737577362741507500632364350024507162703" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"63610033701124745441034463714271204626756635302266213707775505765105000605574545542741372505", @"Add test 8 failed");
}

- (void)testAdd9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8164184484840451530387256440548855618552167686" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"739689961051568793636" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"8164184484840451530387257180238816670120961322", @"Add test 9 failed");
}

- (void)testAdd10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11600795169787fa51" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21ac8401d" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1160079518b2503a6e", @"Add test 10 failed");
}

- (void)testAdd11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000011000110101011101100001011010110101000111101111101101101111110101101100100010100011010001110000001110001101011111100001111101001100111010001011000111111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10001101010010001001101101101001011010110111010111110101010010101001010100111100001100111000000000110100110011101111001110101001100000010010000101111111011010001011000110010001010001" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001101010010001001110110000010010000010100111001010000000111110001000100101001111100101101101101010111010111000000111110110111101101110001100111111100100111000101010001011001001010", @"Add test 11 failed");
}

- (void)testAdd12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2391a6ab40d6cb6aa21818fd15e31a68cd93827445e526" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71ab4f27dd2" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2391a6ab40d6cb6aa21818fd15e31a68cd9a9d293862f8", @"Add test 12 failed");
}

- (void)testAdd13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4c9b5e0d38f9c525fa85ca01409" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6039d3b97df2e2d56e0af0ba4df72e5e844a6e7e300ec301ace51eccbf02870069f38f6f9c8cb" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"6039d3b97df2e2d56e0af0ba4df72e5e844a6e7e300ec301ad31ba2acc3b80c58fee15399dcd4", @"Add test 13 failed");
}

- (void)testAdd14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1192ecb6afc5a1919a32" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9b84e8ea20a76b424cf9983" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"9b860218ec12679c66133b5", @"Add test 14 failed");
}

- (void)testAdd15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"37f9de8bc8e762dc5807c02ae4c9abbe8fe307581d27f4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2b1" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"37f9de8bc8e762dc5807c02ae4c9abbe8fe307581d2aa5", @"Add test 15 failed");
}

- (void)testAdd16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011010000101001001001101110111110011110001011000001011101011111100100000011110000110101010111101001110100010101011011111110010000110000010010010101011011101100001110101011000100000010100001110000000010101000100111101100001000010100010100110101100111101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11001011100101010000111110100001010001001110110001001001000011011001010111111010011010101101111101110001100011001001000001101000000001101001010101010001011011001111010011100111111100111010110110111111000101000010111101001010001010110010100111010000000010100010100001" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11001011100110101011000011101010011111000110100100111010011011100101000011110110111011001100000100011100100000010111100100010011100001011011011011010011101101111010110001001001110010010011010111010011010011000011010010001111001000010011101001110010101001001111011110", @"Add test 16 failed");
}

- (void)testAdd17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"0" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2752125426526716777713216764407614335545770447206241250632261213722164" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2752125426526716777713216764407614335545770447206241250632261213722164", @"Add test 17 failed");
}

- (void)testAdd18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8057301709568955755995010127619849622226061942191528685001190717" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"99976563488710153997844430889764034354041373734595697307071496298297922645" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"99976563496767455707413386645759044481661223356821759249263024983299113362", @"Add test 18 failed");
}

- (void)testAdd19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"39079971282253389536260939548881682718361659678319313701116205778910930040230713165326314" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4092815589234707554920038333942607459937531694877345642868849101864726762" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"39079971282253393629076528783589237638399993620926773638647900656256572909079815030053076", @"Add test 19 failed");
}

- (void)testAdd20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"36512741074833542617522842590980533399151095336230485885178693006403" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"816074782157081665140986666048039191497028964824021250859241" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"36512741890908324774604507731967199447190286833259450709199943865644", @"Add test 20 failed");
}

- (void)testAdd21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111111100110000100100000101010100100000001101010100010001110110000001111110001011001010100111001001011101110001011010101001000001101001011101111110110110010010110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11000100101100001101111111000101001110100001011101111001010110000101010001001101100011" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111111100110000100100000101010100100000001101010100010001110110000001111110001110001111010011010111011100110110101001001010011111100010110100000100000111100000011010", @"Add test 21 failed");
}

- (void)testAdd22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1d3540ea26f05cfe649b5b019c1295f25a68186826e4deaeb125d4dceb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3b1ac901456538f5a018453ee98460aa126cc45f24afe9070cbe42f049c8450f9f742075218bfd438" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3b1ac901456538f5a0184540bcd86f4c817294456e659920cde7a215f049cb920dc20b6033e94b123", @"Add test 22 failed");
}

- (void)testAdd23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10110000000001011110001101001001000111111111100111101111011111100010001100011100011110011010111000010101100100001101100111001010011110011111101110101101000001101101101010100011101101100100001000010111001110100010010100101011101101010100101011101100001011011101011000101100100000001001100011001111001011101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10100001000100101011011001110110000001101101111110000111001110000110101111101000011111101110001001001001100001111110111010101001110101001110000110101111000010001011110011101000011101111101011110111110110101100111100101100001011001110100111000100001010111100001010111011110010111110111000011101111000110011111" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110111000100110111001011011111001010101101111011000101001010000011000001001100000011100001100000001100001110100000100111100011001001000010000100100100101010011001100000111100111011101010000000000001101111011011111000000110110111011111011101111110111000111101000010100011111011111000010000001000111111111100", @"Add test 23 failed");
}

- (void)testAdd24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101101101000110100111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010000011111001110011001110100000011011011111010011011000000" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010000011111001110011001110100000011101001100111100001100111", @"Add test 24 failed");
}

- (void)testAdd25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e2d77e219da50a0f7b81d242" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"841779bba139ec114c2bf171b553" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"84185c931f5b89b6563b6cf38795", @"Add test 25 failed");
}

- (void)testAdd26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"69570222367272665352343813457003415016751453880565056458951243517630879390037275" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"54732137584335028826246" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"69570222367272665352343813457003415016751453880565056459005975655215214418863521", @"Add test 26 failed");
}

- (void)testAdd27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100010101000101001010000011001111010101000100011001000100111100001101101010101110110010010111011111000000000010101100100101011010010001111110011100000010011111010000011100110100010011000111110111010010111001101110011110001011000111010110001101011101100110000111100110011010010110101011111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100111011100111110010101101011011001111001000100101101111101011110001111001011011001111111100010000001111000100111011100000010001110011111111001111110000100001101100000110100100111010001110100000011100010011100110010" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100010101000101001010000011001111010101000100011001000100111100001101101111101010011010001010001100011011010001110101001011001001111101110000010101011101101111001100101101000011011000000011010111100100101101101101101101111011101001000010010100000010100000010110000110110110101010010010001", @"Add test 27 failed");
}

- (void)testAdd28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6969076" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"59130095604968727994646371409713585224410272553056136182356967775993279095139748826928" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"59130095604968727994646371409713585224410272553056136182356967775993279095139755796004", @"Add test 28 failed");
}

- (void)testAdd29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11173070734" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"27475140100540456572543457176400547473453557635337601645534141024663062613227367" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"27475140100540456572543457176400547473453557635337601645534141024663074006320323", @"Add test 29 failed");
}

- (void)testAdd30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"bea7d5f5c26ea5b0c683874873397" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"86687aeb7131b5d359c8737e9e2a95f0c6c8cb3a39f1d03a8f9f80c67cb737be90f" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"86687aeb7131b5d359c8737e9e2a95f0c6c8cbf8e1c7c5fcfe45318d003e8031ca6", @"Add test 30 failed");
}

- (void)testAdd31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7755402264205076261335152171404706457054214661543634774270266400546744205373066251325306052173305364301713576" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7752243653566221262256116771000726406077707653033766753305" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7755402264205076261335152171404706457054214661543644746534142166770226463512057252253714152103160420270667103", @"Add test 31 failed");
}

- (void)testAdd32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"823579344495a461ce25835c5b1a3b6aab2ee22fa5" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"62be56f954403b440d9566ca5086292dcb7" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8235793a707b13f71229379d3470a80fb391750c5c", @"Add test 32 failed");
}

- (void)testAdd33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111111011011101110101100111001000000100110010001110111001100100000110010101110001011011011011101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101001" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000111111011011101110101100111001000000100110010001110111001100100000110010101110001011011011110010110", @"Add test 33 failed");
}

- (void)testAdd34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1412522602550324101566430643152624011160427721147010645504101610215777547545" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"76362167267041727111540766555040246252545130701317377426574374262323453252103272175454" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"76362167270454451714311312656626677115717754712500027347743405130027555062321271745221", @"Add test 34 failed");
}

- (void)testAdd35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"76db323d0cb60b3ee8506c188ce25f076736ec9ffcc7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"15baf94d91195946f18cecdd35bf1988c9edf86221c17dcb82a76fadfd9b" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"15baf94d9119594768681f1a427524c7b23e647aaea3dcd2e9de5c4dfa62", @"Add test 35 failed");
}

- (void)testAdd36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"235766711201665511242716037277263406724606247553774454560316547717116463132364652421023411026002536413444" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"51741752161530712175075114620471200626261164454247162663613162011212001460333146614132000254" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"235766711201737453215077570211460504041426740754622735744773017102002276314376064422503744174616670413720", @"Add test 36 failed");
}

- (void)testAdd37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30416223659691328820925465602695674030103044461" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"183557419353423874863360050251458450109193136" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"30599781079044752695788825652947132480212237597", @"Add test 37 failed");
}

- (void)testAdd38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010010001001111101110011010111001110101110010111111010001000101011001011110111100011010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101011100001111000010101110000110100100100110001110011110101111101100010011101011010100110110010011110001010100111110100010101000011110100000101100000010101100111110010101000010100111001011000110011010110000011000011111111011001011100011011110" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101011100001111000010101110000110100100100110001110011110101111101100010011101011010100110110010011110001010100111110100010101000011110100000101100000011011111001111100100110001000010000100111100001101101111101001100101010100101010011111111000", @"Add test 38 failed");
}

- (void)testAdd39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e3eb2528e8f600f64e2c39270b678f88e72132cf1fe4e92f8d0fcb001cac5ed0e828519c3253" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"39999b61a6879e5a5cf15e29895566f3c0611dbb6f5fb8b8e06ca1031" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e3eb2528e8f600f64e2fd2c0c181f802ccc701e5027d7e85fc4bd111f86354cc73b658664284", @"Add test 39 failed");
}

- (void)testAdd40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"342764118334629074619247150" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"30648155335517110537743" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"342794766489964591729784893", @"Add test 40 failed");
}

- (void)testAdd41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2704537063400163" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7147050240637665326057233437574437230743522522215622140717" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7147050240637665326057233437574437230743525426754705541102", @"Add test 41 failed");
}

- (void)testAdd42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010001010100100000011001000011101011100000100011110100011001000010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100011101110100010001000000100000010111011000110000111110111101000000000101110100111010101100111101111000000" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011101110100010001000000100000011011101010000101011111010110000011110001010101011110100001010110111010001", @"Add test 42 failed");
}

- (void)testAdd43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10467372256515241572256" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12443056772563010252530054544333562030157720" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"12443056772563010252540544136612277271752176", @"Add test 43 failed");
}

- (void)testAdd44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"222002990c645c7bd27ebdcacabb6d76c072e243157ec2bd37d93c66974754eb8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2740e5fd" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"222002990c645c7bd27ebdcacabb6d76c072e243157ec2bd37d93c6699bb634b5", @"Add test 44 failed");
}

- (void)testAdd45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110100000111010101001001111101000110101000101011010100101011101111110011101010100000110100000000110110101100111010101100101010000111101011100001110011111001110100001001100010111010101110111000110011011110011111100110011010101100000110101001001011101011010010110100111101010110111101111110000011101110101010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011100110000110111111100011111010101010110110000000010011011000011000010000011111101001100001010100001011010110101110000010000011000110110101100100001101110111010111111011010000110100100010010111101100101101000111110000010100110001100111100011111100100010100101100110100011" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110100000111010101001001111101010010001110110010010100001111101010011110100000100001000111011001001110111101011010010110001011011011110110111000100001111011110111010000011000011110111100110000001011011001110000011010111101000011110011010110010011011011100111100110100100111010111010100000101001010101001101", @"Add test 45 failed");
}

- (void)testAdd46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"48df2a8b2f39a716e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9a60fadf6" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"48df2a8bc99aa1f64", @"Add test 46 failed");
}

- (void)testAdd47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"cd18f0b8e9b3fd296d99402f1c41041054d230e27ebd6780607ae9a6a05a3ef3ed0c94f3f26a4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"fbc01d37e92daf125e10e0763f25c77fbccd68e410841" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"cd18f0b8e9b3fd296d99402f1c41041150924e1a67eb1692be8bca1cdf800673a9d9fdd802ee5", @"Add test 47 failed");
}

- (void)testAdd48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1194003595223359397898179944" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1243709335524469813" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1194003596467068733422649757", @"Add test 48 failed");
}

- (void)testAdd49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"95957848929" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"184830617494011186501148112189971854340776578160230423068216906828445538" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"184830617494011186501148112189971854340776578160230423068217002786294467", @"Add test 49 failed");
}

- (void)testAdd50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000110110001011101110111111010101100011010100110010110110011001110110111011000111011101011101000010110100010011110100000011110100001000011111000001000001101100000101010101011111110100000011111001010010100000000000010100010100100000011001111010110110001001101000111001011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010000010011011111011011101001010001000" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11000110110001011101110111111010101100011010100110010110110011001110110111011000111011101011101000010110100010011110100000011110100001000011111000001000001101100000101010101011111110100000011111001010010100000000000010100010100100001101010001110010101100101010010001010011", @"Add test 50 failed");
}

- (void)testAdd51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"373710023" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"210756354211377037150210534312363147" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"210756354211377037150210534706273172", @"Add test 51 failed");
}

- (void)testAdd52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011000100011100011101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101000000010111010100011010011010110100010011101101110001010100110110111111101010101011011011011110011100011010101000011011010010111000011100101010111111000011010110000100101110000101111000001010100101000" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101000000010111010100011010011010110100010011101101110001010100110110111111101010101011011011011110011100011010101000011011010010111000011100101010111111000011010110000100101110001001010000101110001000101", @"Add test 52 failed");
}

- (void)testAdd53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29936f60116d23cd879e23eaaffab25c57c885a9a2fa63d5c72e1f0d41dcba5eb27adf8a10be35c24" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5b5a1097fde8c3e" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"29936f60116d23cd879e23eaaffab25c57c885a9a2fa63d5c72e1f0d41dcba5eb2d6399aa8bc1e862", @"Add test 53 failed");
}

- (void)testAdd54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"844909172010624686581867318444901920346185772044054515415108526480714820249098295970573958" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"14310588977384412440524144" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"844909172010624686581867318444901920346185772044054515415108526495025409226482708411098102", @"Add test 54 failed");
}

- (void)testAdd55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1075ecdc9cba72e0fed8727fe9e3b464eff8984d6e772e932cbead4bb9881762a6a6a4b44" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5c93143" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1075ecdc9cba72e0fed8727fe9e3b464eff8984d6e772e932cbead4bb9881762a70337c87", @"Add test 55 failed");
}

- (void)testAdd56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111100100101101100101001101100101000100000001101011011100111000010011101100110010001011000100100001010111011001000011011001100001111010011000101011101000001011110101111011000011100000101000110001110001001000110001010110111010100110000000111001111000101100010011011110110011101100001110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101110000010100000110100000001" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111111100100101101100101001101100101000100000001101011011100111000010011101100110010001011000100100001010111011001000011011001100001111010011000101011101000001011110101111011000011100000101000110001110001001000110001010110111010100110000000111001111000101100011001001111000111110010101111000", @"Add test 56 failed");
}

- (void)testAdd57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"725763612331978595248949967379855669925855823171419178263177014372801320235204112357066" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5489919508997743468505261222196230453461965235533309827100825881352180849930314018684" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"731253531840976338717455228602051900379317788406952488090277840254153501085134426375750", @"Add test 57 failed");
}

- (void)testAdd58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000001001100000111110001110100001011111101001100101110001110111010110100101000001100101011000111101010000010011010101101010011101000010001001110110101110100110011110101111111000100000011111011101100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010000001011100100011001110101011000011000110001001100001101110101110011011101110001011111000011001001010000111101" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000001001100000111110001110100001011111101001100101110001110111010110100101000001101001101001001000110100101101001011000010110101110011010110000100100100011001111100100001010111100011101000101110100000", @"Add test 58 failed");
}

- (void)testAdd59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"362866697603224583574136289512072957590921395251368764381881532563340488805920854" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"38291797846225330771896813396041708094741753092948087" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"362866697603224583574136289550364755437146726023265577777923240658082241898868941", @"Add test 59 failed");
}

- (void)testAdd60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100001101101000111101110001011000101111101011101110010111011100011001110100100011110101010011001000001000011100000001000110101111101011011101101000000010111000100011100111000111001000010110000110110011100011111001111111000011000010010111011111100011111011100111010110100011001100011100111101100011100100100110011101111100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111101010111010110110001110010000110101100011101010011010000011110101001111010110000000101010100110111110110111100000111000010111110100010001101011110011101011010101010111101000010100111010001101111010011010110000101" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100001101101000111101110001011000101111101011101110010111011100011001110100100011110101010011001000001010011001011000011101100001011101100100010100100000001011110100000101110001000011000110001100001000011011110000111011001010000101010110000001110001011010000100110001001110001001011111100100110101010011111001110100000001", @"Add test 60 failed");
}

- (void)testAdd61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17099" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"83464980988501422277032163038054103604637907768395528578551886659129330" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"83464980988501422277032163038054103604637907768395528578551886659146429", @"Add test 61 failed");
}

- (void)testAdd62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"135f0497adb2851091ba01a4b3a1d74c373be0962" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"ffd71b79ba2c0e8554b5396" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"135f0497adb2851092b9d8c02d5c035abc9095cf8", @"Add test 62 failed");
}

- (void)testAdd63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"53fa4dc683d1" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"dffbdaf3b3ea9298e8255ec15a6e3dca806ca1c576fad6fb" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"dffbdaf3b3ea9298e8255ec15a6e3dca806cf5bfc4c15acc", @"Add test 63 failed");
}

- (void)testAdd64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"256713607226" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2637104131051124064027141346533320475217063770226425655555657462330751" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2637104131051124064027141346533320475217063770226425655556136376140177", @"Add test 64 failed");
}

- (void)testAdd65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11a4f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1af7945e632c334563fdfde2f88ffbfa44a6f91c71352bcaa2842488836cf7d097aa9b6dc8f133c745d" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1af7945e632c334563fdfde2f88ffbfa44a6f91c71352bcaa2842488836cf7d097aa9b6dc8f133d8eac", @"Add test 65 failed");
}

- (void)testAdd66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"64d55d2dad4b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"402608800b1a91e8fd6f3cd9f721972913acbde31ac2438a7d2dfb37df139c2797d" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"402608800b1a91e8fd6f3cd9f721972913acbde31ac2438a7d2dfb3e2c696f026c8", @"Add test 66 failed");
}

- (void)testAdd67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e831ba57034a93dd1613589e3249fac3f85c4cfac179f483f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1669bb1e6abcf0f0c7e1689684292ebc966240ca4abc2d670a832ce63cbc38208c6c95937" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1669bb1e6abcf0f0c7e168976c5ae91399acd4a760cf86053ccd27aa3518851b4de68a176", @"Add test 67 failed");
}

- (void)testAdd68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7566402173560359927577021571289930067549355605853662903132" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"749567322170978185472798979734175287566169416360410744805608842453996860" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"749567322170985751874972540094102864587740706290478294161214696116899992", @"Add test 68 failed");
}

- (void)testAdd69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4235343de3be4844" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"649443d4b7cc68c28e169676e558468475ba988f9ebad74" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"649443d4b7cc68c28e169676e5584688990ddc6dda9f5b8", @"Add test 69 failed");
}

- (void)testAdd70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111111101111110101101010010111100000101111111000110000111100001111001110111001010100011101001010110001100101111000011100111001001000101010101100011000001000010010010100100100010111100100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111011000010010101010" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10111111101111110101101010010111100000101111111000110000111100001111001110111001010100011101001010110001100101111000011100111001001000101010101100011000001000010010110011111100101010001110", @"Add test 70 failed");
}

- (void)testAdd71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111000100000100011101011011100010110010110100100011001111010111001000010000101001011111111101011110010001011001100010111110010100011000100000100001011000100011001011100010001010111110100001010000100010111011010111010101010000010100111000111100010001110101110010111110101111000010001101000111000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000100100000101001110000100101011001111011100010011101000111001101011101011001011111001000101101101101000100000111010101110101100100001100101010111101100110110001000" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10111000100000100011101011011100010110010110100100011001111010111001000010000101001011111111101011110010001011001100010111110010101011101000001001011001001001000100101011101101101011011101000011110000000010100110110011101111110000001111101000011100111101011010111001011011001111111110011111000000", @"Add test 71 failed");
}

- (void)testAdd72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1b21920edc9f071a89bbf79d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3412f5d69afb673fa9090a0ad0e77435f014b319d4" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3412f5d69afb673fa9242b9cdfc4133d0a9e6f1171", @"Add test 72 failed");
}

- (void)testAdd73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2760a545372be2c584048e848f2625b7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"dbb3216dc1052455b434346301c133f2210577791" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"dbb3216dc37b2eaa07a6f28f5a017cda69f7d9d48", @"Add test 73 failed");
}

- (void)testAdd74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011110001010001101010010100100101001010111110001001101110111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010100010111010001100001111100101100010111" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011110001010001101011101000111100011100100000000110011011010000", @"Add test 74 failed");
}

- (void)testAdd75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d0d0575d778c7ea31dd5951403344bfd4ae206eb971c6b21274aa7bb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1fb2bc300bc3377acc9b04256bf53ae07060e09fb4e71f" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2d0d0575d77ac315f4de1584b7e00e701704dfc26778ccc01c6ff8eda", @"Add test 75 failed");
}

- (void)testAdd76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"43236459006574281503523687306409256701185793806348315523829257077865963" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5823916309657" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"43236459006574281503523687306409256701185793806348315523835080994175620", @"Add test 76 failed");
}

- (void)testAdd77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"302125256135226330161255512751762446072661341201762714035054675743506664130107332253235377652342102" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4402762324635620724724704611501155234132630172130601352066" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"302125256135226330161255512751762446072665744164307551656001622650320365305343465103427530453714170", @"Add test 77 failed");
}

- (void)testAdd78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"38862377" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"488317143803211159168120784016746635826568248181758294592148553627875853107319510124358775186" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"488317143803211159168120784016746635826568248181758294592148553627875853107319510124397637563", @"Add test 78 failed");
}

- (void)testAdd79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7912188409494044979951831871951565322180247780765850389469839167727644482" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"65158247591369558507548818558921648732266354482730400357713321432135890881235616884442668432244832" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"65158247591369558507548826471110058226311334434562272309278643612383671647086006354281836159889314", @"Add test 79 failed");
}

- (void)testAdd80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010101100001001101000000000000101111111111011000000111101000000101000000101000111010010101100001101000101110110101111101100000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1101101100010100100010100101100011000000101101011010011001010110111110100010100000011001100001000011011111100010010110011000101100001110101000110100101011101110101110110110000110101010011001011111011001101110000111110101001000101111000101101" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1101101100010100100010100101100011000000101101011010011001010110111110100010100000011001100001000011011111100010101001000100110101110110101000111010101011101001101111110011000111010010011110100110101100011010010100111010111111011110110001101", @"Add test 80 failed");
}

- (void)testAdd81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"21145613027375563627606344430230617677623730211006104225617452640445131563252001" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"64424673311123100466073542265536015543656716170652556034353503107705045732514033027244205023" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"64424673311144246301123140051365624110307147010552401764564511214132665405354500161027457024", @"Add test 81 failed");
}

- (void)testAdd82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11747456643460" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100532013143135371225626432150532462132032605614331745734405771247331127350" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"100532013143135371225626432150532462132032605614331745734406003217007773030", @"Add test 82 failed");
}

- (void)testAdd83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"54829909076351172958008943869530867028604523923485574162322384677110426774438" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8789019135595608380634146" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"54829909076351172958008943869530867028604523923485582951341520272718807408584", @"Add test 83 failed");
}

- (void)testAdd84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011110110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110111010110001111101000111101101001101101111011000100001100011001110011100000110011011011001011001111001101010110000010011000010100010100110110111000101010110011110000110101100100110010111100101010011000101010" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110111010110001111101000111101101001101101111011000100001100011001110011100000110011011011001011001111001101010110000010011000010100010100110110111000101010110011110000110101100100110010111100101011110111011010", @"Add test 84 failed");
}

- (void)testAdd85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011010001010111001001010010010101011111100000100000110011110101100101110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111111101100000111001110000000010100100101100001110111000001000001110010110111101000101010001001011000100110011010110110111100001001101011001010100001010110001000100010101101111100011100000000110111100100011001011" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111111101100000111001110000000010100100101100001110111000001000001110010110111101000101010001001011000100110011010110110111100001001101101100100101100001111010010110101011001111000100000000111010110010001000111011", @"Add test 85 failed");
}

- (void)testAdd86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14146026146441147819568511682417441677164066115424080346775477" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"60934741978846784367793025918340752770418766627943838018" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"14146087081183126666352879475443360017916836534190708290613495", @"Add test 86 failed");
}

- (void)testAdd87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101001111101101010110110111101011110001000011011111100100010111111110010111011101011111101000111010000100000010000000100010101100100010011111000100010111001010010100001101001101110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111111010011011011100011110101101010100000010010" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101101001111101101010110110111101011110001000011011111100100010111111110010111011101011111101000111010000100000010000000100010101100110010011001011111110011101001000001100001010000000", @"Add test 87 failed");
}

- (void)testAdd88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1bc9ca0c802c57699a390e889212defa561125fba0d0131bf034a52cf76354233d21e1b630080f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"74a491cb36fb0e9cc2862549" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1bc9ca0c802c57699a390e889212defa561125fba0d0131bf034a5a19bf51f5a38307e78b62d58", @"Add test 88 failed");
}

- (void)testAdd89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26982581997320489738704743428823470940695581752556" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"904935803362810471151" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"26982581997320489738704743429728406744058392223707", @"Add test 89 failed");
}

- (void)testAdd90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"37451577793937175141231" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"683139092093391206558356160067460620980339875396641890505966092831818609085311523147113921" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"683139092093391206558356160067460620980339875396641890505966092831856060663105460322255152", @"Add test 90 failed");
}

- (void)testAdd91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"260720536634072633061436365" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"72166412306" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"260720536634072725250050673", @"Add test 91 failed");
}

- (void)testAdd92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5ebabe01b2c617a5de37ff3c82b7a4f1bf6e1036e4e9f75a264119bd4d408f90db23fd939767554" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4f85afd78200ce6bf5c4928d429adce488ba7fb811523" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5ebabe01b2c617a5de37ff3c82b7a4f1bfbd95e6bc6bf8289236de4fda832a6dbfacb8134f78a77", @"Add test 92 failed");
}

- (void)testAdd93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"716112150342324523397990921372217887262552965994917385017758097141848796728488838098" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6909050610514496248" andRadix:10];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"716112150342324523397990921372217887262552965994917385017758097148757847339003334346", @"Add test 93 failed");
}

- (void)testAdd94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1146f122b03f542fbdb4aa4e18e8960b485bf821c56d1039cd5b2ef9d2244f021f3202cb74" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"ef2ae51a8e5600e5ec33315828cc63abe06069d410487df67" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1146f122b03f542fbdb4aa4e27db445cf14158302430434f4fe7f534902a559f60368aaadb", @"Add test 94 failed");
}

- (void)testAdd95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"106676541062474720302251411641" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1517440512405720462552361474033051426007656224305502736225541341074137316206272" andRadix:8];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1517440512405720462552361474033051426007656224305611634766624036014441567620133", @"Add test 95 failed");
}

- (void)testAdd96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000101100001101000101100100011111110011101110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000000110011110011100100011000010001010110011110111010100101000010000011001101110101000110011101111000110100011110100001100101101001011010001000010011001101010110001010001110111100110000001100010100010000000110100001110000001101010110011000001111011111111101101011011100110010010001010001110010110001010110011111" andRadix:2];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000110011110011100100011000010001010110011110111010100101000010000011001101110101000110011101111000110100011110100001100101101001011010001000010011001101010110001010001110111100110000001100010100010000000110100001110000001101010110011000001111011111111101101011100101011110011110010111010111010001001010001101", @"Add test 96 failed");
}

- (void)testAdd97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"b60419fd4a6accf7254" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"174a3886e7f54994c36add81b0ddf0f62ff6f4d7e08e481264dd99dcf5c6d25976744424a9da85" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"174a3886e7f54994c36add81b0ddf0f62ff6f4d7e08e481264dd99dcf5d2329b1648ead1794cd9", @"Add test 97 failed");
}

- (void)testAdd98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d773fc40bced60d28063387d0c9fdd52f914b575c2218d68cf75c136cacd27c16e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1223b80139" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2d773fc40bced60d28063387d0c9fdd52f914b575c2218d68cf75c136dcf0dfc2a7", @"Add test 98 failed");
}

- (void)testAdd99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"485c4e2de0bdcd671e7eb24559423f5dd2cf13f9563ce" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1" andRadix:16];
    JKBigInteger *result = [int1 add:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"485c4e2de0bdcd671e7eb24559423f5dd2cf13f9563cf", @"Add test 99 failed");
}

- (void)testSubtract0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110101001010001101001010100011100001111000100010110010000000110000110011111111001101101101010110110111010000110110110111000110010011100110000110100011110000110101110010000110100110011100101111100001001001011100011001110101001101111101110010110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101111110100001001010011101101101110001101010001100111010011111011000100101110111001010010010101111000011100111011111011110011011011010001101001000000011001001100010110011010100000100010000001110000010110101111101111110110100001011101000100000101111011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-101101111110111111000110100011001010101011011001000100100001111010010011111010111010000100101000100001100101101011000100111100010100111110000010111001110101011011100000101000011001111011100101000000110101100110010011011100101100001111000110010011000100", @"Subtract test 0 failed");
}

- (void)testSubtract1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"81836ac1aeffda6e5c7ee" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9cad7bd25f434155600" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"80e6bd45dca0972d071ee", @"Subtract test 1 failed");
}

- (void)testSubtract2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2bf43b262176fff89ba9bc7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"48c46a2e31af3b6c49a449d9c661f10d56e" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-48c46a2e31af0f780e7e2862c66955639a7", @"Subtract test 2 failed");
}

- (void)testSubtract3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"74107516421121203243744" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21212735370370236660" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"74066303463530613005064", @"Subtract test 3 failed");
}

- (void)testSubtract4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001001110001000100000111010010000010100101011010100110010101000000011001111001001111001001111000001000101011111101011011010100110110110100001001111110101000101101000101110000101011100001111000011101001000111011011001110000011011000111010001111111100000101100011010101000101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011101111111111010011010010100110011010010101011111011111010110011111010010001110001101100111100010010010010110001110111001001101001010011010010010000000101010001000000011100000001100011001010001000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001001110001000100000111010010000010100101011010100110010101000000011001101101011111001010100100110110000101100011000101110101010111011101101010101100011010011111011110001110011001001011101001100011111011110000111111011110011010011101001001111100000000100000000001010111101", @"Subtract test 4 failed");
}

- (void)testSubtract5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"276560645262605740707072666525740150664720274603" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"127127634072221636674360" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"276560645262605740707072537376104056443061400223", @"Subtract test 5 failed");
}

- (void)testSubtract6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111101101011100111001010111000110100000110111111100111101000010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110010000111110100101100001010000010010100010000100111100111010001111011011001001000011011110110001111100111011000011010100011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-110010000111110100101100001010000010010100010000100111100110110010001101111100001111000100101111101110101111011011011101100001", @"Subtract test 6 failed");
}

- (void)testSubtract7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011101100000000000100001111100000000011101100011110111011000110101010001110101110011101010000011110000011010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11010111011010111100" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011101100000000000100001111100000000011101100011110111011000110101010001110101110011100110101100010101011110", @"Subtract test 7 failed");
}

- (void)testSubtract8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010011111110101101010010000011010100111000101100000111101101110110100011110001010110010001110000011100010001101100100000100111011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111110110110101001010010100100011001110100000110100000100111110001001001" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010011111110101101010010000011010100111000101100000111011101111111101110100111000001101110100001111011011101100111100010011110010", @"Subtract test 8 failed");
}

- (void)testSubtract9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"19b880f625283f859509e0e0f8fb3ac655" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10832cc998a0cefaea5d2971aa3456b685c3dbf036ed6105a3a2763a06a02ed8195dedac77cfab0f77" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-10832cc998a0cefaea5d2971aa3456b685c3dbf036ed610589e9f543e177ef5284540ccb7ed4704922", @"Subtract test 9 failed");
}

- (void)testSubtract10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"cd040e8ff" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2a3b61195562b401981dc359c02f29c24e9f" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-2a3b61195562b401981dc359c022598165a0", @"Subtract test 10 failed");
}

- (void)testSubtract11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10421171564027634051750425000677060" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2543570027115773055471132124042657471533243434632613132636703557005705652640304" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-2543570027115773055471132124042657471533243424211421346607047505035260651741224", @"Subtract test 11 failed");
}

- (void)testSubtract12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1fc95ec1ccb9ffbdf9f274be" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8502ec28fa18be1e9fb1e41a991a5760b87c095111190ff4" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-8502ec28fa18be1e9fb1e41a7950f89eebc2099317269b36", @"Subtract test 12 failed");
}

- (void)testSubtract13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101110000001100000100101000101011010111100001100010001001101101100010101101011011001000110010111000001010110000010010000001111101110010010110001100111011110001111100000110101010111110100000010001010111011001011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001010001100001001100011011111100001001000000001101110011001110001011001011000111111011111111011001000011111101010010111110000010101100010001111011100001011101101101100101110011000000001110000010100110111010100100" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100100011110101010111000001100101111001110100001010100010110011111010111100010010011001100110011011111000110110010111111000011111011000110000100010001011010010100001110100000110111111110010010001110110000011110110100", @"Subtract test 13 failed");
}

- (void)testSubtract14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000001001110011000100000010010001010011010101011000100000100011001001001100011111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001011111011101111101000000000011000110101101111001010111100001101110011000110111111101101001101111111110001101111100110001010010011100001110010000001001011110110010100000000010111011100100000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-1001011111011101111101000000000011000110101101111001010111100001101110011000110111111101101001101111111110001010111011100010111001111011111100000101101110110011101110011011101001110010000000001", @"Subtract test 14 failed");
}

- (void)testSubtract15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16288746519349680652370476082768044814136397953188367808075616518688737269780794" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8412152846557839610" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"16288746519349680652370476082768044814136397953188367808075608106535890711941184", @"Subtract test 15 failed");
}

- (void)testSubtract16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010000001011111101000100111000111001111101011000110100000001011001010011000110100101110010010111101000100010101010111111010111011010001111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101111010001101111010110110000010000100111010100001110011000000101011010100100111100111011101111111001110111110011110010111001001110011001000101010110110101001101000110010101111100000010100110100001001011100011110001101100011101000000011110011101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-100101111010001101111010110110000010000100111010100001110011000000101011010100100111100111011101111111001110001100011100110111100001001100000001011011001011100011001000100111100101000111100000000101110110011111011001111000001011101101001000100001110", @"Subtract test 16 failed");
}

- (void)testSubtract17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011010010111100110001000101010011111000110000110001010000101100100110000101000010010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101000010011011001010010000000101011101110100101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011010010111100110001000101010011110011101110010110000110011100100000100111001101101", @"Subtract test 17 failed");
}

- (void)testSubtract18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010100000001010001010110011111000000111101100111101010111101010100101001111110010011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111100000011011100111001011110011110100001110010000101111100101010101111010010000011101101101010101011101101100100011010000110010010010001001110111011011110010101110110000011000110111001100011011101100010111100000010110100011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-111100000011011100111001011110011110100001110010000101111100101010101111010010000011101101101010101011101101100100011010000110010010001010111010111010001100111111010111000010001001010001111000100000001110010010000100100000101", @"Subtract test 18 failed");
}

- (void)testSubtract19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11100010000000111101111000101111111100100110001000100111011010100100101100100110110000000100111101110111000001000111110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11001000001100101110011111000100001011100000000110111000110110100000101100001010100001001" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100010000000111101111000101100110100011001011010001000010110011001001100011111110111001110011101001010110110100110101", @"Subtract test 19 failed");
}

- (void)testSubtract20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100000110100001010011110100110011010110001110000001100111011011100000100100001001110000101011001111101110010010001010111001011000101110010000010101010011001000011010000111010000000101011101010101010111111101011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110101001100001100100000000100011010101101011010110001001011010100110111001110110100011110100110101111011000111011110100000111111100011100100101101011001011101100111010000001110001001101110101001001101110100010110110000001001010100000111010001100100111010101100101100101001010011010100011101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-110101001100001100100000000100011010101101011010110001001011010100110111001110010011101010011100010000110010100001000010010111101111100001001001100110101010011110110100100111110011011011100011110010100011011101000011111110100000000111110110111011101101010100111001111010011111011010111000101", @"Subtract test 20 failed");
}

- (void)testSubtract21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101011110100111100110100000111100101011111011110100010101111010100001011010111111110111001001100010100011100011111011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010010010110100110101111011111010111100110011100101001000000001110001010110010010100001111111101010011011100111110100101110101011110110001001001101011000011110101110011100100001100010111001011011001000011111101111000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-100010010010110100110101111011111010111100110011100101001000000001110001010110010010100001111111100100111101000000001110001101101111001010001101011001000010100100001101000001100001101011101111111000100100111011110011100", @"Subtract test 21 failed");
}

- (void)testSubtract22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3351a497e012587d076911ab7a0f885b285052504172dec64c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a04f1aa28c83f009f31406152e916c63faefa085ce4f02f90fb9f27d19a8684ebdc0d6af4107b7" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-a04f1aa28c83f009f31406152e9139125657c07375d1fb8ffe0e786d914d3ffe6b70953c62416b", @"Subtract test 22 failed");
}

- (void)testSubtract23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"50589335531625950197874585565453175172942690558727439468214156900787490622036897887812431095921776" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"210302949214252141132933630991242868017355923084694970491296259053815000637783347758203" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"50589335531415647248660333424320241541951447690710083545129461930296194362983082887174647748163573", @"Subtract test 23 failed");
}

- (void)testSubtract24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"915874236253901649268667640341017005337" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"245300072956294961686866094144534668743428924470194323943109245439626473792555020752" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-245300072956294961686866094144534668743428923554320087689207596170958833451538015415", @"Subtract test 24 failed");
}

- (void)testSubtract25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4604400321178214991463406496921582530937509045695131552882511469073672242445629436" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"413509" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4604400321178214991463406496921582530937509045695131552882511469073672242445215927", @"Subtract test 25 failed");
}

- (void)testSubtract26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47059fc1b206517a864ad5fbec70" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3ea4c4c8b196c51d2d" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"47059fc1b1c7acb5bd993f36cf43", @"Subtract test 26 failed");
}

- (void)testSubtract27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010111111111110100010100011010110000001000110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10001011110110001101000110011110111110101111101101101101011011000001110101010101111011011110010001110111010110111011100010011011110100110011111010010101110000011001000110101010000010111111101110011101010111011011000011110101110011010010011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-10001011110110001101000110011110111110101111101101101101011011000001110101010101111011011110010001110111010110111011100010011011110100110011111010010101110000011001000110101010000010111111010011011101011000111000100000011111110010001011111", @"Subtract test 27 failed");
}

- (void)testSubtract28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2223161872ff558c6678a51325c2cdb13171cc19e4d93bfa2a03d7757931e5463eb58988c3fb8871a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"af2864b08b4a48d58c850786d6a3b31850c3113722e68b5f7460c86f1da74072bdcd441e368c958" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2173edb3c2740b4390ec200b9eec29fe19210908adb6556eca8f76ad0a143e05cbf7bc44a5c4fbdc2", @"Subtract test 28 failed");
}

- (void)testSubtract29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"769868118099968558675547419151624642839052224666082242043831019816332941294516379100379673402606646" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4488162356794683884990321771481346" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"769868118099968558675547419151624642839052224666082242043831019811844778937721695215389351631125300", @"Subtract test 29 failed");
}

- (void)testSubtract30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"64490202276191376494086466641374573499288636170047703120661449733353085655602862000" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"144773322891280585650223584835103622664507406554663813" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"64490202276191376494086466641229800176397355584397479535826346110688578249048198187", @"Subtract test 30 failed");
}

- (void)testSubtract31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42424" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2225692424919255515336271569818156290225375892427329" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-2225692424919255515336271569818156290225375892384905", @"Subtract test 31 failed");
}

- (void)testSubtract32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33574254171222370003553227213023672632425123065732573316612457704602670603316413524172033546647641124" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12527201375537506433754746046404657230122331433" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"33574254171222370003553227213023672632425123065732573304063256307043162147341445455565154316525307471", @"Subtract test 32 failed");
}

- (void)testSubtract33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"41056265370461304524712265731625416304571612242605050526121721656305626074" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"234232502465612052046217335102524707712766722632570454666606321" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"41056265370225052022224453657557176747467065332672061603267131201417017553", @"Subtract test 33 failed");
}

- (void)testSubtract34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33323902411952495478584638962355429153390267300230281612416530370142204" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"66340978898" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"33323902411952495478584638962355429153390267300230281612416464029163306", @"Subtract test 34 failed");
}

- (void)testSubtract35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"301045259113373208321007209961099003013608247409814755759617710733976166029" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5703597285215395801247267304193939092786171060860991067279149715551284225155844061390" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-5703597284914350542133894095872931882825072057847382819869334959791666514421867895361", @"Subtract test 35 failed");
}

- (void)testSubtract36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"651367438057819965490798700656613588994007208551544485870655278029846487" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"765784976055701172729288" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"651367438057819965490798700656613588994007208550778700894599576857117199", @"Subtract test 36 failed");
}

- (void)testSubtract37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"92162225392920516049" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"908251326798826683312495727310" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-908251326706664457919575211261", @"Subtract test 37 failed");
}

- (void)testSubtract38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13164163222027036676742335752025501031326305554" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"527777577160133545246014152133162064336216214627255543542742156262732025675774537075204445723605357376" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-527777577160133545246014152133162064336216214627255543527555773040702766777032201123156744672257051622", @"Subtract test 38 failed");
}

- (void)testSubtract39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010064553032725161254211214355640301717157604225320632045662031006522447165104351113501110112" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"217345220675466341" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1010064553032725161254211214355640301717157604225320632045662031006522447164665003672603421551", @"Subtract test 39 failed");
}

- (void)testSubtract40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"77354014972986099435683850378235161387895938994872" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3399068900073754627989687616375914402376902" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"77354011573917199361929222388547545011981536617970", @"Subtract test 40 failed");
}

- (void)testSubtract41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1633342454627214400705066517516436031" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"14260715541334444652401565252176150162232063330274014144764546150616722526530076754234565" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-14260715541334444652401565252176150162232063330274012311422071321402321621441357235576534", @"Subtract test 41 failed");
}

- (void)testSubtract42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23564476211564232412246474766364036455163365311555244753017521120277350350567700012525465" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7471214321176157164025056105524413356042162413665055230670414434156724542352346644733602307731225054416073156" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-7471214321176157164001271407312627123427713716676471172213231046645147275377327123613302737360435154403345471", @"Subtract test 42 failed");
}

- (void)testSubtract43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001000011010111010010010000110111101000111111101010001000101011000100010101111110111011001110010000011100110100010111110111001001100100011111100001010010011111001000010100010110101001111010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101111011100000110100100111110101101110010101101011001111001001011111000011100101111111111101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001000011010111010010010000110111101000111111101010001000101011000100010101111110111011001110001010100001010011100011001111010011110110001001110110000011010101101001010000110000101001111101", @"Subtract test 43 failed");
}

- (void)testSubtract44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2716072224" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10033706733430633106101633232132370623251756670141010346575311443717530240406415332624524" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-10033706733430633106101633232132370623251756670141010346575311443717530240406412414532300", @"Subtract test 44 failed");
}

- (void)testSubtract45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3155e5dd03068706004178c1df04bad1fb034ef7bf1f0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f3a11eb4483a2b5a3564794c77a210455acafe82d227" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"221bd3f1be82e4505ceb312d178a99cda5569f0f91fc9", @"Subtract test 45 failed");
}

- (void)testSubtract46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10110001100011011101001111010101001101010010000001010010010110011101010100110110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000110001010001011010001" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110001100011011101001111010101001101010010000001010010001101101100000011011100110", @"Subtract test 46 failed");
}

- (void)testSubtract47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"25425636564303540037507254774211304013452" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"744632711701346725111475664722262311352047360752516106534771157342275155776751" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-744632711701346725111475664722262311324421522166212346475261702346063651763277", @"Subtract test 47 failed");
}

- (void)testSubtract48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5274637424562216741627052165527277407260063222625314712034243711522400010074132752063261627466" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11271417427225010456401107527400772003324553370011266076461101774161003462" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"5274637424562216741615560546100052376601462113075713720030717136132366521775451650067100624004", @"Subtract test 48 failed");
}

- (void)testSubtract49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"87056224558271026785687039946327519287218627601205741679609185598516227555401765799" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7382466689090011201525334882982917680809" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"87056224558271026785687039946327519287218620218739052589597984073181344572484084990", @"Subtract test 49 failed");
}

- (void)testSubtract50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3ec7b2ae4b95580615b8883a33baef5502a8eb853" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"e4af2c1650f508147dd7a13aed86915a" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3ec7b2ae3d4a6544b0a937b8ebdd754153d0826f9", @"Subtract test 50 failed");
}

- (void)testSubtract51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010000001100010100000011101010101001110110001101100001111101000100000101010011011011111110111111011111110000111111101100010001011000110111100001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001000111000111110101001101000011000011111000010111100000111011000111010101100100001101101000110000111100011110111110100010010111000011111010011101101001101110010000011111100010101111001111001100011010110100101110110110101100100111101101100110110011101001111110010" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-1001000111000111110101001101000011000011111000010111100000111011000111010101100100001101101000110000111100011110111110000000010101100001011010000000010100011111011110110011010011000110101110100001111111010100110110111010101110011111110000000100101000100011000010001", @"Subtract test 51 failed");
}

- (void)testSubtract52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101001000110111001100011010101101011101110101110011011100111101111001000101101011110011010111011000011111000100011010110000111111010010101011011110110110010110000000001111101011000010110100111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101100101110111110" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101001000110111001100011010101101011101110101110011011100111101111001000101101011110011010111011000011111000100011010110000111111010010101011011110110110010110000000001111001101011100111101001", @"Subtract test 52 failed");
}

- (void)testSubtract53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100011100010001100011100001111000011011011111111101100110111001011101000101011000100110111111100001111000100011000011001011011101010100010010010001000011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101101010101111101010010101100011001010111000001111001101110110010010101000010001011100101100011100001000000000000000110000100100011101111011100110100100101001011000011010101101101100111110011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-11101101010101111101010010101100011001001010100101101000001011010000011100100110101011100111111100100111100010111010101101011101100100001101100100010001100001111111100110000001011011010110110000", @"Subtract test 53 failed");
}

- (void)testSubtract54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010010110110100110000111101000110111111110110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010111110010100110010110011111001011010010011001111010000110010101101110000010000001000111101000110101001100001000111110110111000010010011011100000001001001" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-1010010111110010100110010110011111001011010010011001111010000110010101101110000010000001000111101000110101001001110110001000010000111010101010100100000010011001", @"Subtract test 54 failed");
}

- (void)testSubtract55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101110001100001101110111100000001111000101001001001101010100100000101111111000000100110011111110101100001100001110111010001110001100011100100101110001100010100011001010001101100100001100101000101011111011001101110000010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11011001110010000111010001100101111010010000110001001010001100000110010000010111111101000101001010010100011010111001011110111111101110101010110100010101110101010011011011111011011101010011000000011111011000010101101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101010110010011011110000001110101001001010111000011100001010010100101001100111101100110110111001100001110111110100000000101111001100101101111010111101001100101101110110110001101000101111010101101011011011110101011010101", @"Subtract test 55 failed");
}

- (void)testSubtract56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000101110001001100110010110001000100100001000010111011010110000000010011001111101011101011000010011111010011101101101111001011110001111100110010111010011100110011110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010101000110100111101010010001110001101011110101101100100101000101" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000101110001001100110010110001000100100001000010111011010110000000010011001111101011101011000010010100111110100111000111100001100000001011000111000100110000001110101111", @"Subtract test 56 failed");
}

- (void)testSubtract57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3930693161669781057216943851896467731842745331874202631277400" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"806151358136104765034589448896347944887255356298736411080" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3929887010311644952451909262447571383897858076517903894866320", @"Subtract test 57 failed");
}

- (void)testSubtract58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"aec54ec6813177f29dfbdf7bf76c677885ea77b45472b04f7cfb94455824e2189c9400" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"334974a35ee18da3ba28a2" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"aec54ec6813177f29dfbdf7bf76c677885ea77b45472b04f49b21fa1f9435474e26b5e", @"Subtract test 58 failed");
}

- (void)testSubtract59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101110100010011101011011101101111111001010010110101011110001110010111000010101101011100110010001101110100001010101001001011101111000010010000000101011000100000000001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1101100110111110010001011000110000011000000111001010111100110111100001011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101110100010011101011011101101111111001010010110101011110001110010111000010101101011100110000100000111100011000011110000101101100000001010110101101110001100011110110", @"Subtract test 59 failed");
}

- (void)testSubtract60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"687318749180507933499728584766" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4372129846326353035976062243621118615832516174370109381760150692644280020501" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-4372129846326353035976062243621118615832516173682790632579642759144551435735", @"Subtract test 60 failed");
}

- (void)testSubtract61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010001010001010111100111000101010010110011111101101001011110011111110110100101010111100111000111111101001001000000010100010100000111000000001101000101001100111110110110110011101111001010101101100111011001011010001110100111011001111010000100111000110100000111001111000100110110011100111010001000100000101111100110011001000101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11001110001101001011001010101101000111001110011010001100000100101000011100010110001101011100110110100101001001001010100011101001101110110001010000111000111000011110111001100001000111011011001100001001011001111011010101010010001011000111010110000100000110001011001000000111000101010100000110001101101000000011011100011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010000110111100101111101101011111101001011000011110110001100111111010001100001110100110101011100010110010100010111001010111111101001110010010110111011000101110111110010111100100011000001110010001101111000001110111111001100101111101000101011111110000011100110011101101011110101100100001111100111101111000010100101111101100010", @"Subtract test 61 failed");
}

- (void)testSubtract62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111101011001111001011001010000000101011010101101011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111110011010000111010110101111000110111000000111100000011100110111111001001111011101010101110100000111111011010101000101101000100" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-111110011010000111010110101111000110111000000111100000011100110111111001001100011111111011111010101110101011001111101010111011001", @"Subtract test 62 failed");
}

- (void)testSubtract63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7321697" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"17436162243" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-17428840546", @"Subtract test 63 failed");
}

- (void)testSubtract64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5283963722515342590727" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"56061666832793383161181797154919929611004999232568" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-56061666832793383161181797149635965888489656641841", @"Subtract test 64 failed");
}

- (void)testSubtract65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3672652015554001573752715126540743452425760671105727517717641110564605473140736743" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"157651761773535526016303406650240353" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3672652015554001573752715126540743452425760670726055535724103362546302064270476370", @"Subtract test 65 failed");
}

- (void)testSubtract66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6406015266125560703752215251173" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"122672636546066656267316424560073273203736476" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-122672636546060250252030276777167320766465303", @"Subtract test 66 failed");
}

- (void)testSubtract67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1255204172610661845494527472846308927544168894507056736321972201594587251933394750054221986577" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"599556722542724843313908451390" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1255204172610661845494527472846308927544168894507056736321972200995030529390669906740313535187", @"Subtract test 67 failed");
}

- (void)testSubtract68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2218a4eae0021712266aa344a4834aa229d3d7495b2fd8856f61fbc4f2150c74ef5423b27c9ac92fe8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1215efb2d6d93ca67acfd99c3c21349d894ce8ba53f294bf9e04cedc8b1bfee" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2218a4eae0021712266981e5a955dd0e5f6c2a4bc16c1672258966f6666fcd4ba35a43658ed2176ffa", @"Subtract test 68 failed");
}

- (void)testSubtract69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1954879628967896" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"51769255074343814175624466127945662141217" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-51769255074343814175624464173066033173321", @"Subtract test 69 failed");
}

- (void)testSubtract70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101100101100100011001011010100101110100111111110110011100101111011001111110111110101100001000111111110100111011110010001010001101101101011110111101000000000001110011000000110010000001010010111110101101101111011100011101100101100011011100111001100110110011000101111101011101011010011010010000001000110011110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000000111010100010101000110100010011010100100000100111111011100110111101010110000001111011000110000010011101001001111111100011010111001011010011101101111100001100100110110010011010001111000110001110011000101101001010000111101111" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101100101100100011001011010100101110100111111110110011100101111011001111110111101101011001110011101001100000111011110110101101101000101100011010110000010101011110001000101101011111110110101110100101110001100000101010010010001110101100000101101000000000000101011101110010111001100000001100010111110101100000001", @"Subtract test 70 failed");
}

- (void)testSubtract71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2360303647407702007512657236306127716540020351204325670725601021627303706443140534635574" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7515333360176232477141331277637415632023606534475075641056" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2360303647407702007512657236276412363157622116505164337425741403775260077706443436774516", @"Subtract test 71 failed");
}

- (void)testSubtract72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"32332365206011432216551467037714560145637731745105" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12743344332726164617" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"32332365206011432216551467037701614601305003560266", @"Subtract test 72 failed");
}

- (void)testSubtract73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1ef8c05b69391" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"102b9d157542b86341c11d52d274de6d2933ca2bbf28e593176019dfa7e246e27003fca64" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-102b9d157542b86341c11d52d274de6d2933ca2bbf28e593176019dfa7e227e9afa8936d3", @"Subtract test 73 failed");
}

- (void)testSubtract74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011101000110001000010110101010011010101100111010111010000101010111101011010101101111000011001010101101011011111110101111110100100110110101001100000111010011101111111001010110001110110000011001111000101001000100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101110100010000010100001001111010000110001000110101000111110100011010010011110111011011110110000001000111000110001001100001111100001011100100100011000000000010111111111001001010001111000000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011101000110001000010000110110001010011000110000111111111111001110110110001101111010101000110110110110000000001000101110101101100000101011101010001011001000001011010110010110001011110000100000101110011010000100", @"Subtract test 74 failed");
}

- (void)testSubtract75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2829249233806992392475396572930385177124758012" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"235372941333634766900665085289179891948530573713710586839546634530527031229627" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-235372941333634766900665085289177062699296766721318111442973704145349906471615", @"Subtract test 75 failed");
}

- (void)testSubtract76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16220343247734031743036607702131711533054462071704100721614443713310041400344030243702302423775406135441501" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7431526616324152454543203515237025063026073107472400" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16220343247734031743036607702131711533054462071704100712162715074763666723600624526443255340747313025747101", @"Subtract test 76 failed");
}

- (void)testSubtract77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"307373" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"420571" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"-113198", @"Subtract test 77 failed");
}

- (void)testSubtract78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"37422443231471500151231276700677431520663224514140" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"104326732" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"37422443231471500151231276700677431520663120165206", @"Subtract test 78 failed");
}

- (void)testSubtract79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110111110010111101011011101010100000000010000000110001101101011011110100011111010101000011100011110001011011100101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010011001111011001111011101101000001100110010111001010100100101110111101010001001100111110100011110110001001110010110100110001001000011001101001011110111110001010100000111111100111001000101010000011010000011011001010100110001111111110111011110111101110001010101011000010011111000100011101111101010101100101001101011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-1010011001111011001111011101101000001100110010111001010100100101110111101010001001100111110100011110110001001110010110100110001001000011001101001011110111110001010100000111111100111001000101010000010110001011100110010111010110010101010111011100111100111111100111111100011111011001001110101100000110111011001110000110", @"Subtract test 79 failed");
}

- (void)testSubtract80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1472346603022710463001715134537230654004642225372" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"360565376777404212425655413240633011147412062007714361711130442413236512062516536314617743200515525356" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-360565376777404212425655413240633011147412062007714360216561637370326027060601401555367067173653277764", @"Subtract test 80 failed");
}

- (void)testSubtract81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111100000100000001110100101101111010010100000110001011000001000110000001101100001011110100000111000001001000001010000000101111111000011010100100100110001101011010111110001101010011111110000001100010101110010011111000000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011101011101100000110111011111011000000100000110011111010011010010111101000111101100111001101010000111011101000111001100100010111101011111000000001100010111110001101001001110111110001100110111100000100111010111111110000010011010011001010100111100111100100100110001101000010110110111110000010000111010000100001010101000010100110" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-10011101011101100000110111011111011000000100000110011111010011010010111101000111101100111001101010000111011011001011001000100001001000110001000101111000010001100110101000001000111100100000101011101100100000010110110101111000011001101001011100100010010111111110100100001101011000101010011100010010111000100001011100010100011100110", @"Subtract test 81 failed");
}

- (void)testSubtract82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10635260670425051575112615463120705303260257741620024216701267105001543144666560561351747627352556304344635" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"32501714512277217526663325630353541033306241035160261014011" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"10635260670425051575112615463120705303260257741565322302166767665252657617036205020316441366315376023330624", @"Subtract test 82 failed");
}

- (void)testSubtract83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"41053662454533517426255245633645505142471675311101145704644653233110233705165172426036342643" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"637613020637263104324535327260427622356522" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"41053662454533517426255245633645505142471675311100306071624013750003707147635711776213764121", @"Subtract test 83 failed");
}

- (void)testSubtract84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"edcc15a4a9b322" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1372add28f7496316da9a458a" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-1372add28f65b970135f09268", @"Subtract test 84 failed");
}

- (void)testSubtract85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"610501703117375051163175466634046140423520451763145662757377237233426561304" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"33200200002001212173004054107016701" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"610501703117375051163175466634046140423465251563143661545204233157317542403", @"Subtract test 85 failed");
}

- (void)testSubtract86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111100111100100000011010001010001111101000011011011111110110000010011110011100010001011001101001110110010110100101011100000010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111011000001100100100110100001011110100100110111001110011100110100110101001001000110111010000010100110000001001110001100111100111101001100011000000110011110001001010011000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-111011000001100100100110100001011110100100101111100110111000110001100011110111001001110110100110100111010000111010011001011010110001111111001001010011101001011101110010110", @"Subtract test 86 failed");
}

- (void)testSubtract87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"404134103121707077161770675301547516176" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"137632107664264353207570255335506373025715107537257251005316024216146530" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"-137632107664264353207570255335505766671611765630160067014420522446430332", @"Subtract test 87 failed");
}

- (void)testSubtract88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"96172885806970470545764438480205396674280557939125073808069071973450971781389253353373" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"59513721086972205493540982923150446139140" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"96172885806970470545764438480205396674280557879611352721096866479909988858238807214233", @"Subtract test 88 failed");
}

- (void)testSubtract89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63237147522322070654746234046234236212103015050443367130216010" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12073735376346246756124746" andRadix:8];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"63237147522322070654746234046234236200007057452075120152071042", @"Subtract test 89 failed");
}

- (void)testSubtract90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111000000011000000111000000110101110001100110000001100110101010110111111111110101100011000011001011011101011000111001010101100101001101111011011100001001011111011110111110000111010011000011010101001000011001100001111000110011011111100111110100100110101100111000011001111100011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10110100100110011001101110101000011101000011010100111011111110110101001110011100000011110000010101000111111101011101100000111001010111011001011101100010001000010111111110100101011111000000" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111000000011000000111000000110101110001100110000001100110101010110111111111110101100011000000010110110110111111001010101101001000001010100110100000001010101010010000100010000011100010101110001101001010111100000000111111011100000110001010010010011110010100111001110100011101011001", @"Subtract test 90 failed");
}

- (void)testSubtract91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9756068624135149969563330798818518" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"543777396532721" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"9756068624135149969019553402285797", @"Subtract test 91 failed");
}

- (void)testSubtract92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"160cc46947a8631a0a7ead18154d9011c0f1a3bc50608a23a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9d4d00a0bd15e44" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"160cc46947a8631a0a7ead18154d9011c05456bbafa3743f6", @"Subtract test 92 failed");
}

- (void)testSubtract93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110111001010000000110111101000110111101101000010000001010001111111011011100011010001101000010010010101110101011101010001001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100110111011010011110101100010101000001000010001011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110111001010000000110111101000110111101101000010000001010001111111011010111100010110010100011100110011001101010100111111110", @"Subtract test 93 failed");
}

- (void)testSubtract94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101101011111111001111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000001110111011100001011010001100100001000001001100101011011110010111001111111100101110010110111010000111111000101100111010101011001001111111100110110100101111001001111101110111011101011101101011100011010010001001011010000110001000011011010000010101100110011011" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-1000001110111011100001011010001100100001000001001100101011011110010111001111111100101110010110111010000111111000101100111010101011001001111111100110110100101111001001111101110111011101011101101011100011010010001001011010000110001000011010101010101001100111001100", @"Subtract test 94 failed");
}

- (void)testSubtract95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"325421666593008791802886971198732587406074633310722740272497094410553143673417283826181228154" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"92572546358300690659287122112496491881664680650335784429041638272238331059071" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"325421666593008699230340612898041928118952520814230858607816444074768714631779011587850169083", @"Subtract test 95 failed");
}

- (void)testSubtract96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110011010100110111011001011100011100000111101101100010011111111011111001101110100110100101011100110010001110100000010111011001110100111101101101100100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011101001010010000100011001010110101010010110011100101011110110010100100011110001000100111010011000100100000001010000110100010001011111101010110010100" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10010110001010100110110110010001100110110100111001111101000001001001010101010000011101111110001001101101101110010110010000110111101001000000010111010000", @"Subtract test 96 failed");
}

- (void)testSubtract97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"289" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"215eba571f91ebe2a56d96a1b9cc25a83ab8e16c92550d0" andRadix:16];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"-215eba571f91ebe2a56d96a1b9cc25a83ab8e16c9254e47", @"Subtract test 97 failed");
}

- (void)testSubtract98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"223141631643316170389430160716441427952387161153272094414803908791190292945707377901734007302" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"913960066044417177970240320352264381397945646090223387929785594837721509940" andRadix:10];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"223141631643316169475470094672024249982146840801007713016858262700966905015921783064012497362", @"Subtract test 98 failed");
}

- (void)testSubtract99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101110101111000000011101101111000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110000010011100000111111111111010000000000101000011100000111101100001000000111010010100011000101110111000100000101111101010110011001011011111000010101011001000101001011011100011000111110110011111011100010101101001101101100110100010100001010000000101110" andRadix:2];
    JKBigInteger *result = [int1 subtract:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"-110000010011100000111111111111010000000000101000011100000111101100001000000111010010100011000101110111000100000101111101010110011001011011111000010101011001000101001011011100011000111110110011111011100010101101001101000110111110011100000110010010110110", @"Subtract test 99 failed");
}

- (void)testMultiply0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"601080321505" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"792851043399729851563515614159704909932996422239035691989475904616636" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"476567160072284327407943892287202957678452557487454305702204329823418280651557180", @"Multiply test 0 failed");
}

- (void)testMultiply1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100111010000100001101001001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111101110100100100100110110111110101111000001001101000110010110100000001000100101110011111110000010000011000011000000111000000101110100000010101001000010001110010111111001101000010111011110110101111011111101000010111101010001001010010100010000000110001" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100011101111100100100011100010110111101111000110111101100000101001101001010001010110001111010110101111001011010111001110011010000001001000100010011010001010001000010110100101100001011101101001110101011111101101111010101111110000100000000101000111100000100111110000000000011111001", @"Multiply test 1 failed");
}

- (void)testMultiply2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000111011010101110000001010101000011011011100100000101000001101101000011000110010111101010111001011000110011111000001110001111100000010111000101110000001100111110010000011011011011010111000100101110001101101000000011001111100100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101001000110111100010110010011100011110011101100011011111110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101001101101000011101110001001111101011110001111111101001101000100011001011101010111001111100110011011101010110101001011010001111101101001101100100101010000111001010111100010110011000001111101111011101101001100110101011011010011111011000101110111100000111110101011010100011011101010000111000", @"Multiply test 2 failed");
}

- (void)testMultiply3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4635106465664461307440623300721742676707473043356454266625176" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11157766402317424706027164620553472655633565672546664764267" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"54240415177152017337521036521444700364712377350765576172635626100123566455421211677646060664065712466707303034301710022", @"Multiply test 3 failed");
}

- (void)testMultiply4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3372133032" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3122615551760755537437400763" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"13017237137427051647247342263731572256", @"Multiply test 4 failed");
}

- (void)testMultiply5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"cc30d21d76a78f6b31e070426941b2a0cec0ca4807b2ee38098968798a697cbbe98b4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f46327e993b9c50893034aa63c12029746a68f" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c2ed9efb14c2867a523fee643adfaefe04c49d397239c0455fc4a176d0ff8342760d3b185d428964963afc2873f5164788053b4048c", @"Multiply test 5 failed");
}

- (void)testMultiply6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5389569624767407006198847527515043931375183511696368136723421482104092" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2648632818869555518615619200" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"14274990987741429823561007764690182705373943754201980982191404953918036148129770803055391433766400", @"Multiply test 6 failed");
}

- (void)testMultiply7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8ae5346670b446436323ed1101165de9ea48bb0f913b5a8d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3df4398eeed23692884f617e010eabdef7e42d01dab144b46636f899" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"219d1f2cefdf64d3c108690c63fcaca7d4aac284a81b3b92c3f38158c6c98d3a70e39ae614e22cbaa906e3dbb31b48bc93efb645", @"Multiply test 7 failed");
}

- (void)testMultiply8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1171626096252678002777552411959844380502259963165166407040513317466285234760471098098" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2259493204920798449743635045325248654627974024290951756306" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2647281203190807307184825640822169001090484281045347435425770084107574512992723951399472790082832814127304538089192406695414393567565516105988", @"Multiply test 8 failed");
}

- (void)testMultiply9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"97000930772622847482318938036779942276814291922420057069427" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9071702916867465963890998910664882540609865653918979" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"879963626628861824384573304709218480901566128704934934661771897119258508217932031292439434726097025316435955033", @"Multiply test 9 failed");
}

- (void)testMultiply10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"828644656822917896724571508684103518603510280645479967396412412136376674341" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"390851525539091499096897343988555407626247853651307679862920961478085" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"323877028249054405149892131996357770455903994962715148311549411912534090902645355829785692271568311219920274662021519953539615475539404053316985", @"Multiply test 10 failed");
}

- (void)testMultiply11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4ee5e65cb19c6332206d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1453e24afb" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"643d046ff1ba1e85cb449b6bf4cdf", @"Multiply test 11 failed");
}

- (void)testMultiply12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"469352ef2c3aa293b242584d43a4658676a034416ef9bc241c0fc20f0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"927c6da2f9bdf575bfaf" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"286252e23b76d86840ac98810ae511934dabd266e7d97e22c489f9174e89f753519dfc69d9410", @"Multiply test 12 failed");
}

- (void)testMultiply13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"31723763651766608935045482827906343649354233097389585787969039388" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"39149258582087420071271221756040290792647954448560906795580530809830422034269082" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1241961826400036867990796080275116251464601630638041464686878335359417081956537085521953811855867146417149633089116326033643031832607360248601816", @"Multiply test 13 failed");
}

- (void)testMultiply14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101100000010110111110001010111110011100101000101100011101011001010011001101001111011001011110011000101111100101110111011010110111101010001100100000100001101100111101101101110101101000011001000111111101111000101000001000111101011011100001110110000011110011001000101100111011000100110111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101110011010000111010001000100001111110110011001001011110111101101010000111110110011001010100010001100101001101011010010010000010111101001001010101100011110000100001110011010001010100111010011000000" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001110010110001001100001010001001100111001010100000111111011110000101000110100100110100000110110000001001100011101010101001101110110010011000100011010110011000100110110010111011011101010011110010110001111111010110111100000111100110111110110010010100101001000011001110000111111011010011111100101010100011000011000011001000011111001110111101110001111101101001001011111010000010000010101010011000101110010101110011011010001000110101110101011101110000101110001111010111010010001111011000000", @"Multiply test 14 failed");
}

- (void)testMultiply15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1483df07ec9bf3d55" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a567f8cc" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d4153bef0d61e6f37e0237bc", @"Multiply test 15 failed");
}

- (void)testMultiply16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2830141998662295516971493728480611689891739801179949251159498608168665374745533521427020555489002" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"174657244996110865474085763382616385" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"494304804434143417409854381392822793469323578208155276126137138968148458185787867808565081016167047839030499937143997540419852497770", @"Multiply test 16 failed");
}

- (void)testMultiply17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"163277057711765636560747447031217015017170155667415437655316770777137" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7237215676720565020372546341703475553736747716372011567267761457600467467522634067670020467677527433525" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1513401757356351454234764232211641316736616642643211617703006736112752224764721721321731200254174752010533741212752401377330537217165256452340012502354275047547302416757213", @"Multiply test 17 failed");
}

- (void)testMultiply18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7cf77f115ce06db5da02ed77a9c68d463a29bf56e7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"addc089134eb30c31a1523bb55895d2fc26b0d78ad98ba97155debf10db98d285aace38a0c719cd446" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"54dea9be8cac138d9c09806676288b912040c37e9cb32afd6768478b7facf7f14c380b0357075ff4d93fdb0c9fd41ebde5e57f4e886e1d4ddd42ca0d0f2a", @"Multiply test 18 failed");
}

- (void)testMultiply19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2177516720503367440652013656" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"36663133" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"105310365350167727600266766762337332", @"Multiply test 19 failed");
}

- (void)testMultiply20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"786710615915762020026509305968980193759180678206130678505355772616149750379362257946054467" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7992095403720473915877454551340260712761519278659500618567661001369992377502793" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6287466297518464753607052145671199762609965964961828743826536394624371461961883652653143670576948909437950067516549435653991216064726166447246763741779984776268622626331", @"Multiply test 20 failed");
}

- (void)testMultiply21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4d94d054c66e98f7ee9945133edd7c7478d82185be0bfb2cb8b7ceb1a06adf" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"270f4f0d352de66e791834b4916e9ee348029c59e4c21d2e8ab95be58512" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"bd64f6a0c28ef724a7ebdeeca806b22b43c7b2e678b345fdf3f9d9927411eab3d948af4aa28154a3da4cd6603172443350046f0834f1faa74b3485eae", @"Multiply test 21 failed");
}

- (void)testMultiply22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10681" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1cce34f0bf702448331a43e6" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1d898e17113d3ca42caea1b99ae6", @"Multiply test 22 failed");
}

- (void)testMultiply23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"582283719617203561056984" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"118855780685595235112714129640334737414923154698" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"69207786075614974321467845913609599373543051744679102159811460625310832", @"Multiply test 23 failed");
}

- (void)testMultiply24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1062373177501511646165645102773765475041567764324721734166126263120" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"536632577002304143241624762636602" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"601313003156510016112645057516532040130446661723645063457560631627333333013110104162060225615602240", @"Multiply test 24 failed");
}

- (void)testMultiply25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010111001100000011101001110101000111110101010011100101100001110010010111111011011110101101100111001100001011011010111100010111111110000101011111000010110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100010" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101001001100000011101100110000011010101111111100111111111011101101111001000101001000101000001110110000000101001011111010000011100101101000100011001100010001101100", @"Multiply test 25 failed");
}

- (void)testMultiply26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"80f5d09412bce5c862a55578b75a6" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8952056d835af70d884861bf42971265bd692d407e7dc1e09ad07566afcebcdfd9d0d91a30145853e" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"452cde18055d677e98eb96b88ea7f6544f7b41bb1d072d4b63ff9f4978f8e1a8992fc3a1d8edab8764dca9b45ebf965db1a9e503a3bc34", @"Multiply test 26 failed");
}

- (void)testMultiply27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3137273430166101750" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1351375045016467554562302540775366" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"4507256200324353724710642723544105222436247645650360", @"Multiply test 27 failed");
}

- (void)testMultiply28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"44654550673350066513650565765633271131145607200665571745575247316707556335143100" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"614252165765067556224371511250622651531316" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"34407645740644564140524613004107661411370202537274503415532254076144567426751010452351217155741601661113633550004724003600", @"Multiply test 28 failed");
}

- (void)testMultiply29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100011001001001000111101101001000100001000011010000011100110110110100101011001110000010011111010000110110010111100110011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110110101000000100110100111001001101001011011111111101100010100000001101001001001001110110001011101001111101010000011100111100110001001100101111000011010111011100011000000010000010001100011100011100010010110101100000001110100010011111110010011101001011100000001110111111111001001100011011110010101000110000001000101101100011101110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11111000100000000001001110110011011001011000011110100011001110000111111000011010111001111010000001100111000011010001111011111100011000011011010101000100010001011110100001011010010000001100010111100010100100000111010000000010111111100001001010101101010111100101001111100101010011011000100100110110111111001001001000000011101111100000111001111111011100100000111101011010100100110010001111101000101001110111010111010001000001100001111100000101010111100001000", @"Multiply test 29 failed");
}

- (void)testMultiply30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"390740926244347445056711299541640" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5790901471708694456582036494240133728668359823412216398120" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2262742204845210053403100557454863255131205212476581138731941976368772622559479247757716800", @"Multiply test 30 failed");
}

- (void)testMultiply31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"70e3145d5173b810baa5796638a75785b8c71b92b978e9ec3a6c5beab8758a69f45cdb6cd1c71a15" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c58d63a34e8a821d46a19472e324d92a035c7040c493995d663da0dac2cdb2396ba27ffe6f1c6da4c", @"Multiply test 31 failed");
}

- (void)testMultiply32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101110101101011101101011111101101101101001001100000010001000101011111110010110000111101000001000110001110100111011100000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100011111001011111110101001000111111000111000000100010101000111001010000101110001110101101011000100010011001101101111011111001000110111010000101011010110100101101001110000001011011011000101" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11010001100110100111101010010011111100011000011100100001001110110100101111000100010110011001000110001100001100110010000001111001000100101000111010101010100101011011000110110101001011101010011000110100011111001010111011111110110000100101010011011111000111001101111001101101101101111011011100101111001001100000", @"Multiply test 32 failed");
}

- (void)testMultiply33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1379389691837574" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5246752498292503307282205504270027537219178704542707736153" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7237316311767717641653324665427118458159717956991762304754050088123612822", @"Multiply test 33 failed");
}

- (void)testMultiply34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5406203192242179598682330361886634102916" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"91602191190163235" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"495220058428638941958901950071072256397508133227829493260", @"Multiply test 34 failed");
}

- (void)testMultiply35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12530124174775300262623724505521273564317724745" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7407012755515626475501410411126" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"120140125775125120701364345336706201434036460254256471272476107617023557626356", @"Multiply test 35 failed");
}

- (void)testMultiply36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"270263147435437465375215513454752747477042656102465515430152041636512732671307740344516727067272205101" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"152702212136073347664646502762052751765153413152275746464564115222362751127765175726162421467717442024516501670" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"46367162544246574755356434306323421053660515236322121760655737117134512302330604425440100432124033074271366601706226044316565202052706724057102565167612617601561425406443412406632474775620341252605056571736120670", @"Multiply test 36 failed");
}

- (void)testMultiply37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2206443046472727015260104247070725566537371761417574512715127205103" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26616334706066200145253763333327143764350566631" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"63426055602136375043564542127210724760223512222210374102163432315531716113663415572566040477671657552710240224413", @"Multiply test 37 failed");
}

- (void)testMultiply38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001110011000001000000111110100111101001101111000100000100001001101010001101111101111100010011010111110010010100010110101001110100101011011001101010100001100100110000110011000110001000100110110001110010000010101000111100101101110011000111100101110110011001111000011010110110000100100110001001100001001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111011001010110101011011100000110001110100010011111010100000001" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001000011101100000101100001010000101101100000111011011000000011110100101001010101100000011010000001110110000110010010101101010000110110100101000000111000111000011111101111111011000111111100101110001101010011010000100010010111001000101011101011000001011100101001111011101001001100001000100111101000110110001011000100001000000011111110011111100110111011000000001001", @"Multiply test 38 failed");
}

- (void)testMultiply39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10430825452" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"27487948926066450233429588889831596027412457043427819741229441610426906412111114333334239779808936" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"286721997281289995338148697041951835836515946630443571481684113321788843989070612440224800318301925325839072", @"Multiply test 39 failed");
}

- (void)testMultiply40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010001011110110110100011001001101000100110100111001111101001010111110111100011111000010001101101101100000011001001101111100011111111001011101010101010101000001011000101111111110001000101100000110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111010010110111100101001001001001110100000011011" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11111001011000000001001011010110001001010101011101110000001101110011100111101100101101110111011010100011110111110010101010001100111001110110110110111100011000001011101011100010110011010111001001110010001001010000111010000000011000001100110100010", @"Multiply test 40 failed");
}

- (void)testMultiply41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63551450250462152666" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3357761025163250363772420237756444256" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"263264556342475465341466103436032022153216131031466070664", @"Multiply test 41 failed");
}

- (void)testMultiply42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010000101010001101101010101101100001110001100010010110100101001000011101100001000000101111111001100110011100101010001111101010100011010111110100011110100111001010011001111100000000010000100000011010110111110110100110101111111000111110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010100100001001011010000000010110000000011010000111111110101110010001100110011111101001011101110111011001100100110011111001100111011000000000111111000000101101010101011011001001101000110100010100011011100011110111010001101000011100000101011011101011111001001110011010100000011010001001011110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001111000101110111101010011011010111011010111011110001001100001000111001001110000101010001101011000111011011101101101010010111010010111101011000110000011001101100111101110110100111111100011010111100100001110011101011100101011011110101001010000000011111100001100001111001011110001100111001010101100000111100101001110101110000001011111111110100010101001110111000000000001101001100110110010000010110001110011001110000100001010001110011010100001001000100000001000000111000010010100110011011000101110111011000010010110110011111110011000", @"Multiply test 42 failed");
}

- (void)testMultiply43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"51" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2664231674173106122" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"164740244445670474442", @"Multiply test 43 failed");
}

- (void)testMultiply44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23206442096930007619196824277174003925540939253204031813089212653194779" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"843508402465902017470903345629439189101" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"19574828900098888023997929050723216392070904946804093938277431306330399539683298352309670177833225430766903679", @"Multiply test 44 failed");
}

- (void)testMultiply45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14274464604103775215372111325235541106537744144247365540767307376037361017063" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1223603730151032363335072325" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"17740077275264660363673321710607652211411664750223720036576227347620234775512614035757765033074776036157", @"Multiply test 45 failed");
}

- (void)testMultiply46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"baa752335f15824958fdeffa7b7e5b032089bd19830711ca45325fbd9d8541e14067fb35f3b959" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"153a180a7feb15390e76b29430ebad51ad90a3" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"f7a152e2df2be5488d81fde35b0597973ff5895de7c52fd22906519c881fd63fa810516298c3e5148135e311e271d144b19ccde0acadc9613ab", @"Multiply test 46 failed");
}

- (void)testMultiply47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33fd9468695623d002" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11aabbce420b6b9a8a6626f9928bf" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"39683639b340e8df3102e90e30fdcd9b3f4b690c6a817e", @"Multiply test 47 failed");
}

- (void)testMultiply48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71750947374172914973290853709873862859215266934041454049177113637448529692128742609180" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4002748622598743539028985618702273960165976360226893261280871887114171331003005026730004281640" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"287201005772125569958557925403570149717605310313084936344347698861537472035139474120891878447391692939331721240896432094771560592757337228737144369127373605844546849490905169455200", @"Multiply test 48 failed");
}

- (void)testMultiply49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23423155242233670107246035244350417166556405522564120241411625256757775677114064706305045176437750" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"572376514503716461341154043762316452260722642653330530721752166170222355344346302514142002674631113410745" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16342715734700575357512263566664264715566755775756771377577534072336067606337436106113267655341240726314221214622512075302025505041106341313052711463020031112346575131331127213332544230154506431662311210", @"Multiply test 49 failed");
}

- (void)testMultiply50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63195792187910089274633299283989287479974397654471" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"929923060540281814534287451020750916635388990239" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"58767224484648982497355988673579515573681067482633605450731189396917524822893542204682578713708569", @"Multiply test 50 failed");
}

- (void)testMultiply51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100101011010010111011111000011100100101011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000011000110010110111010000000110111010000111010101111110000101111110111111110000110010110011100110110010000010110110100110110101011101001101010101011100101110011000110001010111101011011101000110001111" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101101011011000010010000101101110110100001111111110011101011100111110100011100110000001101101100111110110111001100010010100001001100010011110001001000101111000111010100001001001110000001000101110111100000001100010001001111000010110011100110000010", @"Multiply test 51 failed");
}

- (void)testMultiply52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"94da9f0525ed4610c3214d04f4b964b3c6267a7e1bb3bcdc8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11cbac40ef04b1cd5c6c8f3c4626c4a2e2e209b6272c0ebe97e35" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a58f2141513e0d56de36bf1d4cb8710c34a3d2b3ef84017a41b89b67450ca51bcf837994084605f1afd8d5477913815b20a68", @"Multiply test 52 failed");
}

- (void)testMultiply53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001000111000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11110100000000001010111000101111010" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000001001110101110111010010000110000011010110000", @"Multiply test 53 failed");
}

- (void)testMultiply54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5a1107d1adb45452f7fb473367f5599" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"793b186f6c27476d52ec0f90409edcec88deb7cc64" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2aa6d737b49851a3b53ec9f7babf0be64718bc832acfac2953149d99a8d5732f7a0525bc4", @"Multiply test 54 failed");
}

- (void)testMultiply55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5759938992511058438757965289019346536737" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"81307601876891536313191278799888696930006546392405" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"468326826438272879839492767513549740695899707814259767034232915018268593997476158150282485", @"Multiply test 55 failed");
}

- (void)testMultiply56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"979988300495295420362222572887892429317686367225493" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"488291109130147363718142489319258450264775962180932092981696382696628855833529860843731" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"478519574183415943875376372307823031727639077322412860033636236996253289161001088466458423852025296721817327465236095878529605026512434383", @"Multiply test 56 failed");
}

- (void)testMultiply57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111101101101011110101010011111111100001101100100010100100110111101001110111110111110001001101100100100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10001001111101101110100110110000110001100010010000110101010011000111001010001011110011010111001010011100111110011010110010010110000001011010000100010000001111110101000111010110111100110101011001111110101101000100010000100010101001110001011000011001010110101011101010001110001011100001001000111100000110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011010100101111101100110001010111001001001111100101010101001011000010100001110110000100111001010101001000010101111101100111110011100000000100111111001010000000111010000010100101001111101101011101101101001010110011110000110010110000011111001101000110010011100110100001110100011001010101110100110101100010110000010010101110000011111011001100000111001100111011101000101111101111100011000011001011111011011000", @"Multiply test 57 failed");
}

- (void)testMultiply58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110111011111110111000001000111110100111001001001110101100101100111011001100100100011000101010000110110010011110011100110011111010001110011110100111111000111010101100111101000110111110000110010011010011001111101100011111000101011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010110001011111000010100101100111010001001110010100000011000011000100001111011111001010000111110101111000100100" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011000011010110110100101100111011110111110001110000001010011111001001110111110101000000111011101010011111000111011100111011111000100100000110001100000111001100100010100100100100100110010011110010001010001110000111110101011001100000100100110011001000101011111100010010010100111100101111100010001110110101001010000110101010011000100000001100", @"Multiply test 58 failed");
}

- (void)testMultiply59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110000001100001110000001001000010011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010011100010110111110000101111110000001101100001010011110111110010" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1101111000110010100101011001111110100110011101101011101010011010000110101000100001011101001110011110110", @"Multiply test 59 failed");
}

- (void)testMultiply60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2535514474700021527161125426150203347" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"50665614571314570230" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"155470376037200043660532553105646633637671544476414524450", @"Multiply test 60 failed");
}

- (void)testMultiply61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"55022167422572601727766025066576503357705713061275323347472317075041737461107363427" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"124030170036335177763120432064536502633107315605227540065233737122322041254254751263732637" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7311077015501440457326165015740602361147620755276776241010322066656212747670574760754225203567642447345605331321014767744473536313340402703224036115765647775430071743545111", @"Multiply test 61 failed");
}

- (void)testMultiply62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3343124225167035373457160773560467474136753474223534032066704213" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1211205414223441723146622220523042545120630767672117654614" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"4273661521752761773152321461146365152720056300430410551244033352624367462145255732735424445535460666271524366663756777404", @"Multiply test 62 failed");
}

- (void)testMultiply63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"225b21bf0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1bc0b38511dc1f86563884a165e409a04b3219e2e543c0bbdf79d78261" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3b979000896ad04bf7ffe0c322b43e420583a88e5d20e853fdba2e95cea13c75f0", @"Multiply test 63 failed");
}

- (void)testMultiply64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"526277653563727552272721644035076366012064626621742505" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7154771563772732754613165372412665043502347103653456171117502" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"4645401374212611327447137004345067742367335205512066143467531122771206350727753173724452322616546603535467036533312", @"Multiply test 64 failed");
}

- (void)testMultiply65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"ee4de9d3008d1d64bab328717b87b0ec8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6bf8f55867b2158f1520cdce4a1b51257dd9" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"6482509891b9f35ee08f431f0e9830aeec6157648c893081ead77e5c810bde16f2f88", @"Multiply test 65 failed");
}

- (void)testMultiply66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5536549591074151902546783316393126763020881288119037832" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"49333570641606055484012652457167449423293780964605840016217109836069413946254409676264" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"273137760362011792195634780714344609412639302092280226376857568720843559101415117061028926657155343175620096278724077540824744796334288419648", @"Multiply test 66 failed");
}

- (void)testMultiply67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010111111100010100101011101010001001000011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001100001100101100101011101100000000011100" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110100111001110001111100111010011101000100110110100110100000101011010101111101100010000", @"Multiply test 67 failed");
}

- (void)testMultiply68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101110001010110001001111000000000111100001101111100100111111010110010101010111110110011110100000110111011001101011100011110000001000110010011011011001101100111000110100010011010110011000011110000111110111011000011110110101011000011110110001010011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100111100100001111110101001000000010010011000011000101100001100010111101001101010000111101001" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100100010101101011110101011110000111100011110101011000010010000000111101111011101110111001011001111010101001100111010111011000111111000111000111100001111100011110000011010010100111110000100011110110001110011111101011011011001010101010111110110100010110011000101100100010011110011110011101001011001000101001011110100100100100101010001011", @"Multiply test 68 failed");
}

- (void)testMultiply69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16421061365767143332310445541266165717757304360203273226" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1401723107471172266234142727440644" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"25665340343262330722121045144251135012310623671034232072300604235177243334552770064007030", @"Multiply test 69 failed");
}

- (void)testMultiply70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"61f221d62c1e0d7205e481e1605ed29b02d0bdbf007a9e653" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"39040f782913798119ef1e836cdc3ffecad99fce54fb0c8798493cf9b790c1" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"15d0773c605e0551b0db747938625ca5885be337c5a34ea8583551dcab5be49eec708f28fa68eca2c0248957114943b16793633b8fa5493", @"Multiply test 70 failed");
}

- (void)testMultiply71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11e7071eb26c0c77e2f8150429fc5c5a3e28cc3c09187f58a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"ccd49a9cb3e7d316b9195cb9958e3899386afb4e83661671a592d1a4a369a6dd6a43" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e52f7ce4b3f69a87a9c8de29e126d6a551a83264e2bd111e5d7134ca5040db2c7015c6231e213c24f56de4eb5ba9a13d8c0ea80356d8d662671e", @"Multiply test 71 failed");
}

- (void)testMultiply72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"113711831217863759416196267649464044584556855779652763083370170" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"921131262988866172460094070298682628895771855375001118006965517165227604139716524937" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"104743522706487624954942424317207289463012480833186897195694726556248808523998772958214015730655023718606184775332943078304963284711321366806929290", @"Multiply test 72 failed");
}

- (void)testMultiply73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"20725244073265444023135001" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"70675332370131302457452337767565461666521234631175733572504720310172234023" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1702031046121465416273173231013266412606627063124153770364616060532730540750700373412414167222603023", @"Multiply test 73 failed");
}

- (void)testMultiply74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15692620921bc72889a278530eb40366566accd66eb74ec7906d3b7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"28" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3586df516d4571e558162ccfa4c2087fd80b001814ca44f2e9111498", @"Multiply test 74 failed");
}

- (void)testMultiply75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"c81fb96a3f1c00cf4fc2813eda8787c67bba252164d15edcae6a071477ef" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2eae339ac446c115b1f9894a124a450c22715298aea0e815d504b6ac95e907bf5781a3afb20dc1" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"247de1386c033b3d4421f5f9ca12bb9a8276d9a80c5f35cde122e789e71251a752b4c6c7437cea9530e0b8d18928928b44b7dbec1a9b411a591a426b625f7b96b025b38e2f", @"Multiply test 75 failed");
}

- (void)testMultiply76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111111100001101001101110110011110100010111001000001000100010010000000111000101100110111110110011100000000000110110000110110110110011010010111101011000010101110011110010011010001011111010011000011011011110001000001001010101111010101101111101111000110001000111011111011111011000011011110010010010110010010111101011110001110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010100100011010110000000000001110010111100010010011010011101011001110000010001001111011010110010000000001101011000111100101011111100001000101101110000000111001010101000000100101000010001010000000110001100110000001110011111111010110001100000101001011100010100100100101000000011000010110001110110011110000010101110011111111000110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100101000000000001111101111101100010110100011000000000001110100110110011101000101011011111110100101101010111111111111010111000010110111010000011101000001111110001111110011111100100011111100100101100100110110111101111011100111000100000010101100010000001101000000000111000000010101001100100101101101001000101111011001111111100011100110101000010101100010101100100100100010110011010100000000000000111100001010100011011101001001111011010101101010110000101011111101101001000101100111101100001111101101000101001100111110101100100000010011110011011011101001001000100001010101010011000111110101101011100110000001101101001000110001001001111101101010100111010100000", @"Multiply test 76 failed");
}

- (void)testMultiply77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"686736262445381123714164095581332533" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"59381942173061846447968248631621888217413857597829743938247924493148627629536" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"40779733024676245657863489105303991961171382193377818578828099241187442002303440241624456528062405555271948494688", @"Multiply test 77 failed");
}

- (void)testMultiply78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111010100000110011011011101001100100001110001010011111110010111101100011110101001110110110010011101000010101000111101100001110110100101011010000011101001010101101000100011001010110010010101000110111110001011010101001101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111100100101" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101101000111100101001011101001111100111111001110000001111000001010001011001011100111101100011111110011001010000111011010111010011101111101000000011011110110111001011100001011010011100011010111000101111010100100100011100000010011000001", @"Multiply test 78 failed");
}

- (void)testMultiply79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"318872175036320298505624937782854250183500552251587057179880347396135286916862345252" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"19" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6058571325690085671606873817874230753486510492780154086417726600526570451420384559788", @"Multiply test 79 failed");
}

- (void)testMultiply80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8767328596959954995802638335377802413602542862807955935740500853190657860826669163" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1966407656300114223426226085912237463016250745644081454085572233" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"17240142078360993842560937095154953500292965864631023909295774836494224247592619582436047977012797806843090228072191779530976919371944308230150979", @"Multiply test 80 failed");
}

- (void)testMultiply81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110101101110100010001110111010100010100000100011000111111010000010100001010010011100001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110010011101010011110100011001101111000011100110001110101110" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101010010110111101011101111110000100011010001000001111001101000101101111101010110100010101010001010011011011011101101011001111000010001001111101110", @"Multiply test 81 failed");
}

- (void)testMultiply82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29674817343856742190007730295452773362247062141352322400609388092947923164334512867068755" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6096328" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"180907419868239485401725446416617014925920907850066120915862229693905026528581092157871529031640", @"Multiply test 82 failed");
}

- (void)testMultiply83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6141215530471631750370063156026061100541165533464147407274125104151501501556335164107663762543110504024127055" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"13355275326157053073547672666736272111176001242201744130371502047273556506652253" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"106753271366436062572065361307344117116065033322037767614066426414552163674723711760617456566534461376741303721252045171407414631213452027223214532102423461406001077100166012315477662416017", @"Multiply test 83 failed");
}

- (void)testMultiply84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2002443026553662267253034155457261122222355372654352167102667743417645603624173417246312270337550277520752341" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"423565067031365656354154704075604503320630703736454426" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1050656321465245735347613243422742012313302573254564341170572267367412267302476364306626634316100327312155055110131217232611524476522143167602136455667441304102126", @"Multiply test 84 failed");
}

- (void)testMultiply85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111117556250531576067313607117202751635774511746737330462256120677013616404473567645314023" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2257603" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"253330762076713123117432030013204451010556040110547610466065311015756360102416277600714251557271", @"Multiply test 85 failed");
}

- (void)testMultiply86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10158db9c61e5ded48ed835c6e3fe1e189e3f0e4459a9e66ebd3c28ee980c1ea7153251dc1" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"ac9a0cdc7288662238adf2b35694cf03ccaf7d35cc31509ab94d" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"ad828feef3a414a5e0c8cdbf64dd25e0be31e1a3825acb0623acf2b898be8fb9b6272151e44495920b05e10d22b1678bced6018d76f4a32ac84bd0ac46c0d", @"Multiply test 86 failed");
}

- (void)testMultiply87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9253887176316475250911460469233003828565725256947383947750254509198" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"544112870396654" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5035159113832344741092040045980950852845032653805037704871528656641094630351423492", @"Multiply test 87 failed");
}

- (void)testMultiply88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"507118788257891256724677701503811142798999866" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4852658004161987834614968055207647707935824" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2460874046900584297509088365581374732405078866319451945698470068434645072966938512599584", @"Multiply test 88 failed");
}

- (void)testMultiply89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"36b4bb9d33cbed8b6c4a988d41e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"b7a3853dfc800875674b12594104c7498df597095e93" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"273e23a9f99d66e07e505ea5b9cfb7bd500c031aac9b20f3755025801cc5ad0be82d13a", @"Multiply test 89 failed");
}

- (void)testMultiply90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111011001100110011001001010000110011010100011100000100100010101111010001011101101111110001011001111111010001111001110111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000010111011101110000011100100100011011011110111010110001010001000001011010001111010111100010000001001011101111010011010010100110100101101100001010010010010010101" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100000110101101100110010011111010101100110000000010010001101110001101101000111000001010110110001110101001100010001000101011100101100000110110010110100001001101110001011110011001100001001001111001100110001011001110001010101100110111011000010000100101100001011101000111110001101111010101101", @"Multiply test 90 failed");
}

- (void)testMultiply91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011011000000100100110101110111000011110101111011101011100111011101110111001000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011000001000000100110101001101110110000011111101000" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11010101011100010110011011100101110000000110001110011011111000111111010000011001110110001100011100011100001001110010111010101000000", @"Multiply test 91 failed");
}

- (void)testMultiply92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2e09c05df0f28501" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3f77a4ba48e3c88e6d4e1cad64c27fea1b1a99b9fd11f9940ea5099490682fa5d1ca9e3083dab12b0cc" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"b69ea7f496456e4ba4b6e9032484a73b74591bd74e6261b6797307830bc29ae348ddce4a53d6484fd9416789a4c1c4accc", @"Multiply test 92 failed");
}

- (void)testMultiply93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"19ee49c93d420eb3410" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2a9e2e787cc11043f" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4511de193d85e8df193ae4c3342fbc20ff0", @"Multiply test 93 failed");
}

- (void)testMultiply94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"75855331307369372395422275999546089847024166207716105177520590177564936160424656" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3919" andRadix:10];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"297277043393580570417659899642221126110487707368039416190703192905876984812704226864", @"Multiply test 94 failed");
}

- (void)testMultiply95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101110111101100101010011101001110010011000111001101011000111100110110110011011010101000001101111111110110001011110110100100001100010111111011010110011000010010110100111111001000111101" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011000101000001001001111110111110011110000111011011100001000101110010000111000110100010101101011111100000000110100001010101101000001101110000111000101110111101001100001101001101000110010", @"Multiply test 95 failed");
}

- (void)testMultiply96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11101101111100100010100100010110100000011000011000011011010111000001010011100001111000001001001101100000010000011001011110100111001000100001100101001011011110000011100111010110010010110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111100111001110000001011110101011001110100000110000011100100110111000101110101101000110000100000111101110000011110010000010010101100101010001001101101101110011001111001111000000100111011010001001000110011" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111010000011000000001000010100111110111000110001010100000100000101111110010000001010111011111100101010111101001101001001001100001001101011101010100100100001100010100001110010101110010100101100110101001101011101100111111000010010111010101100000001010010101000010101000100111101101011100010110110011011001011000101010101011001001000000011101011111110010101011100101000000010111110110111100010", @"Multiply test 96 failed");
}

- (void)testMultiply97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5715002445305237312360305025161615143314462331626401434563740666366733002166321500233061313705" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2363437722744264305474217170411703772474307426726440467014625" andRadix:8];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16467100123477740664170204225006530127056432406626340503247316231350262146506111456655317332052551763626526762102712323641015034460042375343417377007711251", @"Multiply test 97 failed");
}

- (void)testMultiply98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000110011010100000010011101010011000110101100010000101010101100111011" andRadix:2];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100100110110001000111111111001110000101101111110110001010110001111111110", @"Multiply test 98 failed");
}

- (void)testMultiply99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1409c0f595d19f61df5813757970124e499b0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2e7a954c148b71380ca7c2758d07f2126aa2da32f4d93b0498413a5496a907516e092a76adb1" andRadix:16];
    JKBigInteger *result = [int1 multiply:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3a35901b7c4f6e0ad1e78456b073a13a329a171391f179727cb058d75f77bd841d1041c0eeb015a7a4121c69c54f408035f2b77eb50a32b0", @"Multiply test 99 failed");
}

- (void)testDivide0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"31903189494630280772176962060341575627119769494" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"48395652094654814810634553155926686897262016396476513823426615510412510998861093061634636219" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 0 failed");
}

- (void)testDivide1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12975aca6c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"142ea7d081b91968462d8e29f48a542ff277689d60f7" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 1 failed");
}

- (void)testDivide2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"f10a04b7d703b1c1b15826b07b51c5e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"cf3ee2e8cc93f42b6b90a18973bc1318b6da296e174240d7c" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 2 failed");
}

- (void)testDivide3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11756106471175110157520" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"376612736421320544754341067371" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 3 failed");
}

- (void)testDivide4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"240764" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"423261714717254352642676354610002514744" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 4 failed");
}

- (void)testDivide5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"339242741803183674598472896976068" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"380603150338784543095740796570484543948944116603393171729390634415761052741900019824450358854" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 5 failed");
}

- (void)testDivide6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"31cb1910b140064939628c7cbc508c136dd47e503730a477f6937bcaecf929cb8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1473f176264a5" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"26f3dd283a919745dcd15741dd6e19b9e90a129116c90216b918f", @"Divide test 6 failed");
}

- (void)testDivide7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10110011100010011100001010000000010110101000011010010010010100000100101100110110011011100010101001101011101001101110001010001001000000011100101010010" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 7 failed");
}

- (void)testDivide8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2125306216256305122543217152540066234176151702017356411002220022761040300547347017311201136421323037" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"605071705332456311272212753772441520532562" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2663576007764417715512752542301336503264663450712467407610", @"Divide test 8 failed");
}

- (void)testDivide9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"684959218029788839279144210355345925785665879104879455650407558585590" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"48851573678479507248934153686122616200096320961544007767200093487769723981942460863111439814784" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 9 failed");
}

- (void)testDivide10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26022420043153715315514137047176503662413406056263551245235535520" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"67733326771362263660426174574416" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"311566261403620107670277607711405", @"Divide test 10 failed");
}

- (void)testDivide11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111000111011001110111111111100001101011101010111011110001100001000000010011000101100100000100101011011000110111110010111000010010001010100101011011111100101010011010100101011011011111100101000001110000110011011011111000000001101101100001000000100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100110011000000100110001000111111010000110111100110111110010100100101010110100001111000111011000111001100110001001100111110000100010010101110101011110111011011011101010000111011110000011101101001000111011101101000111010101000110110101111111000001011111111010010010110001011111100010" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 11 failed");
}

- (void)testDivide12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"246737406722652052" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"25676716735324007533366236755774456073575130256" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 12 failed");
}

- (void)testDivide13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"664452343354127672177474" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"500205430276645757615115665174222347676345452725622451" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 13 failed");
}

- (void)testDivide14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"bdafa14f923e2d333e8a8ad536b8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"13fd2337162a58fffa5cfd55fd4a6bcb30db96be9613e8015b0c6dd65c642d7f74e5e5ec07c7e635" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 14 failed");
}

- (void)testDivide15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011100100000101010001101010000011010010001100001111101110111000101111100000111011100110001001110111000100110001010000101001000100111011011111001110110100111001111101111101101001101110011101111000100101011111000011001110010000101011001101000111010011101101111111001101101000010001111110100010000001110110101010101011010101010110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010111100010011000101111110101011011010001010111001" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111000001010001101101100101001011011011101110100110001100101101000000100110001001001011010000000111011000100011010111101100100110010101101100011011111010011011000101100001110001010001111101110111000001011001100001111010001011110100010010110101100011101001100010100010101011001111", @"Divide test 15 failed");
}

- (void)testDivide16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"ba2deab65e0644722ef47ebf3a8ad246d8d14037d513764b2ad09407738954a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4bb5d36a349f98a2b40c" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"27587cf86eeb5ecb4e2bd2edd54d532da12145787978", @"Divide test 16 failed");
}

- (void)testDivide17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14618481511734980577032284045442761746441962534019483962784677444109920164" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1468925779060216795998746274572358083171609514478560247428342676468785362744765524809377591869562" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 17 failed");
}

- (void)testDivide18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"74946345102447575207421273931380605772055926" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8867870418834847248287328793679875350204659583934107644552460135771022897" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 18 failed");
}

- (void)testDivide19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"d2bd6a405b72a550bba972af504d71226ddf" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3cf27a2" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3752ee4e21cd9a054b320e4d93acba", @"Divide test 19 failed");
}

- (void)testDivide20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"588210127467084802852028256759454750034863628" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8916433038038037734744230956714480965975909920792968152060130019936011649008754556900962682708" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 20 failed");
}

- (void)testDivide21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"425d79" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f839939d1c51" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 21 failed");
}

- (void)testDivide22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2222471427103717710004142304042365706550242107" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"107257716022342501017320017066105536706470427110025676747040364463061647243506365211766" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 22 failed");
}

- (void)testDivide23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"45660505515250250361104502703064625224330320674656633367604336" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"23447232140041012" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1735616041061053601354257200341521275525017030", @"Divide test 23 failed");
}

- (void)testDivide24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"81699071676589641191764844347664" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"487995070248498298849881117505379773997403327728516681395841679472667815203734285019522" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 24 failed");
}

- (void)testDivide25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101010000010100000010010101111101010101110110010100111010100000010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110011001111011100000010111010011000110" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110100100000011011001101100", @"Divide test 25 failed");
}

- (void)testDivide26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111110001111111110010001101100011101111111011101000000100101101011111101010010001110000111101111001111000010010000010011000011000111000100000100010110100110101100011010111100100111000000101101010000110100110110101000101001101111001011001101111001100110101110000000101100000101001101111111110001111110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11110010011100000000001001100101111110000101000001001111011010101100101010110100011111101010010000101101111000000010010101001100101110111010101111001001001111100111010111101101010101111001001011100011101101111100101011010011111001110110000110001110010" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000011000111100100001011100101011011010000001111000100", @"Divide test 26 failed");
}

- (void)testDivide27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2ffbaaf5396df94ea8db6537ba93edef6f408d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"93ae2f3240139c882e764ad9bb6fc38d7383fc6cc44716cea607146" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 27 failed");
}

- (void)testDivide28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"77761014850912725893157" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"125189997487423253173" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"621", @"Divide test 28 failed");
}

- (void)testDivide29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"40265193898169038592263047980208061411620769523487215009005544893719056440652195" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9202692" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4375371238999310048870813885785600714619240709510566583017832705225716175", @"Divide test 29 failed");
}

- (void)testDivide30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111000011001001101011110111110101000001010011101001110101001111001100010111000110000010001111" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 30 failed");
}

- (void)testDivide31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"59356280104377891898581975301858253724815" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"588230007666" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"100906583021654839866337950948", @"Divide test 31 failed");
}

- (void)testDivide32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"737561409024534386045942875255884932217684498986" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2239837199628644494949518889811" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"329292418728833925", @"Divide test 32 failed");
}

- (void)testDivide33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7156736335" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21264752666560523121206541433131740314312234320134656462656063055233760533232561402" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 33 failed");
}

- (void)testDivide34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"18fd7308e5ad4d721bf8f1bab0f71072611089dd59676d6658ea96912" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5cec8c9efc0e3bc44653f9e27f6827b56582a48dbad1a74930c512c0278a0f8e485fbb12469dd737" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 34 failed");
}

- (void)testDivide35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"126142747315351157530176167337605546357536263045462715572" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"23545725606663263656114727721145260551137263244761717061554055743334110632307072420112704313" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 35 failed");
}

- (void)testDivide36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101101100010110011010011010100101001110100010100101011010111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100110111110011101100101100110001110101" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000100000101001111100", @"Divide test 36 failed");
}

- (void)testDivide37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33331476603025646075022242773301044424150504632362422712413262464262127336351207113103432" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"54234160205476214612166730663675037524777" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"474734137123333525177732027263141560041712653770", @"Divide test 37 failed");
}

- (void)testDivide38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110110111001010111111011011111010010010011001100110000010110110000011101000111110101110000011100100101010010010111011001110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110111111010001100010010110111000010000000111100111011100110001001110000010000111001110111010011111110100011111100100011110110000010011100100001001000010111010000010101111110010011101110001111110111101011110010100101111101111111011000111001100100111000110100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 38 failed");
}

- (void)testDivide39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"324573606241166347712152305153564027137" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5045603534642253155503470505560610557510" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 39 failed");
}

- (void)testDivide40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2225313474770334541" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11051165663442400425045125745535103256327306737366360605713513355321312010240066757" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 40 failed");
}

- (void)testDivide41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000101000111111001111110001000001011011100000000011001000000101111100101010100011001110110001011010110001111101111001001011000011001111010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001001001000100110111100111111111111110101010001010001101110100011010111011101100101110001100000011110100000000101010001100100100100000111101000001100000100111000011110001101111010011010110000100101101110010011100111011111010010111010010111001010110100100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 41 failed");
}

- (void)testDivide42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11367742637166117142733655435507777467767753121052105055025515212313211061354676374722" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"562564230572472147126121275100116141133122044640544232025635657771322053455402062217" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15", @"Divide test 42 failed");
}

- (void)testDivide43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"86" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"839431730702540077892479258430662800796960391931696910992126654713950373272662165" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 43 failed");
}

- (void)testDivide44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"86420950645267898981477033352896161485947043867809090451117588955415312988167013436847480" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"618967583833980453109333685190307432650007753536840254745080317609080535115327476018430475" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 44 failed");
}

- (void)testDivide45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"648a80cc0eed686135dd5cc7a3e7c07a1b93f16e2a370324fa4257f8a553be353c89ea4aada" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"c7b5517c93c3487" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"80e168b7ef7fe0dcbd1cecfa4815782332184d7e3b12440d219223ce6fb8", @"Divide test 45 failed");
}

- (void)testDivide46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"223467525703463517562754616132650631322334472437" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6115" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"27777744256167222346305406223611071746034310", @"Divide test 46 failed");
}

- (void)testDivide47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"20441276126026440755652273443452537602173233045201665023" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20273573366644717507641723217305653724510513342132673633222462501234136755406307242555162" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 47 failed");
}

- (void)testDivide48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"237015265472176666746154026566624204146473607001401633242104073045146273452071450346" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7652364650745624676003224320402104564534020" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"24232550345145752154600350171472060640442", @"Divide test 48 failed");
}

- (void)testDivide49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"d083f068ab67fe1e972a13257a5beacdd8f6e334a9158f017c942" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"83a132415f9b8febc89eb7ef9372beddef0df10d01cd712db07c1057846" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 49 failed");
}

- (void)testDivide50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"474145077647540343160340715531351555412107735427354117520335422074402500055340214" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21255531321503" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"22170645436230500652274665704207710505217046371310244135703054051207", @"Divide test 50 failed");
}

- (void)testDivide51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1169097538532642372543607603514791403717291975000833721275916403624187265104706488559072" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4032096298070895587819281883039293999262897622184228626772182" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"289947821705543589000580152", @"Divide test 51 failed");
}

- (void)testDivide52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"142099899762236998941170444734842298561609159735340363664788560" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"346551437755206747411807874345531652353167621000636943291161446206965947787339429" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 52 failed");
}

- (void)testDivide53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"155330051524606370507445114724512311314513226745310375300770441330" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"104142357560" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1465436552323234451614072511374152507026433474610556002", @"Divide test 53 failed");
}

- (void)testDivide54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"ee413a446f67555eacd54a006ddd529ec6cda3731709e3f0988b441f33eb193ba6ad" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"23cf03585482d4c6e426b4b7d44a3d0a3ebb73ec46d335110015cfcb19d4e831c" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"6a74", @"Divide test 54 failed");
}

- (void)testDivide55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"730133104035066666434707365225463575754456034" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1230306016322220142022467403402453143645035111327002724452042501315055510663704053731620144322633542277701" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 55 failed");
}

- (void)testDivide56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111110111101110010000011101010010101100111001011001011111011010111111000001110000110110100000001110011010011111011011011011001011110111100111010011110011101101000110101111101110000010110101110001001010011111100100110010101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10100001111111111010000111110011011101110110100010100011011110110011111010010100011010011001010001110010111011111101000011111110001110101100111001010101011101111001010110111101011111011010101010011111011000110000001111011111101111100011" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 56 failed");
}

- (void)testDivide57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7afd92dcd314ed31997017f8d8d4c7661df3386d7f47ee7dc556e65" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3ed90cb53794017aba439481f" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1f4fb1d7577008716bca31e00c45606", @"Divide test 57 failed");
}

- (void)testDivide58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a3ba5d90191a34c510abb66c9b021f02f27173e2311f35ec13474a74c4892bfb29f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f5372d3415df137f631b3e69" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1b62ffbb2166056e120c864f031fdc63fd547d9b420f", @"Divide test 58 failed");
}

- (void)testDivide59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1f16222" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9e2bdb40a5d8412750c7f98082d" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 59 failed");
}

- (void)testDivide60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110001011100010000011010000000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110001011100010000011010000", @"Divide test 60 failed");
}

- (void)testDivide61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6878d9d27298d10f039777e20395faf2aabc938cca87b7e3a93d62422e739a158b55e8dad50" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3164c992e2417" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"21d7679312f9a12382eb22ca955278289748d8c2801302d3ce586ac81ba3877", @"Divide test 61 failed");
}

- (void)testDivide62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"94efa3ed05168ff1d0772b0ce4fa4bd91252401" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2e485e495c99ef435" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"337cc961f2bce840a2577d2", @"Divide test 62 failed");
}

- (void)testDivide63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000010001111100101011010100010100111100101011100000110000000111111011101101001010001000011011011010100111111100101100010000010101100010101100011011111100101010000001100110011000000000000110001111010110001111101000010111000100110011001011011111000100000010010010010100100011100110100001111010101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11010100011110010010100001010101010010010011100000011100011" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011111101000001100001010010100011111011010011111011110101011010010001110110110011101011011010000001011100010000010010100101010100110100000111000110010110011111101111110001011101001010001100110001110110000010000000110101111100000010110", @"Divide test 63 failed");
}

- (void)testDivide64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110011101011001101001110001100001011001110000011110001101010111111101101111110100000110100110011100110101110100101010001100000110100110101001011010000101011101111000000111000110100101111110110100010000010011000111110000010000101001100000010111100001" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 64 failed");
}

- (void)testDivide65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101001100010000111000011010101101001100101111011011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010111101111101010000101100101011001100101110100101010110011001101110101111001100100110010100001010100101010001100001000111010011100100100101111001010101110101110011000000000101001001110000110100001000111110000010110010110101101100101010110010110110" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 65 failed");
}

- (void)testDivide66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"83593093334042247548279097724516148" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"28621890462254791401503781640485280826310757533107714397023421752" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 66 failed");
}

- (void)testDivide67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"79949369201558339201943749757152264836347426175429534058925349301233283418740589682107802991" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"71193480794009164230011636286775467271034185797187717690322967374594249" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1122987221721654761668", @"Divide test 67 failed");
}

- (void)testDivide68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8c0b428fb99ec885fd07fba0478573b35dc922fa0d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2532ea35268a" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3c3c5bc45f7eefa71a57b35c8c75590", @"Divide test 68 failed");
}

- (void)testDivide69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63758692178234055133895" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8697363833403972475785789392870042802468518782875101315046798515719823744" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 69 failed");
}

- (void)testDivide70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101100001111000010101110101001110010010111010111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11011001101011101000000111011100110000101100010000001110011011010001111111100011001100001100000110111000101100100110000111111000110010011101100011011011101111000000111000110111101010001001101110111000101000000100111011100110110101111010001" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 70 failed");
}

- (void)testDivide71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"726375076160133536031505127311354711332465135361101445413406315374700603555762362337065511336" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2573766746002107066124736375172346624" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"253450127151611071126444731366045674157144032301213220465", @"Divide test 71 failed");
}

- (void)testDivide72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"219283444627328580273545175085014044788881783621321779707332359" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1856384569885279275379099320652532587029917383588858300332385648539171743914727218831780" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 72 failed");
}

- (void)testDivide73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111000101011010011100011011000001011010111001010111100011101111100001000000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101000111010111100111111010000010000010100111111100101100111001011100111011011111100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 73 failed");
}

- (void)testDivide74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111100010100000000000001000100000010010111111101101101100000000100000011000011110110000010101111110111110111110001111011101110110100001010011000100101001111110000000111101100011010001000001011010010001111010001011101111001001110111000011110001101101110110001001011010101000011001000000101010100010101110101111100000010011011101" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 74 failed");
}

- (void)testDivide75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"167557471156706630462470743" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2356452626713076124735675201435524515451034020141442600307467423724060461435030576312603" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 75 failed");
}

- (void)testDivide76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"999f93bac00f38f8c753cb97626b7258a4a524fcdc96ce632e7b06a16d66df48" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7036746b9a7fbb80ed35aa8ac5f14a758c1e407472ef14c82c9846182e3ea7e9882647461ad" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 76 failed");
}

- (void)testDivide77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6135829504322807694323702103810980966248181669646837582746076017076297796353367955829596844040991827" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"156499249616825901471219782271484538086148888556" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"39206766290227109866724879240747149728597600479862759", @"Divide test 77 failed");
}

- (void)testDivide78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101000000111101010101100011110110001010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111101110000111110111101011111000001111111111111010000101110101101011011110110000101100011111010100001010100100101111101110100001001001111100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 78 failed");
}

- (void)testDivide79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"89702185087304998026117761563815124" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"28714000465599386793128373022126985855361201812650737936688459198946240321870843" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 79 failed");
}

- (void)testDivide80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"376363557223660076102611037730136224272645156456771516546644155507200306105275502224663375417314054375333044506" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"766101341727533434406605" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"403365260053364116063770441570640447675042270065456013470026740445104012606114166420444", @"Divide test 80 failed");
}

- (void)testDivide81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1061937b350335b61df862007de46db6e581e41a8dca637e5c4333cb7cd9d1606eef5256493" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2f26351a0b92ead795b2587627396d82693fdc6cda3ea3736e2dca181bc2f2b382552" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"58f14d", @"Divide test 81 failed");
}

- (void)testDivide82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111101001001010101111111101110011111111110101010010000000010111000110110000001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10111011001101001101000110000101000101010100101001001101010001011111101111111111101000001000111001100111011011100100010101010010011100011110011100001001110100001001000001100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 82 failed");
}

- (void)testDivide83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16a3afde4f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"117cddbd5da474d304bbc9326085746338297d66c3e7e8" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Divide test 83 failed");
}

- (void)testDivide84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100110101110010110111010000000000011010000111000110101110101011011011101011111100011000100001100010011001000011010100100010001100101011011111011100101011100010000010011010110100100011010010101010100000011011110010000001110110100000000100111010111011100010001110101000100000111011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010101010010110100001111011100101001000010010011011000110110011111100000000111101110110110111100010100110001101110001001010001111011011001111110101001111000010101100010000101100110111111100011001101011110001101011011001011100" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101000011101000000010000110000101011101011001000001100", @"Divide test 84 failed");
}

- (void)testDivide85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4006477250755301125413279137224080886671969833893387119132884192" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"56069456021753037791371968262039592467012291" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"71455611219073081682", @"Divide test 85 failed");
}

- (void)testDivide86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111100111000001111000101011000011100100000100001000110101011000101011000010001110000111110011000111011001011010101010011010000111000111111011010100001101110000111010100111010011011000110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110001101000100110011000001011010011001000101100011011110010110011010101010111100000111011011011011100111101001011100111001100110010001011101011111001100100010100010010011000001011001111110111010010110111000010001111011111111101000111101010101000000010011000000110" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 86 failed");
}

- (void)testDivide87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6074040500100146464305415477231164762537237504250767475475537" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"371201365646733035077221142276101504261720204454441662605500145170746400347077" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 87 failed");
}

- (void)testDivide88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"343944365538349811236836733661170580362627355" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"894227427373783074" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"384627394563891632181098858", @"Divide test 88 failed");
}

- (void)testDivide89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110001010011011100101100101100111010000011010111101100111001001001010001100010010000010111010111110001111101010011100110011001000000011010000000100011110111001101000000100001000000111110101100111000000111011100011001011101100010101010001111000100010110110001010010011011110110000100111010001110011010101010010101011110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010101001101010000100100001011011111100010001011010011100010010000011111001001010000101111101011110011010010101000010001010111101000010010010101000001100010001000101010101000010100010111011010110011101011101111011001111001001001111" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101001001011110101000000000110110110011101100111001100111010111010100000100001110110101", @"Divide test 89 failed");
}

- (void)testDivide90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100a0309ba140306b617fd3da746a4901badf3900379019b5c9d84cb577900ec18a7c5bf490fcb40442f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1f5a8e9274d38e7803557b1fd83007e4c92410b7316143f6b6c154bda6d0d6c" andRadix:16];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"82f528992a608b7154b20", @"Divide test 90 failed");
}

- (void)testDivide91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"332558450745782256537381366867444883840094351123617714310877309471393066802542212702800458" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"85887812012284985677069618709828226073758" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3872009810870658475609581069169016410257615243389", @"Divide test 91 failed");
}

- (void)testDivide92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1406152600750702074" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"154650721301303225724352610065644320604317016124216233764474001040765362731115444070" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 92 failed");
}

- (void)testDivide93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000001110101011011010011111100101110010001000100010101101111101100001010001111001110011100001011100000110010110100010011110111000101110010001010100101111111100100100001111011100000110111100011001110010011011110100010100010111001111010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110000100100011100100000101011001010010001111111001001010001100111110110111001000010001101111110001110000101110100000111100000110000110011000011000000110101000111000000100001000001110000101110101110010111011100000010100001110110001010000111001000100010000101110001011111110011110101010110110101110000110101010011001001000" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 93 failed");
}

- (void)testDivide94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001001101000000001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100000111100110000110101110010001011011100101001110111101000101001011010011010101010110001110111011000111110001010000001101011000100011011101011101010100011010001010100100110100101000" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 94 failed");
}

- (void)testDivide95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"455272111874614094858015200102956275164166693646056188715550176801888324669784837772" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8434830023725959533120581062824238375107371992570073500223506736139653183" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"53975256240", @"Divide test 95 failed");
}

- (void)testDivide96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101110001101000010011110011010111111000001110010010101100011011001011100000111101101111111111100110110111011010110101010001110110011010100111001011100111001111100000100100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11011100001011011100111010000001010101100010101110000111101001100111110001111101011011110001100111111010000001000000110110000100110010010100100011110010110111000100010111111010111111100010110000" andRadix:2];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Divide test 96 failed");
}

- (void)testDivide97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"125600123763762746226266525214236735116125772671503337502061237235314310661601236300200740375373104062025505165" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"25520510024242715457103656215635652067420570627773400141356157016360145627263020277155634362733202212467" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3753150", @"Divide test 97 failed");
}

- (void)testDivide98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"21534504474253706600761233" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1274364704772501735756101737463376113266700665217621132547253007047476665257" andRadix:8];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Divide test 98 failed");
}

- (void)testDivide99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"153355556435880779814049981468009436096299040770529697273991020311740678393227" andRadix:10];
    JKBigInteger *result = [int1 divide:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Divide test 99 failed");
}

- (void)testRemainder0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"714842231212387692301435923697324578198169793343078973420461419833531187558854937497606996940" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"35786973505255775831558567388201945397472003934621834438246726" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"30641315417028530870809308759982894254982688200651853509752692", @"Remainder test 0 failed");
}

- (void)testRemainder1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7056374821746091940662942796772942294570075" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"414443142006811880006087741597354630821447113638067558241313591047428866935735" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7056374821746091940662942796772942294570075", @"Remainder test 1 failed");
}

- (void)testRemainder2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"95676869607422503300213013884028892646801778043873430431928712600127792996992526660241023" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"58766572736740142356714688840607542208088240510578500354157794565341244554241428109091" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4889192009551543481500451519813932034122492651631855359823047752246862687481698640875", @"Remainder test 2 failed");
}

- (void)testRemainder3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111001111100010001100111110111011110110011100110001011001011110010011010001010110010110011110000000001001010010001000100110111001011111010101001110000100000010010001101010001100010100111110010110011000110101010110100111011010010010110110100111101100111110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11100001011011011110111110110000100000000001011000101011111110100010101001100010110010100101001111110100111011010101011001101010101000000011100000101011100000100011100110110001010111101101010000110001100011110111011000011001110101010111111011111010100011001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111001111100010001100111110111011110110011100110001011001011110010011010001010110010110011110000000001001010010001000100110111001011111010101001110000100000010010001101010001100010100111110010110011000110101010110100111011010010010110110100111101100111110", @"Remainder test 3 failed");
}

- (void)testRemainder4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"164462211200553" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"151643067260236411634125324221714372110652165027640565042257000644564302244042046" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"164462211200553", @"Remainder test 4 failed");
}

- (void)testRemainder5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110111000011110000010100001000011111011111101011010000001011001001011001011100011101110011001100001110101100010001110110010000110101010000000011111010011001001011000110011100000010100111101010001110100111011010011110101011111110101110001000111100100101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100110110110011111100011100111001010000001011010000010100000010001100011011111111101011001011110100011000101100111110100101010000111100010100011000010111010110001100001010011111001100000001010111101110111001110010100000011110100011110001010100001001000011110111000000000011001001000001100010101000011111" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110111000011110000010100001000011111011111101011010000001011001001011001011100011101110011001100001110101100010001110110010000110101010000000011111010011001001011000110011100000010100111101010001110100111011010011110101011111110101110001000111100100101", @"Remainder test 5 failed");
}

- (void)testRemainder6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11001000001011111100110000110010000001001001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000101010110100111110101001000110001111110110000011000001111010111101001111111101011101000000101110111101000011111011011001111111110001111100101111001010000110000001110011001110010010111100100011001011000000101011111110110010100101110101111100011000101011000" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11001000001011111100110000110010000001001001", @"Remainder test 6 failed");
}

- (void)testRemainder7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1882119001293306278440516198270031577596562057871725061184814657121674077710" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"45555132296330314636499763811504396453352639787707908539699064183443975563239235535148" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1882119001293306278440516198270031577596562057871725061184814657121674077710", @"Remainder test 7 failed");
}

- (void)testRemainder8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"35166909677081114922207187950719797862590607824800678350578456975310102246054278612735534838" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"996680326741003028791094731102065018383176738918770108914035593732066508513098822540199730864744" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"35166909677081114922207187950719797862590607824800678350578456975310102246054278612735534838", @"Remainder test 8 failed");
}

- (void)testRemainder9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"52251722276" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110463723135352032040217226434136113714374600406156131534700" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"52251722276", @"Remainder test 9 failed");
}

- (void)testRemainder10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"89156609444837947175883212776625086776006303996" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"61898778494773280083299082162815984101683288038549" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"89156609444837947175883212776625086776006303996", @"Remainder test 10 failed");
}

- (void)testRemainder11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001100110011110010011111101110001101011110111101001111011011100100101001101011100101101111011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000101", @"Remainder test 11 failed");
}

- (void)testRemainder12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010001001100101000010001110100110011101000100000101010000001111011000101111111110111100001010010100111000000111011101011111111010111110011111110011100111100011101000110010110000111011001100101001111000011101000100010101010010111101100111111110010111111011000001001111111101011101111001111101111100101000101011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1101001101100110110011001011100101101110101010100001111111011011101101110110110101000000100101111000100111101010000110110000110111010101000100110011001101111011001001101001101101001010101011011000010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100111101110101111101000100101101011100010100011111101111011001100101000011000110101101011110111100000101111101000001000000100011110111000111110010011110011001111000110100001101001011011101101011010", @"Remainder test 12 failed");
}

- (void)testRemainder13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101001001100010001101000010100111000011000001001101111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111", @"Remainder test 13 failed");
}

- (void)testRemainder14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001010001011110110011100011111001011011011000110111000111000110000001101111110101110101101101100010100101110110110001100111001100110010000001011000010100110111000101100110101010011010010010101011000010001000010010101011000110110000011101000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001110001", @"Remainder test 14 failed");
}

- (void)testRemainder15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1270645057121516524242436475703267106567651447741620616231335741306346157617513227707" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12042611063100540030" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"304220241324103457", @"Remainder test 15 failed");
}

- (void)testRemainder16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11ff84a0f3ef22b03e755bf7c119a69cb03aa09d13257bbb803ec8bb97ab1b09918fd21caccc226f4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"121774a4a1" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"468b8fdbd", @"Remainder test 16 failed");
}

- (void)testRemainder17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100000110001101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110100100000111100111111010011011000111110" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100000110001101", @"Remainder test 17 failed");
}

- (void)testRemainder18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011100011011100001111101010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001010100101000011101100111111100111110101000101100110000101001110111101010100111100100101010100111000011101001011110010101110010100101101010100000010011001101111011010101101001101000110111000111111011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011100011011100001111101010", @"Remainder test 18 failed");
}

- (void)testRemainder19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"37fbae264a8e0fdb7a566ae3c3f1d3cf6590b1fa502dcdb4f979e0c0af4992582" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9f5736c4" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7e630f96", @"Remainder test 19 failed");
}

- (void)testRemainder20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"484834264579862000462728920959569321355" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"73342025857973851033899717820925962997535374582517658322213099542335387095997158968912732620" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"484834264579862000462728920959569321355", @"Remainder test 20 failed");
}

- (void)testRemainder21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110010000110000110101101000001110011011000101110011001000101111011001100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101110110011101010100101000101000101101110000010100110000101101101111011011101100010111010011011101101000101110011100011111101100000100111001000101110111100100111011111111001011010111111100001010010000101100100111110001100001001111000101011101111110010011110110100111011010101001101101011110010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110010000110000110101101000001110011011000101110011001000101111011001100", @"Remainder test 21 failed");
}

- (void)testRemainder22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"743812" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"336682450080470247399650395415703477290046541022577704358798120081442491760668132451347904153904806" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"743812", @"Remainder test 22 failed");
}

- (void)testRemainder23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7688069502775120158987443502221950454634877642284594918788498787939058081152" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5821143278411238065230621777945830092354861124778688888007694459899187878553" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1866926224363882093756821724276120362280016517505906030780804328039870202599", @"Remainder test 23 failed");
}

- (void)testRemainder24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"764a2f8639f88aae840c7dbbe6e35a7deb1a3232dedbf71dd0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2ab99508e7f3beb3b789fc4ead4363e82fb1187e7f6" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"22b609951671ba427c9cb23872a5d907502d9ed0c3a", @"Remainder test 24 failed");
}

- (void)testRemainder25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1270276617142045152312174" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"104745037141570177364056342261661326760204574252274775032025632677055222474756370515275061405531" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1270276617142045152312174", @"Remainder test 25 failed");
}

- (void)testRemainder26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2e192f7b31cdbb9c1f31b1bd7178338950a707bc86f802e4db9265b1b7b28d0b923a9f8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4fb08938743c0142ec5f07ecf4b3dceaec75fd" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8043e5018db9abff4fac8184a75a3f2eef414", @"Remainder test 26 failed");
}

- (void)testRemainder27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5626033047527103411763001307237746621774013474345332244727154747745047242417546346436213514202526144027" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2265652550163747173217572722672562146777336355031477426340062502066560076601356430155744" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"225442545272463463147357262402242075673311323731054432377731515157516727755265654231013", @"Remainder test 27 failed");
}

- (void)testRemainder28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101010110011100111111001011000100011011110110000111100001101010110000000010111000011010011010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101001101110011110111101100101010101011011011110011111110101011001000100001100110100100111101101000011110111000" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101010110011100111111001011000100011011110110000111100001101010110000000010111000011010011010", @"Remainder test 28 failed");
}

- (void)testRemainder29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001111101010111100101000100101111000000101001111010001000111000100111011111011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000111000001110001000001000011101101010011011100101111111011001011111110110100101111100011000111000110001110011101110000001101100111101001000001111110010000100011101100101000110110001001010000010111010110111100110001100000111011001110000010111010000001000100110101010011010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001111101010111100101000100101111000000101001111010001000111000100111011111011", @"Remainder test 29 failed");
}

- (void)testRemainder30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100000000001011000011110010100010101011000001010011010111110100000111100110110100010010100110100001000100110001100100001000000010110000010011100000001001010100001100001101001110000011101101010110010110010111000111110111101011000001010010110111101111001011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000011011000011010101101110001100011000000011111101110111100100010001110010010111100010111111011010010000011001011000000001011100100010101110110001111100010011110111101010110111010111000110000" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100000000010100100110010011011000011000110011101000001010001000111011010011011110111001001010000010010111101010101101010110011010110101110011011001011111111000001001000100010010111110101001011", @"Remainder test 30 failed");
}

- (void)testRemainder31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"575846634381835752379234240129718419636614326298913380943017186844" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"96259475595603344239030557700229700811714672341702547422763787982250077" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"575846634381835752379234240129718419636614326298913380943017186844", @"Remainder test 31 failed");
}

- (void)testRemainder32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"437592651972e2147237d746ec872b706143c098e183533dc31eb36d2daa251aaeda22e91fd" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"72d7ec06ee75bcbbcb3e6a179ba10e6c20876b10b8f075ae9594adf78f084a2afd760f649d9" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"437592651972e2147237d746ec872b706143c098e183533dc31eb36d2daa251aaeda22e91fd", @"Remainder test 32 failed");
}

- (void)testRemainder33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a762c70cb29f616b87b9431ade22b08b74f49e99982c73113938b8b85f67a3f2f77" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"253ac272b106c01a843" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"141b779aaf8993e3453", @"Remainder test 33 failed");
}

- (void)testRemainder34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"454932011615139664110718824099609351999997800429420827711089580506081189818706453" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6235738755756984226875" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5581423100530452998953", @"Remainder test 34 failed");
}

- (void)testRemainder35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1472471551247344013040637444240441741450750663206773125335" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"366636660321054023231562512216032044246231502531070202004757045465305577" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1472471551247344013040637444240441741450750663206773125335", @"Remainder test 35 failed");
}

- (void)testRemainder36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"67252616205600177662544077" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20312701417670560524253762505430272041720227773647314544331207775625243327657" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"67252616205600177662544077", @"Remainder test 36 failed");
}

- (void)testRemainder37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100100101111011001000111110000110101000110001000001001010011110110110001011011010001100100011111011101001101011011010000010000001110110111111001111110010101010111111001100000001001011101111110101010100101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111010100101111111000101111000111010110000010010010100101010111101101110011001000111000100010010110001011011010000101100111001011111001111000000111000000000011100110101000000000011010000001100100101100110001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100100101111011001000111110000110101000110001000001001010011110110110001011011010001100100011111011101001101011011010000010000001110110111111001111110010101010111111001100000001001011101111110101010100101", @"Remainder test 37 failed");
}

- (void)testRemainder38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111110001011100011000011001111001110011011001010000001110001111111100010110010011111011010000111101000100101010010100111110000101010111111001010001001110001010011101110001110100101010100011010011111000111110101100011101010010000010011001101001000010111011110110010101000011011110011001010101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100000111001101011010100110000010100000010100111001110111000001000100011010110011010111100110011010110010001101011000111000000101010110000010011010111011110000111001000011110011001011001110001111001000000010100111000011010100100001100100011001011001100110000" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1101001000011101011111011000110001101100011111011000001010010110011000010010101100111001100100001101110111000000010000101000011000000011011100001011011000000000100100000111011010111000011110000101010101011011010110010111111111111010011100101101000010101101", @"Remainder test 38 failed");
}

- (void)testRemainder39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101001111111101100111101100101101001000111110101000010010010110010001100111001100000001011000000110110100010100100101000100111100110111010110110110010111100010110100011110000010101011101001111011101001111000110011101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11010100010011000001101001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11010100110111001000", @"Remainder test 39 failed");
}

- (void)testRemainder40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22067160244104747" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"61240622353016334167523541514446171106155333442446241710534233142767123752213164207557726611503511" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"22067160244104747", @"Remainder test 40 failed");
}

- (void)testRemainder41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"89001014143520869642910717797100246563263" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6441222853833976396057990193542622296270358587499568758397559737789399381715729503862761392350241793" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"89001014143520869642910717797100246563263", @"Remainder test 41 failed");
}

- (void)testRemainder42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1764542546670345733243174123060735" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"640312143217067001055654405721630156112305323746531705543205602740237531" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1764542546670345733243174123060735", @"Remainder test 42 failed");
}

- (void)testRemainder43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101000010001100010101110001111111001101000110010010110110110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000010011011110011100010101110001001010110100001110100111111111101011101001001100101101011111010101001011110010100010111111111100110000101011011011000110100000110001101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101101000010001100010101110001111111001101000110010010110110110", @"Remainder test 43 failed");
}

- (void)testRemainder44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"19a235b22b1786f482dc28977e31ea87" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"329001a4b29d35bb31b2dd2ff282e1d7a9" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"19a235b22b1786f482dc28977e31ea87", @"Remainder test 44 failed");
}

- (void)testRemainder45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3372160431625133724042546554327267414526611567013275715057253146632544767075" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"156560222557331" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7154713076133", @"Remainder test 45 failed");
}

- (void)testRemainder46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8475529733406551311483841714118" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8149927529301319580" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2529438651548889338", @"Remainder test 46 failed");
}

- (void)testRemainder47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"462290125901388300863073184017468222507302643431" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"611506012689633" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"531368867595182", @"Remainder test 47 failed");
}

- (void)testRemainder48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"235f9a93f8dd475535ae1e960dbc" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10111060c1c840dd29609cecceb92e29cc4967094382f32" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"235f9a93f8dd475535ae1e960dbc", @"Remainder test 48 failed");
}

- (void)testRemainder49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111101111011110110010011111100110110110010011010110011101101100101100101110011011110100100010111001000110101101111000010001100111110010001100101001001001111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000011001101001000100010010110000111010011001010011110110101101110110010010101101110101000011011111001010100001111100001101111111011101011010100110111011000110001000110000101110100101101010100010111111110001000010001101111000001001001110100110111001110011111011010101010000000100110110111110001011111" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000111101111011110110010011111100110110110010011010110011101101100101100101110011011110100100010111001000110101101111000010001100111110010001100101001001001111", @"Remainder test 49 failed");
}

- (void)testRemainder50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001111010001001101000011100001000101011110101000010000001011110011101011001011011010110000001010101011010001111000100011001010101101101011001111110111011100101011001110011000110011110011000101001101001000001011110100010000111010000100100100110001111010001000010000001001100100110101111001001001001001000001110100101001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001", @"Remainder test 50 failed");
}

- (void)testRemainder51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15333564254001122630756675552003374455005671101445303702317157433" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"616617453616164302556172655764375567107406" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"604600677603010313153163614200202636050557", @"Remainder test 51 failed");
}

- (void)testRemainder52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111101000001010010010011101111000001010101011101111010010000110011011001001110011010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101111010110011011101011100001100110100010111101111111000111000010011101100101110111001111001000101010110001010111110101110000111110110111010101011101100101011111100101010011001010110010101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111111101000001010010010011101111000001010101011101111010010000110011011001001110011010", @"Remainder test 52 failed");
}

- (void)testRemainder53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"357577542347573732" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11773155545506044202460312401176411716030025150574500101434245465027566350673372652312503430137402311661152" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"357577542347573732", @"Remainder test 53 failed");
}

- (void)testRemainder54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010111011100110010100110001000110100110110000010001001000100011010111011011111101111001111011001100011001001010100100011101000001100001110011011110100010010001111101101000110110100100111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011000111110011000110111010100100110011010100110011011001101010111010110010011111110100101110010001111111011110100101001110111100100101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100101111100000101011011101011000110110011011111101100110001001001110010001100010001010000110110011001001010110001100111000010010101", @"Remainder test 54 failed");
}

- (void)testRemainder55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7121266098854930696" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"343204141301003096419109310844601" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7121266098854930696", @"Remainder test 55 failed");
}

- (void)testRemainder56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42764247634710702882658151699352308" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"460401947190535170152516220246030131395098958446964" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"42764247634710702882658151699352308", @"Remainder test 56 failed");
}

- (void)testRemainder57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"f8d01528e967fe1ba4c6af549b3208c90203abeedfb2e43d40ea5abd402902bc285d0b2e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2a16a737618b375ed6474efb349cbea236e3afdfd4297afcaa98" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1c3d65aac0b488471fb50f382dcb80291c1b9ea646b096172196", @"Remainder test 57 failed");
}

- (void)testRemainder58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29934bbd31a0d4b19d022cadf6525ae7c83a47f64f9840f585ed8d7018e2aaf9e444e793f350f538" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6ef39d6143" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"6accdffbe5", @"Remainder test 58 failed");
}

- (void)testRemainder59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2890088450" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"628727004893043035177917828708216325298852740559759065564855081" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2890088450", @"Remainder test 59 failed");
}

- (void)testRemainder60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"346357bd99d5d756c7ea47437dd8a901c1926ed86a1d3416903dfa373" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"13afb23bb89961f9e65e743a" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"9b19cd6f26e72486f286ca5", @"Remainder test 60 failed");
}

- (void)testRemainder61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101001110100011110100111000101001010001111110000011111101010001011001010111110100111001011000000101110011100111101010111000011011001101010001010010111100101111001100001010110101100001011000110110110000101000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110100010001111100001101101011110110000111101001011111010110010100110101100110110011110100011001001110011001100111000001100001011110110011010100010111100000110001101001110010010111010000100001101111100010011110111000110011100001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101001110100011110100111000101001010001111110000011111101010001011001010111110100111001011000000101110011100111101010111000011011001101010001010010111100101111001100001010110101100001011000110110110000101000", @"Remainder test 61 failed");
}

- (void)testRemainder62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010100110011001111011001100000000010110001000001011111001101111001010111111111110001101001101111010100010101101110100110011101101001101101110111011111100111110101011101100010000000010010110011110110011101010111101110000100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100011000111011010101101001001011101001100100111000111100001000000101101010100010101101000101011101110001010100101010010010111110100100101110100110100111100101000111110011111001100100100111010000000101110001000101011101100110001110100100001110000101110011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010100110011001111011001100000000010110001000001011111001101111001010111111111110001101001101111010100010101101110100110011101101001101101110111011111100111110101011101100010000000010010110011110110011101010111101110000100", @"Remainder test 62 failed");
}

- (void)testRemainder63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001110000101111101000111101111001011001101010011111100100100110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010001010001100101101100011010110000101010001011000000110100101000111111111010000110010010001100100100101011100000110101011001100111111110011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001110000101111101000111101111001011001101010011111100100100110", @"Remainder test 63 failed");
}

- (void)testRemainder64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110101111110100110000101111011000100010101101011011110101011111010111110111011000100000010000101011010111010111101011010110011101001000110011001111000001111101100001100000000110000001010010011100100000101101010100011011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001110000011111010001110101011101010111010110100101100011011011100110111001000101101011101111111011011100111110010001100001011110101100001000111110110100100111100100110011101100001111100010000110101011011010101001111001110001001010011110000010010100010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110101111110100110000101111011000100010101101011011110101011111010111110111011000100000010000101011010111010111101011010110011101001000110011001111000001111101100001100000000110000001010010011100100000101101010100011011000", @"Remainder test 64 failed");
}

- (void)testRemainder65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6ff39149d1e78624b09925202cad501183df75509dc769496e361b1471958b84b9c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4dc50e057dc25f3e85e9cf65cb107584e401256c42117f51cf1" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"49b9fecb25b91a1ca59f4782370924d5ffdfeb9de1674ba3ff7", @"Remainder test 65 failed");
}

- (void)testRemainder66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010001110001110001010001010111110101001001001011001000010011110100000001100110100001011011110101001111100001110000011111101101000100110101111011010011110100101111011011010111101110011111000011110000100111101110011010010011001001011111000011000111111001011100100111000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010101011100111001111010010111001100001111110100010011100111011011010001100000001111011110000101000000011110110100111010001010101110010001011001110010110000111100000110101001010011101110010111011101010111110110011100011101110101011011001110110000111001110110010000010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111100010100110111010111000000101000111001010110110100101100011000110000000110010001111101110000001111000010111011100101100010010110100100100001100001000011110011010100101110011010110000101100010011001111110111111101110101010100000011110100010110111111100110010110110", @"Remainder test 66 failed");
}

- (void)testRemainder67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"177062542016017570014503173345705221370440776777712051231646117740715306607305254013676" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"36457467463256735342" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"20712615621174375000", @"Remainder test 67 failed");
}

- (void)testRemainder68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15414573057172674601652703443775254327725214256353" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1452" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"533", @"Remainder test 68 failed");
}

- (void)testRemainder69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5762e29" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3dbf084" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"19a3da5", @"Remainder test 69 failed");
}

- (void)testRemainder70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000101111101000110011110001101101111101000111101000110100001000100011101101111011011110100110110111000100001011101101100010111111001011111001111100001001110010100111111010001100100000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101110000110010000101011000101000110111001011010111010011011000101010111000011001111000110001010101111111011001111011010101101000111111000100011111010110001001000111001110110010010010101101111010100000010100100011000110010011111010110010110011000010110001011010011111100100101011001100100100000110001110011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000101111101000110011110001101101111101000111101000110100001000100011101101111011011110100110110111000100001011101101100010111111001011111001111100001001110010100111111010001100100000", @"Remainder test 70 failed");
}

- (void)testRemainder71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"140858225741874842867350212766776839043096335971001" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"82786168863581269" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"63951569667810859", @"Remainder test 71 failed");
}

- (void)testRemainder72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"266cec8e8ba094695f68d715e816" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f498" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a4e6", @"Remainder test 72 failed");
}

- (void)testRemainder73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"99692260590201391104149722" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"445307755" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"154329067", @"Remainder test 73 failed");
}

- (void)testRemainder74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1026554052653103461775017573710740431556023067053125513114403737724507432713253474337023" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"272554122744032532255243466165016217551125041125155421025757023045013" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"217111037522116200326330375346201211673762334210346037163711764407552", @"Remainder test 74 failed");
}

- (void)testRemainder75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"725b7d47a56908cf46950baea28997a7ed4445b" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7", @"Remainder test 75 failed");
}

- (void)testRemainder76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2529c74c7686a2f7a9555925a178e0c5" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"245f7d5184b94a6cf37ae560e3978471860d9f39b" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2529c74c7686a2f7a9555925a178e0c5", @"Remainder test 76 failed");
}

- (void)testRemainder77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010010011011000000011111010010001111100011100000111111110000110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10100110101011111011010010001110110110000110110001110111101101111100100001111111" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010010011011000000011111010010001111100011100000111111110000110100", @"Remainder test 77 failed");
}

- (void)testRemainder78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111100101101010010000111100010000000000111001110011111101110000011110011010110110111111010011110011011010001001010100011110110111011000011101011111110000000000100001110101100001111011110000000000101101011011010111001100111110011010110100100100001010111100000000000010100100111101000110110000111100111110100111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001000010110110001100110011001010110110111111110010011000001000010110100110010101010001000100001100000100011000000101100011100010101100110100101111100010010001000111001011111011111010111100010000101000010011011100011000011001000010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000001000011011011010110011101000111000100110111010101001110011011100000011110100110111111010000011101010001001111000000010011000011101001110101011010111010101101111011110011010101110101011100011111101010011010000010001011001001", @"Remainder test 78 failed");
}

- (void)testRemainder79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011111010100001110111101100011000110110110001011110101000101101010101000110110000011010111010110111000000111100000111111000111000100001000000001001010110111000101000111011010101011001101010101111011100011000110100011111011001100001100001001111110010000001010101010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111110001000100110111100000011000101011111101101111001100" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111101101010001111111000010000111011110111000011010011100", @"Remainder test 79 failed");
}

- (void)testRemainder80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111101011110010001100011000110100000010011100111100001011011011010001000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111101101111111101110011011001011101001101111101101011100010101111000010001001101100001011001111000101000100000010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111101011110010001100011000110100000010011100111100001011011011010001000", @"Remainder test 80 failed");
}

- (void)testRemainder81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11001011000010110110110010110110110001010110000010110000001011000110010101101100101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010100100001001101111011110100110110101011100010000001100011110100100001000100000001111100001100101000001000100110111010000011010000011101111001011011110110100100111110000010100111101010110010110111101111101000010" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11001011000010110110110010110110110001010110000010110000001011000110010101101100101101", @"Remainder test 81 failed");
}

- (void)testRemainder82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"424439977408" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"22", @"Remainder test 82 failed");
}

- (void)testRemainder83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110101011111100011110101010011011001100000011011111001100010110001110001110100000101011000111010001010101001001111010110100110000000001011010100000111001110101000110001111111011000101010110010110111000100110110111010101111110011100111001001110000111000111010111001000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101111011111011001110101100101100110111110001010000110000110110000100110100100101011000110110001010010011001101111011001101011110111001101010001111010011100100110010011000011101110100100111111011000011110101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010101001101100100101111000110011111001110110000101000110101010111110010101010111110111101100100001101111100111101100101101000000100110101011111011111101110010101001110110111101111001001000100100000", @"Remainder test 83 failed");
}

- (void)testRemainder84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2734231476222216646" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3432113" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2552322", @"Remainder test 84 failed");
}

- (void)testRemainder85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2e2fd7c1808baabd4b2dd766d5a41ca55bba54d5a3d9ef6e78196efb75560bccf1550d294f6cdd869a" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7", @"Remainder test 85 failed");
}

- (void)testRemainder86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2a8b7223be2661caf4264f78a809fd74430393abccc37e27e55da73f2a44" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"214c3" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a577", @"Remainder test 86 failed");
}

- (void)testRemainder87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"464160745115578951874919718702542771545498" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"80686732422910821754657" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"75334537124368097842367", @"Remainder test 87 failed");
}

- (void)testRemainder88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000011101011010100001011100010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110010010010000000111011100100010110000100101000100110110101101001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000011101011010100001011100010001", @"Remainder test 88 failed");
}

- (void)testRemainder89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011100001100100011110000010111000111010000010101010001010001010011111101101111011101111001011011001001011011011011100110110000110101111011010010100101100111111011000100011110011110000010100101100100111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000100111110111011011110100101011011000001001011101110011011001011010001011001100100000101011110001111110000010100111100000110010111111110100110000101011111101001111011111000100101100001110110101000100101111100001000101000010110001011110111001100111101100101111110000111000011101111111111011000101011101001100110111101111011001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011100001100100011110000010111000111010000010101010001010001010011111101101111011101111001011011001001011011011011100110110000110101111011010010100101100111111011000100011110011110000010100101100100111", @"Remainder test 89 failed");
}

- (void)testRemainder90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"648729446092432" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"159190322515424600067106590873516151172994768858" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"648729446092432", @"Remainder test 90 failed");
}

- (void)testRemainder91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100000101101100110011011101000101100111111000000111001010011100011010101101000011011110010101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100011001111010000111000001111001111111001100000011100010110110111011010001111111101101010010100000101010011101" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100100000101101100110011011101000101100111111000000111001010011100011010101101000011011110010101", @"Remainder test 91 failed");
}

- (void)testRemainder92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10110001001111000100011001111000110110011100011111110011000010101011001111111101100110100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11000100100000101100000111100011101011100101110111000110100011000100100110001010110001000111100110011101111110" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110001001111000100011001111000110110011100011111110011000010101011001111111101100110100", @"Remainder test 92 failed");
}

- (void)testRemainder93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101010100010110110110100101011111110100101010101101101011111110100110111000010111101111010000010000010101110011100100000101011001000110110100110101111111010111010010101011011100010110001010110010010010001110101001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011100011000000000110000000110111110101101000101111010101001100110100010100011110001011101011000101010001101111111111101101111111100110000011001111100100111010000000100011101110010011001110101100110100010011111101001010101101001111010100000010010001101111111101101100011001000000010001" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101010100010110110110100101011111110100101010101101101011111110100110111000010111101111010000010000010101110011100100000101011001000110110100110101111111010111010010101011011100010110001010110010010010001110101001", @"Remainder test 93 failed");
}

- (void)testRemainder94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"45337573452557698062287920346316858497790748795588" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8137735473989561439243082363053238103939195153" andRadix:10];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2249126961851284264708501747269020745492598225", @"Remainder test 94 failed");
}

- (void)testRemainder95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101111000000100100101101100111010011010000011110000010111100000111101101100100011110100011101100110111110111100101001011001000101000011011110011000100100011011010010100101111101011011000110111001101010111000100001010000010001000001100111001100011000111110110001000011110111000000101101010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010101100110010111110011101000101100101110001001110011000001111101010110011101100010011011111000001111101000000110110010010010010010111110001010100011000011010111010010010011" andRadix:2];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001000111111010110010100110111001000110000111101001100101010011110001000000110001010111100000110000100100101001110110101100110010111001100110110010001010111110010100000110101010", @"Remainder test 95 failed");
}

- (void)testRemainder96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14447250136230710741211621122421510051261044044301524677610730227274606336411201317" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"17574524710270126454003445770674401605342331415005660176432423745437133767700171154667525164622335" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"14447250136230710741211621122421510051261044044301524677610730227274606336411201317", @"Remainder test 96 failed");
}

- (void)testRemainder97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22436734005413644213714530346641055766276" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3", @"Remainder test 97 failed");
}

- (void)testRemainder98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"46711345763656706635426526637763115267663421301606" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"546213423" andRadix:8];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"455167225", @"Remainder test 98 failed");
}

- (void)testRemainder99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"40f984145604c2978fc705615372fbc469a2d352bf92e17a617e1b764a2fd438c38a8692d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26b8ec3744cb7ea61acae6e74b9" andRadix:16];
    JKBigInteger *result = [int1 remainder:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"20787c59f4d47ca627b8a94b28d", @"Remainder test 99 failed");
}

- (void)testDivideAndRemainder0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"895f4b2d3d290ee45c572d4f400583e9" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"d65c9b2456345e7c92146bf2a221f0efa59492e749922e61ecf75a007da" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 0 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"895f4b2d3d290ee45c572d4f400583e9", @"DivideAndRemainder test 0 failed");
}

- (void)testDivideAndRemainder1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"57766154866e7b0b703e0c909cd7d51656678c53a0d62d3aec3120165045a11ada66" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"66e3f9ecb604156d13adc6e0fbb0bc8c4e1b48a" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"d99d15900f83f3d0e5c8911c471f7", @"DivideAndRemainder test 1 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"3839e87f8b27bdb0b29128bcc696302a6fcbf40", @"DivideAndRemainder test 1 failed");
}

- (void)testDivideAndRemainder2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011010110010111010000111110110001010000110111011011010010101000000010011011100010101100001110101101000111011001000110010101000110010000111110111111111111111011010100001111101111101010111101011011100001101111110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011001111111111100101111110001101001010011110010001110001000111110101001110001101111001111100001011011110101111101111011101100011101111001100000000101001011000101111001100110101000111001010101100101011001100001000010111000110010000000001111110010001100001000001010011101100010101011101001000110110111011100010110100110010001" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 2 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"11011010110010111010000111110110001010000110111011011010010101000000010011011100010101100001110101101000111011001000110010101000110010000111110111111111111111011010100001111101111101010111101011011100001101111110001", @"DivideAndRemainder test 2 failed");
}

- (void)testDivideAndRemainder3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15162522280112949859" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"330855017122672691914159917792" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 3 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"15162522280112949859", @"DivideAndRemainder test 3 failed");
}

- (void)testDivideAndRemainder4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"972751328672950230310971255230218182198418258369875524762231218912567497489803865474" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"620661129712965765411321" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"1567282502648126142268334751989351934276346418612753582079888", @"DivideAndRemainder test 4 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"582984721442320802253426", @"DivideAndRemainder test 4 failed");
}

- (void)testDivideAndRemainder5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12046105031244773351057733212556760" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2043371647251213265621146605225242656212740055162636246741656775225202754335754633356170" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 5 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"12046105031244773351057733212556760", @"DivideAndRemainder test 5 failed");
}

- (void)testDivideAndRemainder6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4b92c5f43f46b76837db79cd192fd2f26a139326d6d58f4bf" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2d6c9ce96d6d1c59e3e6d48829f255a7c042faadcd61ea6c17377cb864dc15dbe59baa5ed04bf9fd6" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 6 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"4b92c5f43f46b76837db79cd192fd2f26a139326d6d58f4bf", @"DivideAndRemainder test 6 failed");
}

- (void)testDivideAndRemainder7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29fd8805b3f6964c592335f1cb9c9fdeb7e3d265c5e154b9e5723496d7714070392937e592346908a2" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"32f054c5e347c56dfc96e81fdd5a3" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"d307443e8a351d724660d49e4b1e884479411d3dba41c751c3bf7", @"DivideAndRemainder test 7 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"1ec5a8930b2474a500fc26b6f575d", @"DivideAndRemainder test 7 failed");
}

- (void)testDivideAndRemainder8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"52423424134162351052434521554040201754761777" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"261617551741010657515377606344" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"172404031634530", @"DivideAndRemainder test 8 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"245346154770163460416633130637", @"DivideAndRemainder test 8 failed");
}

- (void)testDivideAndRemainder9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8f3e53849665f8cc6883d9abbbf420e57" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"addbf9284354f33a5c9edc8e876cb300fc5488d8bb5a" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 9 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"8f3e53849665f8cc6883d9abbbf420e57", @"DivideAndRemainder test 9 failed");
}

- (void)testDivideAndRemainder10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1e188e3f30d9ece72f0ecb9821cb1d6de28c34219c9509390b9fc7c5f0f8cd31f398" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"e9970cccab0031453d779" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"20fbb56de126b6d803aafd935fa7340aafb26e4785bb4a0", @"DivideAndRemainder test 10 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"8fa46186b602ed54733f8", @"DivideAndRemainder test 10 failed");
}

- (void)testDivideAndRemainder11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4202345000274205026234134505402771343626731" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12165737377237647000030552406021430215101652733" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 11 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"4202345000274205026234134505402771343626731", @"DivideAndRemainder test 11 failed");
}

- (void)testDivideAndRemainder12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101110101010001010110110000010110101010001100000001010100010111101001111101111001110000101011111010110001000010000101011110110110111101001110100110100000000001110100000100100111101011111011100000110010101100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111111100000000001001010110000101101001111001001001110100110000000101110101110111000001000101111110111001010110101111100101010101000110001101101001101011011100000110010010010000010000011001001001100010000100110010000111110" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 12 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"101110101010001010110110000010110101010001100000001010100010111101001111101111001110000101011111010110001000010000101011110110110111101001110100110100000000001110100000100100111101011111011100000110010101100", @"DivideAndRemainder test 12 failed");
}

- (void)testDivideAndRemainder13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001111101001111101010010001110110111010011100111011101110111100100110100100111011001111110110000001000110000111110110100011100001101110111111111101101100000101111101010011000011101011101100010101100101100111100000001100010011001000101111100000001101011001111010101100100010011111101000011011010100100101011000000001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11000110001110111011110000001000000111011111010111110110011011101100100110111011101001111010010011111110011101101010011110" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"11001101101111000101001000111011011010101000101110011001101100010000000110101010010110010100010111110100111001111001110101110100111111011100100110011101001011100101110101010001011011001001000010", @"DivideAndRemainder test 13 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1011000000000010001000010010100110100011011110100000000111011001000111000110101100010000011000010100000001110101000101", @"DivideAndRemainder test 13 failed");
}

- (void)testDivideAndRemainder14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5355143224120" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"861881566604199584235729274251129366179085386457017189014132470153744854" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 14 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"5355143224120", @"DivideAndRemainder test 14 failed");
}

- (void)testDivideAndRemainder15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111461316376450413" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"324374401723266615434440566250013554507166503264733016577727650454404632" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 15 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"111461316376450413", @"DivideAndRemainder test 15 failed");
}

- (void)testDivideAndRemainder16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"229a43349e9d88363d8f1bd895a4f4c78d79" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"49582c56193004814aa318f7376c651d06c9c9c687185ea55a0486dfb7314" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 16 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"229a43349e9d88363d8f1bd895a4f4c78d79", @"DivideAndRemainder test 16 failed");
}

- (void)testDivideAndRemainder17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"304071470143523214557356553435043554664077730" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 17 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"2", @"DivideAndRemainder test 17 failed");
}

- (void)testDivideAndRemainder18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5d39058de74bea260c50c3a68022721dca3a7a77787028650e1c517c0cb5ebc3d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"180705e950ab00c8de931fc1e16d895a3e2f1872de2022ccfdc11ac5355647286638d9cd73a15c" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 18 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"5d39058de74bea260c50c3a68022721dca3a7a77787028650e1c517c0cb5ebc3d", @"DivideAndRemainder test 18 failed");
}

- (void)testDivideAndRemainder19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"66233732661" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"814" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"81368221", @"DivideAndRemainder test 19 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"767", @"DivideAndRemainder test 19 failed");
}

- (void)testDivideAndRemainder20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"66010547016645350373265246733577235760732" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6012037510174626344615525574306602705746261507352543" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 20 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"66010547016645350373265246733577235760732", @"DivideAndRemainder test 20 failed");
}

- (void)testDivideAndRemainder21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"814497675800349471422126163017848418714430932354235551" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3849868875134706" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"211565043438486042120253111796696609059", @"DivideAndRemainder test 21 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"2457980309333897", @"DivideAndRemainder test 21 failed");
}

- (void)testDivideAndRemainder22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2152142466075676572430001562411413437257717322372070006561636372477" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1253457024250546024406605702744321441" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"1516376441201440644263017473075", @"DivideAndRemainder test 22 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"331662051676634175714461626545560142", @"DivideAndRemainder test 22 failed");
}

- (void)testDivideAndRemainder23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101010101111001001001010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110111011110011010110010100101000111000111111110000" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 23 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"101101010101111001001001010", @"DivideAndRemainder test 23 failed");
}

- (void)testDivideAndRemainder24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011111010111001110101011101101110011010101110101001101111110101011011111001010001110011100101011010100000100101010110010001111000000010010100001010000111010010001010100000101001101101100" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 24 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"11010", @"DivideAndRemainder test 24 failed");
}

- (void)testDivideAndRemainder25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"588d6921aee4d2ba0a5e2" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 25 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"5f", @"DivideAndRemainder test 25 failed");
}

- (void)testDivideAndRemainder26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"58be" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"b60a1f3e4289d729c5a05ff7a32354023132c4ccc604f06c128e99bb9b1f5858b0949492098e38dc28d" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 26 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"58be", @"DivideAndRemainder test 26 failed");
}

- (void)testDivideAndRemainder27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100010111001011111100011001101111110001100010101001101001000010001101100110110100010010111000111111010110000100011001001111011000010011100101011011001011000011011111100010001100101101100111100011111000100010001110110101100010100100110111101101110110111110110101001000100111110010000010011110000010000011010101010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101110111000110111101000010011111010001110101001101011000101100001000101100110010101001101010000010010101001101011011000000001" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"111101011101110110101011001110111010011111110001110001100000110000110001001011011110011011110001001011001001001010001101100010001101000110111001111011010000110011110101110011111001001011100", @"DivideAndRemainder test 27 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"100001001100001111010100101111001100011011011000111100000010111010001011100011111100101101101100100101101010110001101101011111000", @"DivideAndRemainder test 27 failed");
}

- (void)testDivideAndRemainder28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11001111111101011000110011011101101111011101010000011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"11101101101010101110101000100001111111011000010010101", @"DivideAndRemainder test 28 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"110", @"DivideAndRemainder test 28 failed");
}

- (void)testDivideAndRemainder29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"19255620557528113021659839808417451352509117" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"175397511457634707563" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"109782746616556707457091", @"DivideAndRemainder test 29 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"82596784470196829884", @"DivideAndRemainder test 29 failed");
}

- (void)testDivideAndRemainder30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2607407234130589873523555740434744476249699267248319407267239097446161218629554867632636599" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"78569" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"33186208735386601248883856742923347328459052135680986232066579661777052255082219038458", @"DivideAndRemainder test 30 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"29997", @"DivideAndRemainder test 30 failed");
}

- (void)testDivideAndRemainder31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"36615267353523060513472001106237503730337" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6670370177" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"4370704145234433271410336362677", @"DivideAndRemainder test 31 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"525123436", @"DivideAndRemainder test 31 failed");
}

- (void)testDivideAndRemainder32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111101010110010110011100101001101111000110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101011000011101101110001110000011100100110110011010000111010000101011100100100100010110011011001001100100011000011011011000011000011001011000101101000100010011101000100000111011001111110101000101111011001011010" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 32 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1111101010110010110011100101001101111000110001", @"DivideAndRemainder test 32 failed");
}

- (void)testDivideAndRemainder33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1233523666302231105550742745473503050317716427335760527776265704747210705370404064334174723412737504333310137" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2327345172043413401012514170433150177553170541011102370502546443302653377" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"423633245440711761664242666701223215", @"DivideAndRemainder test 33 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"2044563764160754056147207010062432060421271327004076670056215322322345754", @"DivideAndRemainder test 33 failed");
}

- (void)testDivideAndRemainder34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011011100010000110000011111100001000101000001110000000111101111110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000111111111010011010101111011100001110110101110100010011010110010000111100000111111111100001001000100110110010001101100111100100000000100101011110011011011110001011110111010111011110011100011000110" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 34 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"10011011100010000110000011111100001000101000001110000000111101111110001", @"DivideAndRemainder test 34 failed");
}

- (void)testDivideAndRemainder35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"605755636710564151411330331045553617443673016632763136717703152620430663120232374531673654674137577321172" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101420327047273247213540033707352147250265313612271136" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"5746617333150535501543460272115731575065002557310047", @"DivideAndRemainder test 35 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"54415105575171051354356733670243744336244405774453050", @"DivideAndRemainder test 35 failed");
}

- (void)testDivideAndRemainder36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"72602336410066054516212722262507273764350106" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"106760160722362113015030604403640642030371667" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 36 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"72602336410066054516212722262507273764350106", @"DivideAndRemainder test 36 failed");
}

- (void)testDivideAndRemainder37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1b5b6ece082" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"f88572fca84376f5106131fbfc55582c4c6ac9264436735213fb53f0de" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 37 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"1b5b6ece082", @"DivideAndRemainder test 37 failed");
}

- (void)testDivideAndRemainder38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"569865134203629616290122384092505923029889079775809047492159346" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6704579856361773539897616953560622036335493644612280306641831323280564884363188256139173003182505" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 38 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"569865134203629616290122384092505923029889079775809047492159346", @"DivideAndRemainder test 38 failed");
}

- (void)testDivideAndRemainder39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101010000010111101100101011001111111011110111001101010100011100110101000110011001101101001110010110111010010110011111111110100111010111111001100111101110100000101001000101010110000001010100100110010110011100001010101101111111100111110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000101011101011001100011011000110101000110100101001101101" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"10011100101011100101010111000001001111111001111000011000001110010011001110110010001110010011011110001011111100101101100000100100010101001101101101010000110010001011000110000001000", @"DivideAndRemainder test 39 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"111011001011001101000101101000010001010000000111111010110", @"DivideAndRemainder test 39 failed");
}

- (void)testDivideAndRemainder40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8090c125fc1ba58bdeeff837fd6cc8582dab886a062c65efafdfdce2819ab6d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"700639de7b" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"125ccd22291ab32a6054d08f9be38f6540b914be11a29436277569", @"DivideAndRemainder test 40 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"2850f233fa", @"DivideAndRemainder test 40 failed");
}

- (void)testDivideAndRemainder41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2c4893af72a7748af908de13d349c7fce6e44592ac40cc6c3fcae6664b91c7bc2e88c1395ad4b7ff" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"cd63c36b291e20e311d75d5a" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"373208fe712c77215bd0d7944cb95c6919acb76e8e306a9270ad2366", @"DivideAndRemainder test 41 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"b4af44f2566cd29a57703823", @"DivideAndRemainder test 41 failed");
}

- (void)testDivideAndRemainder42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"49991597205156800622954551942062859249381742" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"46682566889509264407929640962462290442594168174697004538052" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 42 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"49991597205156800622954551942062859249381742", @"DivideAndRemainder test 42 failed");
}

- (void)testDivideAndRemainder43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30532641225671724473363712616146657055" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"75040466772536325545612" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"316722773141627", @"DivideAndRemainder test 43 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"60100650761670311630707", @"DivideAndRemainder test 43 failed");
}

- (void)testDivideAndRemainder44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101101110000100001101010000101000111111010101001011111101101110011011101101110111111010100000100111010110001101111010100111101100111001010110100100001011011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101001001001111101011101000001101000101000111110111000001111101101111110011001010101010000001100011001111100010100110110111100111001111001110101100001101110100000000100011000001111000010110010011011111000000111110001000011110100111011110010010" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 44 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1101101110000100001101010000101000111111010101001011111101101110011011101101110111111010100000100111010110001101111010100111101100111001010110100100001011011", @"DivideAndRemainder test 44 failed");
}

- (void)testDivideAndRemainder45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3444" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"25442115654477636174532625557052500301714524403207045615252264174024457161140076" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 45 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"3444", @"DivideAndRemainder test 45 failed");
}

- (void)testDivideAndRemainder46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"43430553118066562531846877174538468912658682958210598903358157453289892291643422691859862" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21582936069889862595032346794489363139045989" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"2012263437070366488136342696866608210410818198", @"DivideAndRemainder test 46 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"979153915810515129251726161723236051752040", @"DivideAndRemainder test 46 failed");
}

- (void)testDivideAndRemainder47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5ebdd1520a42ebb5a59d61e91608092ed" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a813e5dc498ee41e9f007bebe2419a4c10f8b9" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 47 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"5ebdd1520a42ebb5a59d61e91608092ed", @"DivideAndRemainder test 47 failed");
}

- (void)testDivideAndRemainder48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"81a5f5ce4d835f4c6dab5411780851475cfa477ca3e12e49339487b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"38bdf43e6e3" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"248ed6fbf4ff7e57354d57095e5e3d37f6eda5324270e", @"DivideAndRemainder test 48 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"184f46a1311", @"DivideAndRemainder test 48 failed");
}

- (void)testDivideAndRemainder49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"46422712949807542d4a09630e43f19ee32274babc7a65918ebef288e293aaded" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"16bd" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"31701f031754addbf957c367df77735a6284df65b68a48c9fd9f4c3d503a2b", @"DivideAndRemainder test 49 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"a2e", @"DivideAndRemainder test 49 failed");
}

- (void)testDivideAndRemainder50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"486832239535748131020576829536568561799194429" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11602055635353387720082993348439082332430341394846184187086293613510940489623207" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 50 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"486832239535748131020576829536568561799194429", @"DivideAndRemainder test 50 failed");
}

- (void)testDivideAndRemainder51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"390083541990758411121051715198488438636632251742734217319991518717" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4154062427898074558606738688746173412280340520889" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"93904111640454535", @"DivideAndRemainder test 51 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"462936151194664244937170166560006964693369237102", @"DivideAndRemainder test 51 failed");
}

- (void)testDivideAndRemainder52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1c0cd7cc1175fd9843240aae7f8020b38c935317" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1d98035396675a7654a0188d7ea9ebacb27276d3f12" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 52 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"1c0cd7cc1175fd9843240aae7f8020b38c935317", @"DivideAndRemainder test 52 failed");
}

- (void)testDivideAndRemainder53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1707474065059449393890123312440269714502946980102356206713311729135711080004609394281" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4832201624734714434750187611367" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"353353232679563304843342446996047478939587274128146925", @"DivideAndRemainder test 53 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"4597230002390470450876833297806", @"DivideAndRemainder test 53 failed");
}

- (void)testDivideAndRemainder54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010011111100111000000100101000010001100100100100000010010110000001011010100001101001011011010110001010011111000001001110010010010010001100111001100001010011001110100011001100010011011110011011000111001001001110011111011100000000000000011001011000001101110000010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1101111010001010111011111111011100010010010010001011011110101001011111" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"1010101000110001101111100000110011010101000101110000000101011000011100011110011111100101000001101010001010110101101111001000110100001000001101011011001001001100011001110011111000100100001010011", @"DivideAndRemainder test 54 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1000011011011000100010110001110100110111100010110100110011010110101", @"DivideAndRemainder test 54 failed");
}

- (void)testDivideAndRemainder55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22637172560366157162256337566311515607011056446" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"205552077445200462755225370066416115433343476205530774547146757055477303520701511653063" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 55 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"22637172560366157162256337566311515607011056446", @"DivideAndRemainder test 55 failed");
}

- (void)testDivideAndRemainder56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16ed" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2fa8101d7eec9f7006166bf5c1f869807b2ba03285" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 56 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"16ed", @"DivideAndRemainder test 56 failed");
}

- (void)testDivideAndRemainder57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5a483a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4cbfecc6e060a62afba2d9024dc46ceb9ca768dfa87271d4b7c71fc0a3badceefd" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 57 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"5a483a", @"DivideAndRemainder test 57 failed");
}

- (void)testDivideAndRemainder58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"575175629355133458975219" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4941028821154378583305045507757792920924183867617756075100318204759766162481747457338266907175367085" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 58 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"575175629355133458975219", @"DivideAndRemainder test 58 failed");
}

- (void)testDivideAndRemainder59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100110010101110010100010010100011110100001111010100101111011010100100100001101101100000010110000011011111111111011110100011111101111000100101011001001100010011010101101000011011001101110010001000110010100111000111101101000100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101001011100010110010010010110001010101001001100010101111100000101010101000001101100000010010101010100011000010101100101" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"1000001111111110011010111110000010000101110010000000001111100001010000111111101011001000001100010100010", @"DivideAndRemainder test 59 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"100000001000011000001001000010001011000101000100110011111100100010000100110011010100001001000100100000100001001100101011010", @"DivideAndRemainder test 59 failed");
}

- (void)testDivideAndRemainder60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"cfb0218c200037fd4be1a652d9b823cf50242810825dc420ea3abb27cb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5851c3ad44245db" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"259ff95ea5c33d1323d13a362bf88ce9165011a0632c", @"DivideAndRemainder test 60 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"511d038ea737527", @"DivideAndRemainder test 60 failed");
}

- (void)testDivideAndRemainder61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"423854840747031494052510534054619064889926052075098022451633997355335533119813771846981125233909012" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26917046631646465690729251488353080212458849577932566471872859740652071552065676321786492843247" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"15746", @"DivideAndRemainder test 61 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"19024485126245286287740119011463864549006620971830785523947879028014460987632484131008924141750", @"DivideAndRemainder test 61 failed");
}

- (void)testDivideAndRemainder62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"57b5cff8c7b57a0cfb9f41630c5e0b284ee7e55315dee1ac1a1bf3d247f954db1263" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"28e6642d98e3884907f9c74401dc7e0daee7a7e67b" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"224fe50f8feb4784e7e39fcda89", @"DivideAndRemainder test 62 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"18341647d5fbca926646cf80c08070adf81da7fc90", @"DivideAndRemainder test 62 failed");
}

- (void)testDivideAndRemainder63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1543440534542614050270570771063161" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"22076051515223040743101255125376432052504254614406465047340713610224044" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 63 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"1543440534542614050270570771063161", @"DivideAndRemainder test 63 failed");
}

- (void)testDivideAndRemainder64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"766430743353452025581112627761551281909000418" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"22380793449773576470657027340456033459616" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"34245", @"DivideAndRemainder test 64 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"471665955899343462726487634416084450498", @"DivideAndRemainder test 64 failed");
}

- (void)testDivideAndRemainder65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2129608312565927259374359786682850534524432339492132560235030336073636345533030649676" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"969255" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"2197159996663341699938983844997292285852982279680922523211157369395707368580023", @"DivideAndRemainder test 65 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"456811", @"DivideAndRemainder test 65 failed");
}

- (void)testDivideAndRemainder66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e028d630622c38b4bd1af1f26d37c2eed54e42c9a73277fd0aaae3" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a09ac2ec83d45fc5b7a" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"1654e21cdf76798900eb93a3b87a15e3601f", @"DivideAndRemainder test 66 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"9e8c721ee63c1ffd71d", @"DivideAndRemainder test 66 failed");
}

- (void)testDivideAndRemainder67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1483d1cc20963770e695465bdff17ed46540cb3fda5d2eaf02c0461f76de7480e0279a59a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9ae8c8144160f08f8ec8ded84b137ccb0f005486" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"21e70d26440889835def8efeed4f3287c", @"DivideAndRemainder test 67 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"4ce8347ee47df5024ca1c57b10c3e9777de9c4b2", @"DivideAndRemainder test 67 failed");
}

- (void)testDivideAndRemainder68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"763735116667521130428361587874506857428440395757083590479" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8992907426485518788994684963198144457983045759860237525518251334485939765606547446822076144213" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 68 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"763735116667521130428361587874506857428440395757083590479", @"DivideAndRemainder test 68 failed");
}

- (void)testDivideAndRemainder69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1f6fcffedcec581a119ab08d834a0eaa55360569e71e923b47dea6b3332a21103c4f0b71284" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"e6a5047241302b4afcd29b6702a99e2ce112e228dc2c5b69f547a48bd4" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"22e487e56e7e424ed", @"DivideAndRemainder test 69 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"1409b6590803b67a9b5adef62e8433cab63d2d4a618ab6d3ada4e7cf40", @"DivideAndRemainder test 69 failed");
}

- (void)testDivideAndRemainder70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"960634164129103306830702987283" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7560" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"127068011128188268099299336", @"DivideAndRemainder test 70 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"7123", @"DivideAndRemainder test 70 failed");
}

- (void)testDivideAndRemainder71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"c60e91c889e80d5d37486db5faebf1271030d7afb07531f5cc9d617519608e2b2e36fa375e81ab41a5e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2055bc1bdc4360ad24c3b20381b20058cf8" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"6200b6e4ef2a2d6b1bfbdc0d6ccfec384995d66815e440ffb", @"DivideAndRemainder test 71 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"18a3789ba351b1be1f3efbd783ae0205b36", @"DivideAndRemainder test 71 failed");
}

- (void)testDivideAndRemainder72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"95471752287645033630518" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"62650991654929851294519616355482853410683" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 72 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"95471752287645033630518", @"DivideAndRemainder test 72 failed");
}

- (void)testDivideAndRemainder73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110111001110100110001011111111010011001000101000111011110001000001110001001010010001001111110001011001010101101111100010111111000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101010100011000000101100000010010101000011010101011000011101101000000010111110101111110010011111001000111110100010110010011110101101000011010101000110011111001000101010010101101111111001010010010000100100110101000111101011010011101011000111111010011011000000111111110111010111000100011100101111101001011101000" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 73 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"110111001110100110001011111111010011001000101000111011110001000001110001001010010001001111110001011001010101101111100010111111000", @"DivideAndRemainder test 73 failed");
}

- (void)testDivideAndRemainder74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5c5072dd3b21e40c482144735fbac061f27ee1572d0987c72015792e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a2a04ad1ae58685adc86060850eccfa477e832902dd309f1f11147bef39a5ed91a1b3ecf2b" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 74 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"5c5072dd3b21e40c482144735fbac061f27ee1572d0987c72015792e", @"DivideAndRemainder test 74 failed");
}

- (void)testDivideAndRemainder75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13311600460155011236562476622636770703247441436613713345641710740640002537313677527215426202105462623026450" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5264535733414767235303" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"2101651177220066011076363653600150024122066573224661110436652026273257102756017400335", @"DivideAndRemainder test 75 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"1172010521054105471321", @"DivideAndRemainder test 75 failed");
}

- (void)testDivideAndRemainder76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101001011101011001011110010101110100010110101111111011000000011000110101010010000100000001101001001010110010011100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111011000110000000001100000000011100101001111100101001000010111110001110011000001001110100100101011111000011111010011110010010011001010100010111000001001001001101000000100111000110110011011000000111100" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 76 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1101001011101011001011110010101110100010110101111111011000000011000110101010010000100000001101001001010110010011100", @"DivideAndRemainder test 76 failed");
}

- (void)testDivideAndRemainder77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"744570134305763453325665571674513715063657" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1551427443541307070115607434740130534116503776" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 77 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"744570134305763453325665571674513715063657", @"DivideAndRemainder test 77 failed");
}

- (void)testDivideAndRemainder78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"fa45dd031ae6a462d8b3bd6b15adcdbaf7d9b6ca2648" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"22e058c6b5ad8d3657722e59af119ebb429dcd4ed49636aa5d21fa0d43f853" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 78 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"fa45dd031ae6a462d8b3bd6b15adcdbaf7d9b6ca2648", @"DivideAndRemainder test 78 failed");
}

- (void)testDivideAndRemainder79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011101011010010001100101100110001010001010100000111011110010001001001001101100111011111011111011101101110110010100100001000111111110100101001101110100000000110001110000000011110011001101001101010110101010100000011101110100000101101010100110011110101101100101000111000110101001011100100000001001101010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100000011000010001100111110000000010111100001100001110110000000010" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"10111000101000011111001000111110011111000011000101000001010111000001001110000100000110110001111011110001110011000000000001111110101110100110011100110101001101001011101000111001000101100000100111110011100011001100110010110110010000100010111", @"DivideAndRemainder test 79 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1011001010101101011000110100000101100100000010001001110100100011", @"DivideAndRemainder test 79 failed");
}

- (void)testDivideAndRemainder80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010001111100101000001011001001110011101100000001000001100111010010111100111010100101000010000000101010011100000011111101100101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011101010101100000001010001001110010010101111001010000010010000101111111011100101010010111111110011001011111000100101001010011010110101111011011010110010110101001010011010001011011001011110011010000010000101010100001111001001111100110001011010110100110000111000011" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 80 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"10010001111100101000001011001001110011101100000001000001100111010010111100111010100101000010000000101010011100000011111101100101", @"DivideAndRemainder test 80 failed");
}

- (void)testDivideAndRemainder81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100111110010010010100110011100100000001010000101011011010001100001001000100111110010100010011001101000101001100100000100010101111101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10100111011100101101011101011100001000110100010010110001100101110111110101000110111011010010101001101110000111011101110010111111001011001010001101001101111110011001111101110000110101111011000111010001101101000111111101101000101111111100001111101100001000000011001111000111100000110111011001110010001100000" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 81 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"100111110010010010100110011100100000001010000101011011010001100001001000100111110010100010011001101000101001100100000100010101111101", @"DivideAndRemainder test 81 failed");
}

- (void)testDivideAndRemainder82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5331152204735330744414220112674067444430" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"16700254470577213524312755645417720340415324140740566214457061203152236100617" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 82 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"5331152204735330744414220112674067444430", @"DivideAndRemainder test 82 failed");
}

- (void)testDivideAndRemainder83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010011001100010011010000110011000001110001111100110100010110011001000101011100100000000101110110001100110001011010001001100010011110110111000001010111110101100010010111110001101101000111010100100011011101110100001001110110001110101000001111101000011111110010001011000000110000010101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011111100000100000111000010110000001100100111101000001011011010011010100110110111101000001100110000001110000101110111010101000110110100001101111100100101000100010101110101110010100001101010001100100011100110101010111101" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"100001011000010010100000001101010000011000001000000110010000011", @"DivideAndRemainder test 83 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1101101111011000001011010011001110010100010110111101001101001110001010011001001110011100011100001110110010110010011000000011100001011000000101010110101100110010111110000101100110100101000011110110010101101001000101011110", @"DivideAndRemainder test 83 failed");
}

- (void)testDivideAndRemainder84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"301345221162416475000337644406754464473243024535223631644212366643614530166610633342704456474060305" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6740305640320345662070353056734017566627347606152172466235421727264217557706471523" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"33703175311771761", @"DivideAndRemainder test 84 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"5670307525547527501526364116573370634163107642256214052053044157066667135673203242", @"DivideAndRemainder test 84 failed");
}

- (void)testDivideAndRemainder85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000011101010000001010001100110000110110111111111001100110011001001100001010100010110000110101010110110011101110010010101000101111101010110010101111100100101000000010000010011011101100111100010101100010000100100110001100001101110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111001110001111100000101011100100111011010000010101011100001001010011110110000010011110110110001110100101001011100111111101111111101010110011101101011010011010100101110101101110101000011101" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"10010001110101000001111110110100100011011", @"DivideAndRemainder test 85 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"101110101001101101000111111100110000101100010101110100110010101110101010101101111000111010101011001001010011111011010001010000100101001000100001000110001010011000111101111111000001001011111", @"DivideAndRemainder test 85 failed");
}

- (void)testDivideAndRemainder86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30751722325424270" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"102332122647671233541357505056554304506370115700715162531053673567550422011" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"0", @"DivideAndRemainder test 86 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"30751722325424270", @"DivideAndRemainder test 86 failed");
}

- (void)testDivideAndRemainder87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"169bea82311c0ec91df91e09768c83a1c9d28a8c0bdb735d3151d66d43e517ab0fff" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"af15e20d8bfd0489def5" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"210ec2b77fc11bb686fe5d1eccd9c23e134e49b47b97e867", @"DivideAndRemainder test 87 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"3750d986184518a1536c", @"DivideAndRemainder test 87 failed");
}

- (void)testDivideAndRemainder88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"264768292416701662666322482258310158792683" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"758794875022773609744326301" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"348932631376503", @"DivideAndRemainder test 88 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"535270168136338314142487280", @"DivideAndRemainder test 88 failed");
}

- (void)testDivideAndRemainder89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4ce438992b9e194ef580d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"b2b9211dfd786e7aeeff3a160c51e5e22592b7728d08d5fb" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 89 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"4ce438992b9e194ef580d", @"DivideAndRemainder test 89 failed");
}

- (void)testDivideAndRemainder90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"862999674911786907524847" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"822604861868041" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"1049105974", @"DivideAndRemainder test 90 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"84580294747913", @"DivideAndRemainder test 90 failed");
}

- (void)testDivideAndRemainder91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110011000110111011001010000110100011000010110111001000000110111101110100100101110111101100110011000010000011111101011111000011000111111000101100111000000111101101110000111101101100101001000001100011010011000010001011010011110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111100111100011010001111000100110010100011011100110010100100001010001101010000011101100010000111011001000011000011000001011001000" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"110101101010111100101011110111001000110001111111111110100100110110110100101000010011010001111011110", @"DivideAndRemainder test 91 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"111011011011011100100111100110100111100111001101111110000001010001000101011001100000010111101000001110111001010111111001110000001", @"DivideAndRemainder test 91 failed");
}

- (void)testDivideAndRemainder92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13734225143410100774406260233455517216244530524011341273253202506410125111767076164375421762570324300" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"17764201763025342536527500740524713502" andRadix:8];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:8], @"576241776000327677335436250566650104222504152641707706471741635", @"DivideAndRemainder test 92 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:8], @"14245267061551351126756763370066117506", @"DivideAndRemainder test 92 failed");
}

- (void)testDivideAndRemainder93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"24615490781639338713509290521731036672620819200710999072437635" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"0", @"DivideAndRemainder test 93 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"4", @"DivideAndRemainder test 93 failed");
}

- (void)testDivideAndRemainder94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"62a153bb008823e66c9d0b304407bfac87f4f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1be256562b0058b" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"389824597d3037716ef905b", @"DivideAndRemainder test 94 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"cd7682c45356e6", @"DivideAndRemainder test 94 failed");
}

- (void)testDivideAndRemainder95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3c9af7284db6a43cc31ac94221c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8b321a4f2502d8a8ebfddcded7f57351a90a484ecc2ee1be5cf914adf13d51ac48f" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"0", @"DivideAndRemainder test 95 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"3c9af7284db6a43cc31ac94221c", @"DivideAndRemainder test 95 failed");
}

- (void)testDivideAndRemainder96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"28b5350fa6084dcc145246fb6c52fad3f89021106df648dd6d2c3f4cb53186" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"191744e4bbcd9fc91b55357f7adb4ec9b4a6cd7ccdcf826852ca4" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"19f5694916", @"DivideAndRemainder test 96 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"153e4ba5d2f1600a2e53c23571c8faeaf60a90528cf93c044976e", @"DivideAndRemainder test 96 failed");
}

- (void)testDivideAndRemainder97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001001101111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100001000100101011110110011100100010011100000111110001010001001011111010010011111100000110011100011100100000110001001010101" andRadix:2];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:2], @"0", @"DivideAndRemainder test 97 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:2], @"1001001101111", @"DivideAndRemainder test 97 failed");
}

- (void)testDivideAndRemainder98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"21857088926010294999072015703725823243238745588459869041785896571620849721774925437568940" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1013851053426293441103434867012763780832901005435950194954222274212163275343417401" andRadix:10];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:10], @"21558481", @"DivideAndRemainder test 98 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:10], @"253889562948618996088493628516664485087888040046918999803241137781386092923041059", @"DivideAndRemainder test 98 failed");
}

- (void)testDivideAndRemainder99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"34d195fadde99a43155c45a7ac87ae666a2765b16c5ecbf91386d26157273dbb2b3bf3a7ecca" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1e889d8ff61130801251e585d3e90c2a6ed7d556fa4a6212e698a" andRadix:16];
    NSArray *arr = [int1 divideAndRemainder:int2];
    JKBigInteger *result0 = (JKBigInteger *)arr[0];
    JKBigInteger *result1 = (JKBigInteger *)arr[1];

    XCTAssertEqualObjects([result0 stringValueWithRadix:16], @"1bad7903bd1f6d67b4e5d22c", @"DivideAndRemainder test 99 failed");
    XCTAssertEqualObjects([result1 stringValueWithRadix:16], @"1a6ca6a067452f27663ef20d59fa82a5d0ec41b380e36bca89512", @"DivideAndRemainder test 99 failed");
}

- (void)testPow0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"52da8e745c2" andRadix:16];
    JKBigInteger *result = [int1 pow:69];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d03ef6fb2825d59e5ebb1a693eb855a05203dd2dd2c5a696e6464bc9d290a26a0c74b9ec00f1f4cd65ce344f08e698f90cce0897f33cfc003ffcd7e90fb4de2158247d29c6f0b2a7a36bb358c551ac79bf6a7eca5dce0a5dd12436ef3afd1436593c7927c4caf5d52871fef696cea27e997a006a4ebc5f1f954e1a2d3e609b7a3537d953f009ad2e290b72f8887d377a1241e7b92b2aacc4431c5dd1a757b0eef56c84032a98cefe7eefd80c21095adc93b181ee9393b081ecfcbcd31054cc600892bbd2342dea3bf913139f3eb9b46809f5dca9168a6ff6d11dd3fbc39781e0223eebac8211ea6741982ac49f946710bd412f660c08dfbae6c06857f15f4ba571c6508badf4a3c2717a27b14afbaa9749441dcbecff522eeb2bf6e76593404420fdb7d09b91dc923212f36d001026147fa0bf59004e268e1e58579530cb138f2748759eb095014c0675238142c2c79b4b046f5450f686cc9b1e08c24897dc4a673cfa1cc200000000000000000", @"Pow test 0 failed");
}

- (void)testPow1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111001001110100001011101101000001000100110110110100100111100000010001010110001001111011000101" andRadix:2];
    JKBigInteger *result = [int1 pow:21];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100011011110001001110000010001100110101000101111010011101101001110010110111111010011111101110110110011000000111001110100011100000100010011101101101011110010011000101011111111100101010110111000010010110111110100111011001101011001001001101010100001100100001101101000001000101111100100110000000011011110010101111001110001010001111111000111111110100000001110101000111010001111100111111010111111111101011011100000110011000110011001000110101001011000011011111011011010100001011110100010011110100011111100110100011100001111100110000000101000100101011001010011110110110001100010100000100110011100110000110110110001000101100011001111100111101001110000100110011000010000000101111101010010110001101010101010100001010100001011110101010000000000111000100011101101011010011101110010001100000110100010110111010001100101111101000011101010101101001101001001111010101000101101000110000100000111100110000111011000100000110111111010010101100100111110001101010000010110010010011111110001001110101111010011001100010000110010000011010110101101010101101111011001010010100001001110100000001010001011001001110111101001111100100111001001001001111100100001010100110010111101000111101000000101110111101001101111101000000000111111100010001000010011001100101100111010111111001110001101001110101101101110000001001100110101000000111000001111010110100010111111110011001111011010101010110011100001000011110000100011001001111001011110100001100110001100111101001001010100111001101110111000010001111100001011100000001010101111110111101101110011101000010011111010001001001001010000111001110000010000000000111000000000100000000000000111110100001110100100101010111011111010000001110000000100001111101011011100111011111110011111100110111001011010011111101110110100011000110000011001111001101001111101010010100011000000010101110001000001101011110110000000010110111010010110001111001000000000111100110101010011100111000000111001100101001000111101010111011000001110110000001101000110110010011001110100110100010110101", @"Pow test 1 failed");
}

- (void)testPow2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"624" andRadix:8];
    JKBigInteger *result = [int1 pow:12];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"35647247252124226144623232100000000", @"Pow test 2 failed");
}

- (void)testPow3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"73" andRadix:8];
    JKBigInteger *result = [int1 pow:18];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"166316705053434060062207757160001531", @"Pow test 3 failed");
}

- (void)testPow4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4a" andRadix:16];
    JKBigInteger *result = [int1 pow:30];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4de715bae10f019d0bc880530de3c81a127c09a40000000", @"Pow test 4 failed");
}

- (void)testPow5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"21" andRadix:16];
    JKBigInteger *result = [int1 pow:32];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2ad4f39a164e3f6a5c0df916d159176221137c401", @"Pow test 5 failed");
}

- (void)testPow6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"315727537274517556252162706" andRadix:8];
    JKBigInteger *result = [int1 pow:89];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1021666764257205730713430325003430021146002212174505777753471300536236101044575461645353753132264264540217434463446006702464024013403402761574342313441730752055050725456651523067266055513200331114122626233420644223253720337362571620037231067003463700427320340520365022264776461407362470007452140404650373376361427074275254561410053116327002076534431642231401423066564617472712265660710631552460311420377501326517370747532613544306765224772441441767715202222012500353107175715131263033537341225542663234542011257732531417157611003232647453767437475677636721012411341452414606326266215465672572453655344433644053501727704353667355776664234752154476714625073205340454544236030115540764067554552052406771727076472474251200600336731551723377173772420674237712651407423436500761534223114071206263530330552156745354250644701177427763313621025165311271662350360761536557116666734767733647722620674662444723607105677556663677347551125430557617553545516750145467234444220351717067215651413454756325457506771107510412327342040023152252333601754663436412551045052475342375350504451773170706205603521277416015666212332555653512006460756654261750551150555121371162232406666350253530025241742760062236046772305365302637630214765267217272630003254351604441547724630503063564026330475624615544342237145001435000123144215566144603005030613345604072556640673620405132524110444036473757521371452030664735331727635744203717065224045415326312507431245754203250751755152603550366353443107627327300453175373230067655717404247020254231514743423020124136777502757755514012211223505161154634506276004154745017606155546263601331474203045100417560011751406416531015220211543526235141045155467065661445414227122747346726612520052552405342112752242602452712126266316210223474503624265057014610416636271067762407101737743650271606252511276742505671131274023266667504302416666335545156304651123147505022313665635655105757065353160615515373124610565076030501514556417474033573470074645136471173347142737156657711667340625550057044220661733550547730101052522766427212167022034201176134016015421156150115616175156365625032767341731163435613146320745436443004522461452104574721157570225374451070226653543466302125542613502741303441441270172410221354345233127403101614107045475441110266402477554016473627405002254522024126350631776430740164573536264077157116440660253561301400000000000000000000000000000", @"Pow test 6 failed");
}

- (void)testPow7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3cd1c46923199663fbfab" andRadix:16];
    JKBigInteger *result = [int1 pow:85];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d721d38a597f03e71ece483bd71c9092a0624411cbda04f57d4583b08a90e58814bcb9e7dc37dbf58515db55eea4c5f23c5ba7dd6be40bbe54f24150fb80d8c6d0e2370658182a40a18f8ec5d12ba99a63435d7e80eba4b245429f9f8412b5afbabec796b4854445e331f8d9ef59de720a9fab0ab9f9d35dab915d73b24d41bc54449739a3c75bf1dad2c47442d41474a7e16c5f6813f51abf1f15187071fc7f2e937a0a6fa000cdc317f189e3aa91e4cb641dd9ec39649620c870814339d0791ae24f45569837ad2809fe04921cb4474ce1f9d4e0d51076430141708e8ae2e6a682f7d6685815405a8413a99522bef37e57229257029840e35a5f3e4ead8e44d16e9e6ed32b164889f6b236c8cd12ea8d96ab5317f8e98d4324b5603362780fbc1963b650f46828fc197a6749621ae139f40eb900c205f8a7a8690ebe7b73fe7198b6e51f6a34b87293c614ea5ad90992572d81f3ae00841e5c9932ab07e5bd6c7e5cd58f671309a0119bc0792428de217e8f66dcb711dbb3b41ce4744ea75332b6a880f22cb0ef7120e7173c04b47b02e6242158cb65936c0fafe02a34677e2703e8303f191a2bbc1a7fc7623f242650b2629152df03b5af263c1c83dba1f8a8f09c13c64c6a77f8e571f2d9e9b950c1e4075fc17aa5876bbf0cabf7474ef84d2adf538cf4394534ba3dd14dd48650e5815bef2999d1eeb5a2dce4024194ac5c02ac93427e6d024a92db543ad9c5b1f08eff42ad7375b631b33ddf9dd4f7b1d1c851cbd8fe2da5691bca8cd60703f8c60af7b0dced79bc256b1458621ae94138bcc87c52e97927e2e1c8f929e19677fbca3151e032c60d9bf694cfd9d6e5d35b9d808ac0a8e66e6f8a3f0f5fd212f72d5d3db7fd09370e44d2f54b598dfad29c7d0a8b31fddd8e70552ea02f1d53fc360dd5c1ad9c79d28ddc2c3f367c2d795bba0a9e4e81b085a93058a1ff8df88675fd99ed09513a3149dc9ebf1ad3fd261b21b40daf642692c5f5b5742eac69bc2ac74efad1cea6a82ed343febcec40313c0d65c503bc102428cba447e724683cb96de455a3460e4bc3a7e132b9e02a20ba8fde9b9c33d3ab17877ca001777e3995fafc10471e31a0f04736073d678d3eee9fa0046749f15b18767615211cda7fc306c621843dbf9d718a48feb8b23a1b476353727603c3656f4bcb1f35464c66bb524f58ab307c34ee0e059790db73ceb2a03ad09c67b", @"Pow test 7 failed");
}

- (void)testPow8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"214042" andRadix:8];
    JKBigInteger *result = [int1 pow:36];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"31471766151466036241536722141016425351613171251062000464275202656420510135612737610616452046447643202255667366331520200123775241026666604433025334240512703065111052436023506033464101000000000000", @"Pow test 8 failed");
}

- (void)testPow9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"43360016" andRadix:8];
    JKBigInteger *result = [int1 pow:41];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"21001001052154412143010657754004270155417516345663622737300673161711101715021656720022744044232463423151251646237443471665125241550143015522030513523137204106471327665135041241665325716374775627551603621367571343343313007625714534252435137255007727747162375211657071375676213552466065263033213573244304340000000000000", @"Pow test 9 failed");
}

- (void)testPow10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"271226909071218" andRadix:10];
    JKBigInteger *result = [int1 pow:99];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7942270935160855005896376968211259351106283627335097378900111134050721907125651639663812935617230837444174966937096279579837732397708771331754237640515097345295995779890799217208190179741024935652081526216885272723418735213265473150738296385861690064083220612130521810356807516870675687847085600992037711009269486215194246864041263604328948806560540964348731656030299126063988285338725548948234675009788376926019802640662915751538895499952449443487424403314076696087758792880151637180246955072912966118985662712039507007261871316414412367450588409349079864987497850158579038334035878774950512506406228904291534855872806206551788134502600633324797540427499729724854246280441864977903022953163798585385322544313305757696733207826401006836306293679244638702197022187033498016754985562476786153824695683318451499749149286329099271621845154075203044771270184800453303398217546581525433828753873510210426319026225163884994287305608140951185219922576317133316580169610152665022286111508106222195676010090131198896677769218313018781785987580760946491972033381342745750630048345057360457062189058109620727585305417377201878299864530777829535925720129418919669463556304433699894287510247613607510198263196518554987510719951264110842526078745060724379603459902881035435068744510556392537269313041149540458533931910344978747680917755797457829909856177065236837693267292637810613159099431784645297104310927785950892042194831808612499122552832", @"Pow test 10 failed");
}

- (void)testPow11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"261617bc2d03" andRadix:16];
    JKBigInteger *result = [int1 pow:39];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1bcbcad02dc09203092ad04924fd91b3e6112e22d62c0235d20415eab3e22522ec3daa76f31a428799eded31f444ead17e289d4cd49d6458844cad91f73c7e20b5f94c2e241c7fc46e3e7e84deb00fce3a80660b854faefe2d204dd6bc95acbd37b83ecffc112775d0e0c80780111e148de9c3246bb8b2c5dc04008aa857a0b0785ea2d9e4955acf78c30825eae90fe23104b3a9dee535a69ba4144f1ae30b2e42559f6332652bf7f11539eca40bad1c84c1c2ca8292fabd8d646977f159f904b67be6068b53b10dfd509844e75cd3585bed88ec5b14a86368232c1b0b", @"Pow test 11 failed");
}

- (void)testPow12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"400134503655311236" andRadix:8];
    JKBigInteger *result = [int1 pow:21];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"100751613621617412725604644167151727662217216420270514163152177371637217020161604450471130232067552071400114447526027743420506765732170404027621523361144550514532535274577510506455726374416041455563326000276604243765565322564654041042262416337510140511275455473252653177650221155125726531522301243042227117274427150150117410235143304104221421214122115142230124606170000000", @"Pow test 12 failed");
}

- (void)testPow13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"51625024363115101622371" andRadix:8];
    JKBigInteger *result = [int1 pow:58];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"120663010171304654467245302103205562121622440654401376263504570347055173715113207032101114134164636516242365241644731344321450676436276325012104422054514116057261262017334766523561544556432203742014104750115657622370524343437145054774222211734624430677057535730634450211651137235571327007327121266023103113331040435546224734507346310105237553151437461670024617444764462171475633100340032470373617144431556023561224634074117374275662030563107610665440723421424504443633233127723663661560302575514510027515323146022062371410225324403206406215767125345120443543542647415374016435110225570005727660461112370004256732027121255073106471223603710201220550655360152343506135277053135454112003752633014052000031064206467761425771537731510135713314425200127760544451721260456177440422233024527360436305346051674474443567501202154561112460752730065446430276153152443173420010231663365303717751407242005671002717766036240244757031725132457216516173735312734773020743577533431727227126643742603407711223620527426714375214242032602140164100023433276027522402632277574764235554703025145250004773100277375735334407544115407171220056521206262721554332022015354731367427765446612016201073606044712066253023263432155202437762010322261647032426111716156376100147372140746146153455034511424131501621643745234226210773613027327350024721671436561", @"Pow test 13 failed");
}

- (void)testPow14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"551760" andRadix:8];
    JKBigInteger *result = [int1 pow:17];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1321550215775202524776617605003235243722451341563676264124475755115171364023740000000000000000000000", @"Pow test 14 failed");
}

- (void)testPow15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5221541044445706010" andRadix:8];
    JKBigInteger *result = [int1 pow:67];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"362045521421567351443245416601773032615555512713467327572171227570720470235425232502301772166363622136513037256070704604061337555355773144415230115231174433453205702427333203620516072633654265124711605406365543574722725425705455312511741725504370166430040225716043353741004255406754671366406311730622645332547763405352756243404377017655314532563400042204402473453674403572332650237744166635726202307433737175413473073072134066674102275306323150035642137602624256137215076621343105737007703733423431166710731762114764023414775562036075255404404111502733563020546546307625205757026041036520623437663065442003161621323751245046223401473567033427307072236740300315536314403717147271632103606104632425063223050333550664472010346250134632743023035411340066405773700205416636001745700000271410273325227216051451547536164674525076311314665767415623005637164644121652661472632436063267140640530142144257014343036766263322057427322157721715644577243657672236404146321301434230361534131704154464035162152355634315265655231656332447552751055341474453447465063606535602507100140763341216076545630253353677722706037533251747053412247552474006016174104111272621426353041277270574657737772525733713270547722010000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 15 failed");
}

- (void)testPow16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2e5570047e187bfa089e83459" andRadix:16];
    JKBigInteger *result = [int1 pow:54];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"723566ef111655af44bd5853496dcb6042aa75808a042a00d6ef78f2b4a202ae371da129ccda46572ebcd8424d61e50132e50ae3da39f61ee4e103e91827c2c63892940ebc6ac233d142a8e6ea68cf1e5848cbd7ebd3490d1951af03d10c38b85600ab849fead1554390fa310d55ba08705894d01b3b47999bdfe6a4873eff0e051500dfeaa7152b9807615fa5fdd1f9419d58fa206df737dd54661f354a78b8e61cb226c087faa2ce82329fbfb3c9c6a0ff07f4f5321fec5e1251cca83263fe6629d5f87b9137998280e77ca638d9bae4e1a4dac172488b43ffa7fe4de1e3bf7235096717afd6af7c93ac2e95d44ee9f3f91ca4a20cf5cb919c6e454fb4c7fec6b1ea16e5f45df80a6e0e1c1ebead2572fbdcaf49442975ab0a2f9aa7f43ae7f7362e090e0daa1ad59c75285934ee6e47d9bf0c55e1689709290ad2371b5e753fa690a58c30a2178d38c41c756503add133c531d9497eaa04504784861f693899f58415a59873fbc8ffedca588845c14c674a839e3fcb18f402c075e39b3afca1332b0bde6bb30639e084d4cdd09dcab83f7eed17b85bf9196a4b08804a11cb329b7352072f9d2a6959469947544e1cc140747e6a0780672006383cf9a47281d4fbd56cc3db0ca28efb5ff577d8a710400d1ff3be9d60edcc3177f1eec48399bf4e5720c61339cf4a7a282e8e1b7bf98603da5eed8b6caf09852a0d87b83eca5b2f94769d1e0bdfb0b106206f4233437f7186aa9e083b9696c17b6705b99cd87645858e46f2f864f318febfef65663344bf48cdd3cd3c04e50de74b559497ed728f02a0af348810aafa54515dcb28cf8730bb42bc5b01b782a22cd85820ec64d7f7ad7ede6bab3efc9607981b8fdf6a226d4ed9d0ccb05a1e2287042d4f2d297975da1814e26863cc5cd551759600f70ea51", @"Pow test 16 failed");
}

- (void)testPow17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"226550303771740370420247143" andRadix:8];
    JKBigInteger *result = [int1 pow:4];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3657543556006135577212311537121707753536662322534117750632351712756573017740711556406204166151536625324321", @"Pow test 17 failed");
}

- (void)testPow18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"b4eab" andRadix:16];
    JKBigInteger *result = [int1 pow:1];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"b4eab", @"Pow test 18 failed");
}

- (void)testPow19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33270107322" andRadix:8];
    JKBigInteger *result = [int1 pow:80];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"17074424642347515266576262725630132301333532646311420616054232414732142327407410132460137460667557713225125573100042655261475515320235375422270602724073157061175137327067533737653633501310000717743652130500452717504053316306427237576420620505124275313242702541733627047145057235773176064037564115465026411067023067614024203216467775664276012577600302343205341336646400754763274272564615626021015773013526317157107730512622622344456115526430666140157127600066511265306040770524172613661564775401667443743117672112460354614476404606534766314246425526647555425255747704662553222760627437004504747526212552644177151034100626717374560166640107564444364736176206601444444001207071065157437627246716005162064015142325241623606466711604744231515343647353421776665604470576057511750573617656473650460637701173357007611366100435500400000000000000000000000000", @"Pow test 19 failed");
}

- (void)testPow20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"352064660" andRadix:8];
    JKBigInteger *result = [int1 pow:29];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"11445440503765037264345614414201317562305075366370315205160001743510253761621003506311727224756206163364574662673072724535122730763362312735042210663525222433233235631510321502655772565647576737044053522616402745400000000000000000000000000000000000000", @"Pow test 20 failed");
}

- (void)testPow21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101010010001000100100111011111110100101" andRadix:2];
    JKBigInteger *result = [int1 pow:66];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001101110100011110011010011000110000000000011011001111110010110110101001001000111110001010001000111011101001000010110010001011111011101110011101000011101000101010110000000011110000001010100000011101100100010111100111100100011101010010110110011111110000000001001011101001101100101111001011000001010110101111010111100110100000010111011000101101000000011000100001110011110111100011110010111110100000000100111111000011010100001110011001010100111000110111010110100000111001100110111000111100100101010111101101001111110111000110100000111000100100110011010010111100110011001100101010010110010111111010010101101100110110101011101110000100011110100000001011100101000110101101100101011110001001101101100111101100100000110111001001111100100100010100011001011110010000000010000010101010011100111000000110011011101000001010110101001110011010100010100010110010000010100111010101010010011101110011100101101001111101110110110100111100010100110100101001001001010011100011001110110101000000110010111001111100010101010110110010100100011011110110001100001010101110110100011100100001010010001110110010101001111010010001000011001010100111010001110011001010011010000100100111011011000010110011000111101100111010111111000110001001111001011000000111001111101010111111001101111011101100000110111010000010001000111110011011101111100110010000111110111111101110101110100001010111101111110100011011100000100101100011001100111011110101011111111000111101101100111100001011111010001111111001100001111110111000101001110001010100001011011010101110101000111100110101101100010000010110100110010001110010000011100110001110000011100101110010001000101111001001010100100000111011000010010100011110110001110010011110000000101110010110000000010000110010001010010100100001011101111100101110100110100001011110000011000010100000100000000010000001100011101010001001110111100111101001100001011011010110101110100001011001000110111000010111101101010110000110011000100000010110110010010101011010010100101011010101110011100110010001111001011011110110111011001100101101010001101101110001101011001001011100001100100111101001010100100000011001010010100100100001001011101100011000100000100010010001001000111000011100010010110000111010110001000101111000010111101101100110101110010110110100010001011101011100100101101101100111001101011010100101011011101111000001101011010010111011101010110011100010001000000001101111000100100011000000100000010100010101111101011000100011111110010110000001000110111100100101111111101001101010110111011100110001111010101000011011110100001111101111111011001100101011000100010111100001001001110111101000010110001101110011001011011011110110111101011001", @"Pow test 21 failed");
}

- (void)testPow22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"785569356247523954240" andRadix:10];
    JKBigInteger *result = [int1 pow:19];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"10197791917512021305071957022967050261532775162441626338664119597156984802857318815208890479975910214413856002735036899336283924192675972327856683235705315761848706717200541316327181626830208659457252095919255259049679029265063010887484444303237176359852144970171972831972446384876632629872905022270482969800435752749093750013481205970548561177847597377858537202567667001841418240000000000000000000", @"Pow test 22 failed");
}

- (void)testPow23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15120004750046673472" andRadix:8];
    JKBigInteger *result = [int1 pow:1];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15120004750046673472", @"Pow test 23 failed");
}

- (void)testPow24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d4feedbe97badd5ee153c5" andRadix:16];
    JKBigInteger *result = [int1 pow:86];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"23af964f474a073bcd0c95f66397ee686fbb5e21a9c356094a32da8918571a7fd36e74ac6575ce1b1f6a384f40a1930523f659031a3c33488178b22808de5a796bbf7b32ef0b2592d21b6b87ed31ad3cacc6e0f8cb359931874bc3d47e38e017ebbf941df7106388ed1c82c0d8a9798bc16a40e10e19d52f75c18935d9a89a946a1e28c54d2354d5f0e5b1a370e890180eb9d542c2f98dc6206164a5d251f20c7772cfbb8fd9cfcd1d184d1991d9e47c1a8b3cf8d11e9b24c8ddee7130aa0094cc4ccdc04646f9c3da9c712fb255d5ad093f1ba9d9a3466a087d6aee1bd943dc9256a63b77483bcefe6cd7e42d818eb96ea4980d774ae787fd8dd68b31d6762ce3e95e61801a178af262efa7586123d06d03f7e07486dcfa630560879697407f6d7b55c07e6e73b36082d2de09e7111c36693ab0e2e60d0d8acde86f2d7ec0bbb6ded57beae17c2d75f0f30d32eb84ef67cbd10c647df3694aca8563667ef15eba7e8d9f66abfa232e438119d55dc33dce337ed255a17e5c291eb0fe58db3291b272050191814028e65855e49c4c168550c1ab81d29cb2fb3553f74835e4f085d86fb7b5ceb76ecfa19cd42fd6bdfcb7e972606d16755f444ecfd76e9fcdf4641583bf5816e04a3ae2a3f8a8dfd43f8892af368ac6817e4a5b7dbe13a5e845669ece210a3312b11ff37cdd79b0f8456d42ee16445ba435321d0aaecb673528608ec1eba90d816a0e706218b4ad17722bad4f4fe075f75101feccebdc39822d684ba9447b2e1ec37a7b1b077be383977d724b87b1c14a6809627d85c0523443234290ee3c5d95519c0efb73f92c15c1046c8da96bbd6151492a41b3db63e376a0ac64ea8a83bd7cd87c9d4219e3f553a425dd64c508da6f77cc84fa78cde6e7a03cc5e1d15bb503dd59b6b646e3dcf4dd061b101c9f8a001a9b6ea0fb0e28793952a086c4b176b2a010299e17f92858f32134aed7fb0c74cc40576c86baa7a1767ffbed0417ceb39ac1d716f2c79e3b8b22a386c8ae664aed53f313aeed2815942baadcb9dbeeaa8dbabebafcaeeb0db44b768988d18d46cedaa3205d9d747f772262faf3c0b064a4c179f5027296de95deb3bc9e3efac31524fcccbb80d9a5349f4847e8e4f66bb677924e79df85b774f9d564beb44e78b0951e688b934ba9f6478e32a0c28abcfd880677c7a960699bc410b730e6932741264291ba665c3e959ed462a1b069e490234973a4e52029b6767aa19f6a3d37339fa00ffbc7fa76b41a11b1f01deb95ac3ebad02fd2801028b4be8871871e89671822ad145e85c5016b3bb255fe735467f5ca31ef50511ca16af6a7b1432bcd837744c57cfefdd98cc3649", @"Pow test 24 failed");
}

- (void)testPow25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000000011111101001100000111000101000001101100001100001111110110101" andRadix:2];
    JKBigInteger *result = [int1 pow:23];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010111101111011010011010011111100110101100011110111101001011010011001111001011110011100011000110000010000001110110011111001111010011001010010001000010010110110000011110010111010011101001101111011101000000011100110111111101111010001011001101111010101111000011110010100011011011011110100001010100000101011001011101000011011000000110001010111110010100011001000000110001010101010001000111101000100100001011101101011100000011111101110100010010000001001110001011101000100100001110001011011000101011101110110011110010010110010100101000001011110001000000110101110011101101001000100001100000111110001100100101111010110110010010100010100011001010010110100101011011010000110110000100000010011100101001111101111111010000111010100001000111110000010001000011111011010011101101100001100110000010001111110100000001001100011110111001010010110101110100000110110101100100001111110001001110001010111010011001010010010110110101010111110111010001010100010011100010110010001010100101010100111010110111010001000000101010010001110110100001001011000110110100111100111011000111011000000001110100101111101100000100111010011101100100111110101101000111101100010100011111010010011110010011010010100010000100001100101010101000011000000101010100100111101101001011001001101000001111110000010100011010101101101111111111011110101001011111111010110000110010010111010100000011101110111111010000101111011011000110010011011110000000001110001111001011111000010000100101010011111110100110010011000111001011101001100001111001001000001010001010001000101101011111100000011101000111101", @"Pow test 25 failed");
}

- (void)testPow26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4064066743076263242" andRadix:8];
    JKBigInteger *result = [int1 pow:69];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"55223464225554031413442671233255212042073675741122212045761252426117333237630400055236321641174746657052765050755466332154512726412561302067460541573576042324253464677145645007614657151754254600677227115402345120507721267760127565465206666531722254200242151556371112355421623504060274333251442527311622207613706140341101510420476700632225623265220075407121124026654202170776432075203422475175302710212604112173530132501752137235626431217021122352247720355470136000002141521124621335133514647715544235064336753572442014533454110346231231150733255432366106051522304477646562723251025434526251440415335302644277674432650354536456272437613720123700266640502010755111432751202013456750662054301657761277472730753711624167366460403334237525663710054506233041622533175355713060621425501177414156701463606656635034167700016255221712021767044732140450177215613601623367217730336176220054741771504727724452242365656625737425302472261767747645373345430322360567133312205313611433527356775745457557506304467435163337116345733134724722273617354045542232574426374235141546312562636252070014722730351010307156320001705411535730025776314052260535024411061312315203124360655042455764200617262322560201173240731055344125723272223771354550622517043761747167621676263636663362710124722100000000000000000000000", @"Pow test 26 failed");
}

- (void)testPow27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"c1cbccbf8ad89f2" andRadix:16];
    JKBigInteger *result = [int1 pow:49];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"13fe157bcea27528b1c634d35b0f04601f3fb9c5e822ad8a85d03e9cc0f2fd84c5d6761f6ab423b02069f342c6e7e19978a543b44bb45d02d3af7e16e4a234299ba47a465662eb45f1198e5245d81c291624ca225035f90c4a1d4efe7260d6a1708b6689de738ec3990b707b7cdce91a328f17d726b62c5c810e17b22eba12e50b23300fc999b7b9bdd9d90f7cf1655632a7c15deb3a3846c3215cdc8c5a0d9b691f201e7dddca667895e2f70446da16eae03313ced1ccdc22271bcb82bfb62a554b8b07e0578d4a3a89219c4095b5a0b0e8281bf7eabc44b14cf9c56b2ca78fdfed15b82d456ef10827560997743feaf936b1dc06dc0f4325d51cfcfc6030a02b5ed9cfc93aa5edf032980c72785fda6e912674d7cb972ead47e045f27630f9122743131897c41d2bfca26de77bd3f50ce16569a9da4aa4b99ebf0bea8d07cb2e63df614b9f4ac56a604098f9d9c921a597350f858f826f1ea0ca47bdffc186a6b1ae52b1f52f2000000000000", @"Pow test 27 failed");
}

- (void)testPow28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4410107244706617155655647557013" andRadix:8];
    JKBigInteger *result = [int1 pow:52];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"42237724633450556135530704531060741311143772010447663541443045543557315521654302414474431252671340613327625566727263731022137010552443252563476751630016335003326676421051316542670737354354204706420146302377656333511400406256652637544233067236204573750665521355256425542572361431311314406712340167605410717154512012442206162063505121600233261272777331174620017245311765562710322544425010605535047650446715207620717112160570303320315323533071647020633744445311153477431152437001641263521175553162511472725317574701102207023464134457333011527326404431605045730204501520601503360116025630143576207103302021121533274251421247626364634566377301153654661051175027723425254336020513122517106667715416175701716411344140426424260246356402547275667375162167005442601421655014275542633740705223255521030042506750571502515771435652414110277744574704464077274063304250474237575133167064556674236373132244521530520143574664453151157555112753137161175304426443035674231254351013624174041204572552233744470043634747433621501771504514250062204315056717013670425233160122720342655602603471142637123645521415127053502101304152671511571563040474102542152617274601646320004255000410200722437325124125763412237154243562735376230136717220307741655047642160647731512114125703365326303570626120653736534356561305054321076361654152144404217346574114456662411204421632467452264461721143760614630302007676227252075572165640124350076115627042462451571605364024115164550776001206650007335341472704504662421214071203736476422114364374743174667145771013525433117671767564551346740010401733055076203125145025427563323637336241046561", @"Pow test 28 failed");
}

- (void)testPow29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"674128047460092" andRadix:10];
    JKBigInteger *result = [int1 pow:58];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"116696814474427556310776966274189425897164260729737777840827943026563060291558199497580816973788216437684753693483904685740690293874741037498367314944874617529653497663962474562709435748371264559087517402955382119932074359920092401533490673353011856303952146530998040449937860731264018330816271490248585210480378975731879841793278473165584808047410978443566400123877041364915711883945229078440819185234533438018487399781542335782759182623048098655984392962591003847875296323901672718786517031567071425165964662406541017645295070713781102006547678991610951828172959356089143116234432622945333636533436968872678568845774170769558546470274778767560216421521530239144867633647834174774631665934435034668149340150966047935370452597501270933627248498363258120015259778969835899088617101682592384431050039651247496611992064597869599027532802811049349793810898049040384", @"Pow test 29 failed");
}

- (void)testPow30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8335902510189968037737979527" andRadix:10];
    JKBigInteger *result = [int1 pow:3];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"579239113915870571690478171291577031181100062974672425780377186308267109553876436183", @"Pow test 30 failed");
}

- (void)testPow31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11010011001111100111010000111110010111010111000111110" andRadix:2];
    JKBigInteger *result = [int1 pow:20];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101111011111111111010010101001001100101010111011101000000101010000001101010011000101001111110001000101010011010110111010100100010111111010011000001100010000000110101111111100001011100010011010000101101000011011110110100011001000111001110101100110011010001000010010011011000000000001010000010110001000001000000011100010111010110101011110110010110111010110111011011010000001110000010001111111110100100111000011001011001111010010010101110100100011010111011101100100010100110011001111010011010010001110111011101011100101101000100000001101001111111010101101100110010100101101101010001001100010000101001010010110110101110110000110000111110101100011011111011100101110100000111100100101101010100100100100000110100101011100111010110111011010100011100111010111010110000111010111001111110110100101101010101100001001011010001111110111110000001010010001010100000010011000100101010010110100110011100011111010100011110011111110110000011000000100000011011110011110011111000100110000100001011101111111100111010010010010000100100010110101010011000000100000000000000000000", @"Pow test 31 failed");
}

- (void)testPow32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1347756972586379467561" andRadix:10];
    JKBigInteger *result = [int1 pow:82];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"42476640423632569627731085805345385232521015955086765662250394794250678092915684866399605333609787857498537611023730109336917194009153606447114945674392101398121753005696040501300529115820715371561483926809976397745158573862042079298607770858167704314752627945953559360461922083154294522269731118214220430770472542302806476527360528170542093353682178388257654177425814174465394261891100921844582949381326225820429006298022427492022996900924065180322215435451710284654966999136060264612708323790068630198856579399983151373058171674407226280380745811060797215067087642753969052436886388807256671562788964998527404439196697240609050892814401233741738787119084486868196473345100606181985687144431762087496728894955476160367296292537394270915934168267864756494420260081573304496828544785242729130347473157331198106856226173689109758423044161668024066517795351761447551541746981050610330991514791213034787710851262415282190649408085210121380009860190992789897917739748729111725032011977979084006521182522247017244713167018890455088772061563664688104004046754101917077560911753919475576094266945644701808227412831437188860237788645978674628167722217031958898694822279379063602143745905547983291281253624248632623486299612349366439084656270776509301435546710003245255272148428129609117061140322577444909267744187267961768228475513052333526967687477330004394172800569242638416573060135985984989130926743534730064827273334065896871740589806911564022502955045639246143840746693776610582647187233650025206101031667077345750750987533365031506281065586561888281027848735972184187914821331747314772651092860549854359257168219465102983012925315301377131326670929056292401721117383631156138315651268950787661456601313823273724447285342800398114805521", @"Pow test 32 failed");
}

- (void)testPow33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4aef60a2f45" andRadix:16];
    JKBigInteger *result = [int1 pow:56];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1acb6bdada9ebbd5333611491bad091edb00d9e8b43343414f82520c8658d78986ffdb65677a1f0c80c286b950da19048bff02a93e9b05adf3bc223ce1113faa71ec3bfb66ca2e5895bc2067766996d90650a400854abc9471e94c428e84c4579c536b4f566fe429fa2bd36c96620d134499668c0ef5d9447630ed49c0d26d4ce3cab9cc4a90753f996fd912c9b0dfeaf6235149d0f53682ec8122c9b51b58ac8093af84d28d063726aeb7abcf6bd6acd517428f5c367499349a8aa24b9364d34da781acd87964f92da0a6927ec390afb40f1543f2c1f6eed0a91d220f29901caa55c12eba849329535caa10e819ffeb679d4c1e56080a31a63e0c730a33ce5e4d3e538ce49501f5abcf211be8f842efaef8ad8610774c127303911459ed6608358cd7fbcf2deb21", @"Pow test 33 failed");
}

- (void)testPow34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"207570" andRadix:8];
    JKBigInteger *result = [int1 pow:36];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"10207777417026545556354342632334512344122674400276251325425772240511650546024250065265333021074213271072214361513022661743555046512743135264307501634567670101000000000000000000000000000000000000", @"Pow test 34 failed");
}

- (void)testPow35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"21f42986caf3b" andRadix:16];
    JKBigInteger *result = [int1 pow:65];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5e2fefb5d9a2d8b7aff3a84a13a180d80352136bb06c25a8ea15652d79f245f7d486d0072e0defbb54ca5a6f48b01303de66465000953fecc87b93a0f0fd1c2d39c5f28519d0e4c2257fb056d4c122bf21e35732523c1c8b402d7e207c8cf2148603e0a9b049f728b001cd00526d3c8908ec1abbd28a7b4be69c53e7e4f76c171cc24691d79575e96deded3d1f87233bb696d9760ee15cd0f81fa790d4f4b1b10a6eeba8d5c9a90527e3b2080bee069234a5d9ccd2c24671ed039ef29d500aaa1c80c8c85931192510c9ad1af8ac696b230c9230d9674397304d508bd98f68fe4d96647b02909015e53f82ba73061facec0ca01b6db2778cbdf6538038ba2a9ce07b6bb98628411b2344d73adb4f83c181113d609eb93bda09b628b9fa51b29b731f3e222b3b23520644cb80d21a9cd56b92a124f2e461307d7f692623aa72cf3c3615eacf04cbf37c742595605d4daee99d45c56f03d09b2735ca811d209077430dcf17ecfda9b21b82a44a3f691817d36c1913fb37eaafd0bd4e6a6ed8d3296bf5f6466549ca7babf5223d04a43b", @"Pow test 35 failed");
}

- (void)testPow36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"721185706645219" andRadix:10];
    JKBigInteger *result = [int1 pow:47];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"212918895748841134023647790226799522410050855177365228173617045463623063478383603552938836753635014086197031146992982566588926297581097976357537675912565899347149993036465861175204174148823249431600813695711790642799382615863956108632612714218309855058039543200753215535153529760967461244229349389412335084448720027530219705463134881302505400810799928060518713282175018117145120873449835509345387206796492701461028071072419860607475340564236873533934985277593175526009488732378457926965964103767246440543627889460117788726879754476222226719769972676710475261077321592021389711676312183663552360446044637568192372895444164116694531239767881827213122328691230614169796374402152654745684414286732924939", @"Pow test 36 failed");
}

- (void)testPow37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011001100000101101010110011001101001" andRadix:2];
    JKBigInteger *result = [int1 pow:96];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110000011111011001001001000000101011110000000011000011100100100011010101001110110001111110000001111001001000000000010110000111001101010001110010010100011001100001001100100100110101011100000000101000011011001011110010111000000111010000010100100101100000100001001000100000110000100011000010100001011101100110000001001111011101111111110011010001011000110010101000100101000000110110101111000001101110100110001110110101111001110101010111110111011101001111100111111011000110001000111110001011100010101001001011011011111110110101100111111010101110000000011000001101000010101000011111111100001011011000011111111110101111111101001010110001110111110111110101001100001100110110001100110100110000001100010110100010110011101011101001000111011010001110010000100011111011011010010000110010001000101010110010110010111110011001010000011111001111001110110101100011101010000100110111111101100010011011011001111101101010111101110100000100001001111111100100100111011110010101001010100011111011110000101101001101001001011101011000001100001101010101001101010000011011001010111100101110011000111111111101110000111001100010111000001010011010001110011011111100010110010100101000111001100100000100010011111111100010010101010000001010000100100000100001111001000110101111100010011001001110111011111011010110110000011011110001010110110010100101011100101001000000001110001110111101110110001101011101011001101011001001111110001000111011001110100011110010100001001110001110101110001101100010000111011010010011111111010000100100011111000011001001111100101100101101000110111111101111000101000100110000101000011101010001011100010101000110100010110010100100100011001000101110000110101001111011100011101000101101111010101100110101001100011001111010010011000010110011100111110000101001101111111011101101100011010001001111001001110111111101011011010100000001101110000000100000101000110101100001110000010000110110001100011110011010011111100011010111000011111010001011101110010100100011000010011110100011110011111011011110110110000111101110000101001111110111011110000000100101010010110000000010100110010001111001001000001111011010110011001101101101110000110101010011000011101000110100000001101111011011011100111111001011101010011011010001001100011110011000000111010101111111010010000000100001000100111101110111110010011000101100001101111110001101110001100110101101111111011110111000100110110011110011100000010001000100010110101010011000100101011111010111011110100000001000011111110011011111101110011000100000110011101011111111011010110110010101011000111011000000111011101000010000000001000000111101010010000000110111000000100110100101100001001101011101011110010101101011010111111000010010001001111100010000001011100111101000010011011001100010110111111111001100111011001101111110011000010101001100111001100111001000011010101010110001111001100100110101001000010010011101100000101010111101100011010100001111111100000110011101110001011111110001101010010110011111110001111111010001110001010100000110111000111100010100011101011111111100110101011111110001000011000100100001100011010110111100000101000001100111101101000001011010001000110101101100010110111101010100010011101001101000111001100110011010101011000111111100100011110110000101001011111010100111111011001110111011001010011011001001011001100000001111001110011011110111111001110111111011000101110100010110011111001001010111110101010110010110100010111000110011001110010100011010101000101110010100010010011010011011101011011010100001010001110000000010000100100010101010110110011001011101100000001", @"Pow test 37 failed");
}

- (void)testPow38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47333504045536424606" andRadix:8];
    JKBigInteger *result = [int1 pow:9];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6427516440442243637615377342720045363437715045035777401460025217005422022774564610566635174032240320460431102366700607001725736751115775630740365040267647056026510233643437643000", @"Pow test 38 failed");
}

- (void)testPow39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110110100000100001101010000100001101000110011101010110111011011001100100010001000100000010" andRadix:2];
    JKBigInteger *result = [int1 pow:79];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100111100001101110010011111110110110011110111111000010110001010000100110011110110010011011111010110110001111111001110000110000011011011101000011101100111010110100000110111011100010100010000010000101000100000110101010110011100111001110111110001011100111010000010010011001011000000111000010111011010000100000100100000101000111000010111111101110010111110111110011010110100011011010101000010011001000101100000111010010100100111000101011001110000001110101101101001011000101000110100100100101001100100010011101111011110001011001110111110011001011000011000010010010001000011011011011110110111010100101111110001010100111101100111010000111001110010111101001100000001000001101001111111010010111100111100100111111100111101011011100101101100010111000000010001110110101010111100110001010110100001111001010011001110001001111000110101101011100100100001110111000011010011111101001101110011001100010100001100010100110010010010100000000000100110111110011001010011110001010111011010000000000111111011000000000000101111001111001100001100110110110011100110001100011100101011111111010001111110101001011000101111001001110001110111011000111110110111010000110101001000100011000110111010000100101000001011110111001001001010010011110001001111100111001001010111010010100001010000101101101111000001110001111101110100000110011110110010001010110101110011100001001110100001010010001011100111101000001111110111100010001001010101101010011000111011111101101001010001001001101110100010110011110110101110001110100101000110111110010011111100010000100000001000000011000110011011101111110001101001011100010000111100010010001011111110111101010101001001010000100110011011101011010010111000101110001010111001000000111111001010110000001010011111000100011010110010101101010100011110011001110000111110110110010011000101101000100000010011010110110010011101010010011000010001100100001110000101110100111011000000011010101000011111011011110001111010101111011011010010000011011110101111101010011110100101000010101111110110010011001010101110100011011100101000011010010101101000000000101100011111011001011000011110001101001101110000010110101001001111000100011110001011110001100001110101001001000011001110010010100101111000110010010000110010010010010010001101011100110100001001101001010100000111100100001010000011101101101010000010001001110011010100111001011101000110111110111101010100000100011010011101100100111001101001001011111101010001101100011101000001100000101010110111111101100101110100101001010111100101101110111011011100101010010101010100100110010011001000001111110010010110101100110011000100000000101110000110001000001111011111101110010100101111001000111110100010001101110100110101000001110111000001110110110010011010100010100100110001110000011011100110111011000101100010001110011000110010110000110110010100110110001101111011100101010010101101111111000100010010011100111000111101000000100110101000001010011101101111000100110011100010011010101010100111001010111011011110111111100001000011101001011100100000111011010110111011101000010101101110111010100110101000110111010010011111011011001111110011000010111001010011001011110101101010010000100000111011100110000101101101011011101011010001110101001011010000100111010010011000110011110000000111111101011000001010010110001001000001100110011101011100110110010100000110100000000101100010011001110101111000001010010010010011100111000100000000111010011000011110010110101110110011011010101100000101001011000101011100001001100110111101010101000010000101000010000000011101110010011000110111101101111011111010100010000111100101111001000100100000111100001100001000100110110010010111000110111011010101001011010101110110110001001101011101000011010010010110000000000100100001111000000011001110101010001101110100001101010101011111000111111011010000110111100100011111110110000101111001111100101111001001011000011000111100111011011111111101101101011011101101011000101001011100001110000111110011001100001001010000110110100110000011101000101100011111010010010000100110010100010101111111001100110010001100110011111101111110010101110001011011100001100100011100010010010110101110101100011100101001101000011001100101111110101100001010111101010001011110111001001100000000101101011101101000001100110111010100010110000001101001001100000110111101001011110000010111110101011111001001000000101101110100101000101100001101111010001001111101101100101101111110101001001101101110100001001001100001011111110010011001100111101110100000001010010000010011011011110100010111110111111100011000000001011110110011000101011101100111000000101011010110010110000100101011010100000010011001100011011110111110011000101100000000100100010111010001011000101101111110100111101011100010101011010011010010101101000010010101111111100011110101100101111011110011011000011100110111001100100111100010110011100010000011111011111100100111110011010101000100100011011010111101001111110101010000110100101111010001000000100110001010010100001111111100110000001010101011101101101110000111111001001101110011110001110010011000001010101111001101110100000110010001101101111000011110110010100001100000111111110000110101001011011000001001001100011001110111001111111001101110011000101110000110110001011110100101000100110001101000101101100011110111111000011011101110110101010100101101110111111001010110111100110000000110011011100010110111011001101000110010011110101110010001010000111100011111001011011000111010011011101110111000100000101110010011111011001010100110110011111101000110110011010011010001010100000010000001100010010101011111011101000110001001010011110100100000101111101100001000100010000110001010011000100001000111010011001011010101011100010001111101111000100011100010010001011111101000111110001001010000100101001010101110100000100110010001101100010100101000111110001101001110101001100011110010101100110100111000101010101110101011011001110011111110000000001110100000001111000111001101101010010001111001000111011110100010011101011011111001101101100010100001100110000101000111010011101111010101000000110001100101001101111010000001010100010111010100110110010010010010011010001001001101010011100110111011010011111000001000110100011010111010011110100010000111111001000000110010111010111101101100100110000001101100011001101001010101100110001110010100101100010010011000010000011010010111010000111101001101110100111100110110001001011100001110001101100100000001001101111000101101000111110011100100101001110000100010110011010111000101001000111011011000011100000101010001000010101001001011100011100111100100111001100111011111111111001011111010100101111100111000100100001111010110000000010011111000100001011001100101001000101100011001000110111111011001101011111011001010101110101101100010101010011010110001000110001010100001100100101100010000001000111011011000011001000000001001100001111111010101101100011011011110111001100010010110100100000011001110111110001001111001011001001111110010011111110100110000011111010100001010110010010110101011001100001110101000000100000010100100100011101111111010010110110101001100010100010110100000100001111001101010100011111101101000000101111010101000010100000100000110001100001101010111010111101111111001000000010110101010110111111101000011101111001111000000001100000011101000011110010011101101000101100110001011111100000010000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 39 failed");
}

- (void)testPow40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101010100000100101011100001010011101001011010101111011001001111" andRadix:2];
    JKBigInteger *result = [int1 pow:29];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110101111001001001110011011000100101111100001001010000011001100101010001010011000110011010010010110100010001101001011010101001111011011011101111101111100100010001001101101111111001010011110011110010101001011100011010010100111100011010100111010000010111010000011011101011100111100110010001101001000111010010111110111010110000010000101011111010010000100010111100011111101110001011110101100110110011101100101100000011100000011000000111010000011111110000110101010000001010100110011101111011000001000000010001011001101011000001001101011110101010001000101011011011110100001000000111111110101110010011110110010101101101000010110101100101011100011101011100010011001100010100001010000101001110001111001010011111101111110000110100101000110000011101010001000010000011101001111000101101111011010000100101010111010100011001001010001011011011111011101010011001100011011110000000011001110110100111110111001000111100110011010100100101001100111101011000011101000000001101011000011111111001010001010010000011110100011111110001011101100111110000110010010000011011001110101111111010010010001000101000011001100001101110111000011001111010100010010100110100100101000011000001101101000100101110111111101110111111110011110110001000000001101111000110110010001010101011111110111000101110010111100111110001101111001010100010111100100111000010010010001001110011010110001010011110011100110101111011000110000011010001111111110011111000000010101000100001000111011001001010111001111110010000110111110101111111101011011111000011111011010010000100010100010100101000100001011111001010000110001001000010111000100010000100110011011001101101001111101001111100001001011110010110011100011000000000011011010001101011111101001111110101011001001000001101011111110001100011010011101101101000000010101000010111011101001000101011011100011111010000100001111", @"Pow test 40 failed");
}

- (void)testPow41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"554fe5" andRadix:16];
    JKBigInteger *result = [int1 pow:73];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"13502c62ea78d8911fa0af956cb1676c79b6b97d382374fbc49e08085cc0ee9ec3b6d8dc1833accf11348bb56814d96c83daf4149108638f63ba1b96f6f2528905631f3a45d30899edf223caf16754593dd02440721ac76e7ee2cb37d70a6e42a684418229f3ecd58216b349b8098f07584675e4598c6e85c95bff68d395428c6883151102278fb2a90ead8f5fd91fab0e81794a5f1bbb03fd9f838c3eddb33738e08391dfaa99c0acd547a4ff1d559e989fe34d4a8b2087e8e65ae3ac5f67df01f430aa729f2d98a407942345", @"Pow test 41 failed");
}

- (void)testPow42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5323" andRadix:10];
    JKBigInteger *result = [int1 pow:17];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2211362420198664491054534307097772921282237758499879328165992203", @"Pow test 42 failed");
}

- (void)testPow43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"839151" andRadix:10];
    JKBigInteger *result = [int1 pow:41];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"754127493739215709162285200213889186738857897838969080415436798901282726392974225336109882694696935222595442432424513586316613845719397747667908813969351685865882723131624204838385352535793696580804709750136498309166858988591830083958156855151", @"Pow test 43 failed");
}

- (void)testPow44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"571631477474630507306107357271532" andRadix:8];
    JKBigInteger *result = [int1 pow:38];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2414565413327343662513741501406555532265273713371633310564636166262242165305237022674731254355520166524213457330346144235024245347112341101766403133443712366752713637466663143733715273161545221707767670440003204423670152401531343116417515542410131003656121161320732523212676424033331157326443152137022516045021126753541716501253236153733155565662235146503071042605233662265603440533621436034037042465033230632210301057621756644071002045145336753225475143023464417304521167113731552303642030044732637647176621223677564342022105651435536570662435122240072657346526245167352247310200152601512765762236171443451537752471421270630174543735231115020677103665605161240275052300326477121441424426005175153433274373322773054105757015317241323776727057626265654223207676245457473435643522263471773404370377171444320062502632127544137475761502307113627547553613613166354232605406445672677336147335633175601160725141326302674366555611172004134722070205003643315156736133075630332211377263554735164655004175361434357442063422022662664401602254440230525555162146022143127326777117165204545403100764021376654476524160753447352240372704676215065302270501113216442472257457571136673172227512751370242711760561073623732551352406517004635743372511446053744000000000000", @"Pow test 44 failed");
}

- (void)testPow45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9b2c5ca" andRadix:16];
    JKBigInteger *result = [int1 pow:12];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a136e4d286bb34df334602e089498f8de2ca0d694002455c2401001f3efd0ebbead7fd25aa3dad1000", @"Pow test 45 failed");
}

- (void)testPow46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001101001101000000011100111001111110110000111010101000001100111000011111110001001010100110001110" andRadix:2];
    JKBigInteger *result = [int1 pow:51];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011110110111101100000010111001001001010100000010000011100111001011100000000010100100101011110101100010011111001001111110010001111110111100111000001010000101100010101111000001100010010110111011100111000001101011010010000010100011110000111111101111001100001101000100110110111111011101100001101001110100010010010110001110001100100100100000001000010000110100010110100001000110111101011100010110101101101000111011100011011010010101010000110101011110011000001000011010111001110010100000001110000010100110101011101100111101011101101110000011101101111111110110101011010111110010010101111011110110111101010001101001011001010101100101101001011111111100110001010010110111111111100000111000011010000101010111011101011010000001111111100110111101011100111001011100000001100110011000110100101111011001011110011111100000010000001110000001110110101101000001101001000001011000011110100010110111001010101010011000111110010000100111000111000111101110011101111110100010101010001100100101101110000101000010101000111000010001100001111101010001011111101110000101101101010010110010110001001110111010100000111001110111111000000011001100101000011110011000011101000011010010100010001010101000000011100000110010110111000111001101111111011111001111111000100011011000010111000111100000000100110111111010100011100010101010011001110011010001000100101101011110010110110010001101010011010101001111101010010000101101100010000011100110011101101010110100110101011100010001111011100010111110000101101000010100101101001101001000001000001000100011011100100001010010101101000001001111111010011111100011110111001110001001001100011001110110011010001010000001010110000110001000101000010000011011100111011001101100011011010110010010000100011000110100000110010010011010101101001011001111011010100100011010100100000011000100010010011011110101000101010001000100010000010010001000011111111001101011101111011001010110100001110001011010100000001110011100010111101110101110011111001000011010110111101010001111011010011010100001101101111101110100101111000001010011100011111001101110111000010101011000010000001111010000111100100010101010100001110001011101100101110001010010101100100111010101110010111101100110000000100000110001011000010101100000001100001011011010001010110011001100110010011111010001010111110001010111011010100111010010000111010100011110011101100011110110011010110000101100000011010110100010001100101110110001111100000011011100001011100111000001001011111111110000101010000001101101001110010011110011010000010001100011001010111110100011100011101000000110111000010010010010011100110100000110001010000001110101011110110001000000011011000010001110101000011011100100011101110101111010111100011011101010000100111010001101100001100110001011111010111001011110011001101000000101011000011010011101000000110100010010001001101011111001101110100011110011001101000101111001100010001000000010000100001110010110001111011101000011011110010001010100100101101011110100000100111100110001101010111111100111110010110010101000110001011100101000111111011101110111111110111101010100100111101001100101110110100000001000001000100000110000010100001110001011010110110111101010010101101111111010101001011110000010001010000100111001100000100101001010110100111100100101101001101001111001100110001010001111101000101011001010010011111111111001000001110110000001000010110001101110001000001110000010100100001110000001110110010111110101101100010100101001101111101111110000100101100010000111000011111101111011001100110011001111001100000111111010001011011110000100011001101000001101011011000101101001101100010110100111101111000000011000111101010001011101110111101011110111010100010010011100100111011000110101110101100111010100100111010010000100111000111100110111011101101011111111100010101110111011001110000001001111010100010100010101101110010111111111010010001110000011111110110011010010010001001010111111101101101101010101011111011110011011101110001011011011000101000011011011000111101100111011000110101110101101010111101001000010010011101101010110001101110101000100011001100001101001100110100111010001110010101010010001100010110110000011111010011111111010011000000001110100110000011000011011101110101110001000010001110110110101010110011010001000001001110100001111011000000101111011110011110010011001010010000100000110010110010100100000111011100100001000000100001010011100000000001000001010100001100110011010001110001110100110101101100001000000111100100000100101001011110011000011011111000011100010010011000100000000011011011110010101011100101001110000100011100011000010101010000001011011011110001010110111101100100001101110000010101011011111110000001000110000010000111101100010110100010000101111001000011010011110011111110110110000010110001001101010100100000010100111011101101001101010110100101111101000010011001100000101000111110101000111100110011101000000110111011101010011000100000000100011001001111000010110111010111001100010111000000000000000000000000000000000000000000000000000", @"Pow test 46 failed");
}

- (void)testPow47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"143" andRadix:8];
    JKBigInteger *result = [int1 pow:1];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"143", @"Pow test 47 failed");
}

- (void)testPow48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3af49860" andRadix:16];
    JKBigInteger *result = [int1 pow:35];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"39dad4809c4b2602d0a0b6ac74e4d7cae9bd645000abb8a3bc4cd71c7d010987d448b3ff9140b49734907cd00d382cfeb36201df53f7af328d76b396861c317107bb2eae2aa3bb7e57b14c7c51fa80d1be6000ea3c2e6e9b103159b03aff35f726b87ba59018c655aca14cffed80000000000000000000000000000000000000000000", @"Pow test 48 failed");
}

- (void)testPow49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29443919855457533516693233" andRadix:10];
    JKBigInteger *result = [int1 pow:50];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"28169643246612976034134895143617314431723971185795052261294869703589710408337386002665057584619868488443134363502205346150154909765682277902565866497912611616219043364220051843373066247951045240430208238487887822620860261662009181924387750248353691714711317743057771959188424121135615597385001880145312025993330666733018800307248217487577638010498379942720591246856661308449493841796689584855339352039043826400599906962822049842589424574068808377064992310248356548659459864525511274595760600132829958715860517117477082630208193132828398385824384570368654767420928525635157843599481391609351519149920379840395180087806103844234690302386045138098801155053185651411270353990532977486117731067447909495050007781249405258124991680093207638079098394053016720392290414580524261009051804545531542319236131056178219210035252095754301725952791077342343308246961762704393326920665176073747735094766242299986826070282604659513547741051140475779649762062928985583200927959833122201409281575622817469964304920808069330191208625919314903169500040952795883916648768780063646635489801481278607304496122837796761667775261186662157806927031000135340245094184800738572632627942277661355257979446253303464583322317372373403478541411401190788012944732787682633528902145536216934834352193831777249", @"Pow test 49 failed");
}

- (void)testPow50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3308566257601" andRadix:10];
    JKBigInteger *result = [int1 pow:94];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7016889063751579002935163265870724013197966320785979621234554736182441420001131502362374321007360830270514365805992966391219578706489379562342394983986809997600459084765267443647574479833658809854733305133207161757362740547204674373634420225553292207157804966450368331363941955313633833832492915857224117466481569291905566761010979603376734528351070237889360271801843178241763731949871797053389731209310966209379578882601923035758184975926560055399766777537640187997881615593353842190964030875389408031272873070154045567258033263879499335544025636053246159906843611679368206672619421453669855204563691315940758270184932640181648901591514791931767277327695721032969095790614901966096653728509976414440782380853747821088554086375595042740281525152117031028530966546519892638276416612985300898650904481847512199901220591576303212431488148676041929225503311252637105567050783558008886358110687974883482392063315730771211024140997024010864330038789126484467746755316759304944837557653556882741559899616558481568059308747208619595457531898061666141267480996502911011467677366189691308715120269736487309942229353243538008260112628765251202622850459741125802767735855659888638741174401", @"Pow test 50 failed");
}

- (void)testPow51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111111100000000001000110001101011101001010000001" andRadix:2];
    JKBigInteger *result = [int1 pow:78];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010000101010010100001110110101010011111001101001110101100101100010000111111100001011110100100001000101011100010011010011001000111011011001001000010001110000000110000001110010000110101011001000011011011101101111010001000111001100100101111010111100010110111101011101000100011000000111110101000011101001111100111001001101111010001110001010100011110000010000000001010110100101000101111101110010111001010101000110000100100000001001111011101110101001011100010010110010101111010010110000101001101101010101011101110100111011100010101011000001101111101010101000101011000101000110000010111001001010001110001110100011001001110100101111001011001000100001110110010101000001111000101111100011010110001000100110111100001100001010101010101010011110011110000011111011110011110000111011101011011011000111011110101111001111110000010100111001100001001010100000001011010111000011101110010111101011100101110000110101111111001110011111110111101011110000101011110110111100011001101101010110100011110010001100001000101111000101010100001000001111110001001101010011100000010110101101001100101101101110101110001111111001011100001011111101010010010000111111001110000101110010010010000011010111101101110100011101010010101001100111111010010000111010110000100111101011101110100010101011010000100011001011010000010111010000010100100101110011000111011101000100001111000001010001001101000010000010100101110100100010010000000110000011010010011000000011100000011010010010010111100011110100010110010100011000110010000001010100111111000000101001110111011000000111111011000100001010010111110111111100111110100111001111111111000010000000010100101000001101100100111101101111010010110010010000011110000111111011011101110010010000000110101010010011011010100100000111011000000011111111100101011001001001100100011001011110011011000010111101100011000000111001110011011101011000010110110011110101101101011001100110001111000110000001011111110101000011000101001001101000111111001110001011110111010110101010111000001111010100000001100010011000111010010101100011010110100010101111111001100100110101111111011111000100100000010000111110111000111000011001101000011110110110101011001010101011010001000110001001000000111000100111110101111010010101010001111010000101011111111010011000100110111101001011110001111111001110101100101010100110001001100110010010110011101110010011100001111101010001010101111001100100110010011111101000111110000100011010101111111000101110110011010010101011010010110110111000011011111101111100001000100000011001110111001101010100100101100011010100100011011101110111101000010010001000100110010100010111010000010011011010110011011010110100111010110001011010111101011010011110001111011000000011001101101010010101010101011111010111111010010110010010110011000101011100001101001110111100000000110011011001110101110100010010101101100011100110001011101101010101000110100000101010111011110000101000011101100010101011001110100011111110001101101101111100011111010001110110111010001101110010111101100010100010001100000001100000110101110001001010111110100010011000110111001001101010111011011101011011100011000110000101010000110000101111000000100100011000100000110111111101010010101000000100000010111101101100000011000001110001001111000000000011101110101111111000100111000001110110010100100010101010100101000011111100010101100111110010010001111001000010110110001110010110011011101000011110000001110111001011001111001011110011011011110011010100110010110010110010000000111000011000100000101010110101011001100000001100001011010011111101110010010011000101000110001101000011011111000010110011100111001111001001100110110100100001101001000000100100011000111011010101111110000111100000000110111110110001111011100111101100001111011110101111110100100101111001001011010101001001111010010000010100100101010010111010100110001100101100110101011100100111011110001001001100010100110010001010000100111101010111001101110001100000001", @"Pow test 51 failed");
}

- (void)testPow52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2620774106017943515629" andRadix:10];
    JKBigInteger *result = [int1 pow:3];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"18000674030539988143208740886505057195408383589416809155478203189", @"Pow test 52 failed");
}

- (void)testPow53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100100" andRadix:2];
    JKBigInteger *result = [int1 pow:38];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100000001000100101001110010011010111001101001001001101000011111000100100010001010011101010100010010111110100001010100111011001001111100100011000100110010111000000111011110111110110010000011100111101100010000000000000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 53 failed");
}

- (void)testPow54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"54f8ffc50d889668" andRadix:16];
    JKBigInteger *result = [int1 pow:85];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1b129fa7239fe67e6ed00b01377b250662bf1f1619255c90638e5d287b9fce402a100333ff818f4450e23a760a1553a1a361438872067967596ede4e016323e759cf21dbbf0014042e5987dff6cf19a3c17f81b0eaab2edd4128a2f607fed5551bca88418ca59046b4fc07481999a92d81464db278b6918b25e9e20a25bdf136a1128ffe1971405ac5af97b06878f6b1473400103a6193659f67170e936f4ead3c42f4920332ddaa2f61bdbd9ff3435b3f7184fdc4afd5a0bacdfe8a3fc893042d8fb9e6f50d4423d3c038103d5c9f8258f2b9df29aafaeb2fd5909557b897eba8673959b14ef18c1092b5879c64c9a34d438b96786f44492b06422898c7954dbb5252190b4c8871e99be47c339e4a1af76bc2c5c3ebc9adc0ae41be141b6dde43e244c9c6a30575a5101b9f0f0aa50595c84be063d815e92b679d3eae7da1ee6723b06fac4959787ac6e3075a1fd335d66c7e5ec4f0aab455c32ca0e3daa7ae24c165aa76b008291e79f9db9c92128378ca4e62f9d4025da9133911b1b8f0b1939312bc946544876c21a5bba1f2611694ff603590cca511b95d9af620255fc673bfc07c7e2ba00ae986b2ab387647da3e1a2404fc3f6912dd849f1a0496f07bb796829ad51fb20edcaf13131e4ca7a343ed9d971718e2620c84ca253f3c765e3cad21583a45b90a0247e2cb875cdbd3326a5f9f6ba88db4c070cb12e65124602b6f459d3a9a50b1e0c58aab9affca51b009117d18e1cb98e825cfab4b9c6acb6cae5b3e01d1e964816dba1ec724e5b9ce7a7ea1644ee063e8314029b7b4104642b506c7a923b2662a1fd3ffb320905bb16a405846e07b71e1d04d05f16c30fd484ec2f37d7dac3aa80d36f1d76e9f8ce918965cb0c742e8000000000000000000000000000000000000000000000000000000000000000", @"Pow test 54 failed");
}

- (void)testPow55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111" andRadix:2];
    JKBigInteger *result = [int1 pow:51];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100101010101000100010011011010111110000001100010000010101000011100100100010011010001010001101011111110111101101011011111111000110101100111000111101111101011100111001110110011010001100010101110100111001110000100011011011110010000000001111111001010100001100000010101111001000011001000101000101110010111111", @"Pow test 55 failed");
}

- (void)testPow56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1c5489afd3cccd91ddb444a2" andRadix:16];
    JKBigInteger *result = [int1 pow:31];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2eed8fb1e3b1f8788c7d185c39c55d2d4c3dd98694e4559d0a46657bbf2b5aff1c3d83e9eb6734334baa181fcb587e63d2e141400e9bc041e71cc618b824f14f41c6aeb086b8b2564c2486bcb7fc94a95170b59674b2bf9053198f73d2487cb8db2d2c8418ccf023028cc873b9d2a9a4fbda1ee217b1808ca49eff2c6d7346340945a22fdd2c7cf2182d4414d520c49c28dbb612991a751408e17ffc176fec977e9e720ebbc78b439e901e40a64b17b918d447a6bc6feafa544f3381c9ea142107a12eb9660b3422cc2185d9c0342f8f80f0af1039dd5fb266c412716f59d16b389ae0f980c477f65db8ee26b0d2fc51c06d73fe340ee2678a1f8b40cfb9c02813ffa4477d097268fc29fdc208a748e8b8c377b29e616004af0957c0fcf66d67ca4451e7c26f1dd7622373712d065e310c24b5a4f21e432368ecf6903700528293126d9c0acfe95cf8e90718d25b2489e0a372dd8627b8609af4169a883cbfd237ca805880000000", @"Pow test 56 failed");
}

- (void)testPow57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2aa33bd978ffaed39f" andRadix:16];
    JKBigInteger *result = [int1 pow:53];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7b34e9778672e081d859c31b228712b806b2c096d311b836f4b4c7d052ab71cdc2781ce6e80bd217cfac0aad34881d6b305aa44503c5e40610ab41fb87da438f34b6c75833d6d0d18dad2e5eb9e6c20fda2fb676396d942565acd28864572d6f79e25c83f89ee1b69515747147486c852296fd62e741be665ff3060ccb7e64350c2cb18c15bd1b99048ebd4d30a21e97cbfff70c0f1fc9c26facdc76875d9d48d92a08b15b081f9b30f51106c29d989cd8f1f5155e673ba0dd4f3bb7c81a443c0cd3425b0b001f548b42eb09c8c249e86a3310842a2bb5a5269d75a0a629f15d6839a1ffd543c9faa9db0f3f424efd1d6ee3994adf0201c37a7fa8baa6b9b2d4d71cea7f826158dbecc02d625ef035a32596de11f657a2290421ff1e2afc691332910e5e7952ae312c8a56f01db139e205bfcae074fc914e1517258fe82ec12c6e788c6f16ee1431d2cdea0fed539d3d190847fa523df951d41b09c2cefab0847bfc98ca3edc220cb29aadda1f397ec0e84a527066cee146006d7083451193b3e36a45f48dccf989a877392ec5a42544ddc54bf4271d4a9226e5a9530053f345efc4180515c73008152096fcbcc8347047dca55f51b0f277df6178a54e3d7d0957eef847e336efcfe923081f", @"Pow test 57 failed");
}

- (void)testPow58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4d" andRadix:16];
    JKBigInteger *result = [int1 pow:86];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7b18a10802d15ea6895e4452c95ea545e9ab1a1293b80131009d2bd01001189581f6df54365d644620c4a8aa879e0035361577f35dfb45f203fd8720ebf1b02ed556179", @"Pow test 58 failed");
}

- (void)testPow59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1745460202067426574376076345" andRadix:8];
    JKBigInteger *result = [int1 pow:39];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2706514263416766353341646035314512764210123045257533333371123703142213205260600005535137367706660773371215006363027442044743411215727531163371404314671201066575357732376656411236640643364010144305462376612751611715155070400557450215370537112323426543362664610064332047666560520312446644665530106766660210237667132140640244121202670405353037036315105316150540607051703362523435111517321633436341462607606634413561700210435335244306230724113605632676341224635670533716066757600000704006060163021066467261213071276002573600200763402400073530474455011757677052504644171514042373441221366416243614157040763760071624053441677171136645242243640735354324062721406134576446350762047262707057176610725647363476163510435514713040766165676303072037020273732750156775016034560540354165101247442156333106626245423317520602457745761417154475517050100501630314527121064357457406776301617364276401771251763436116265324310445174362105001405024322231562324016604406051167131266245342325701627240033123625641261471172457720552726617236001635344554755565301221230567677703763347763772715", @"Pow test 59 failed");
}

- (void)testPow60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100100100011100111110100110111110111101" andRadix:2];
    JKBigInteger *result = [int1 pow:53];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100100111010110110011111000100001000010100111101111010101010011111011100000101000111010010001100001111010101001001001100010000001010000110101111000010000000100101100101001110110101100100100100011110110111001001000110100111001011100010111110101110011110000000110011110000110100000100000011000010000010101000110111001011011010000100101000011110111000011110101100010111000000111010100111110000111101011101101000000000001110101100001101111001010001001001100111111111001110110001100011001001101010001101111110101110110110010110100000101111000100101100000010110011000000001011011010110101110110001010010100100100010111000100001000111101001000010110111000110001101111110111110011011001001000001111000011110010110000100001111001010001000010100000010000011010100111100111000101010111101100000111000011001000100001011111001111100100010110111011100110010100111110010111011100010101110011000000100100010001010101010101011101011101011100001110011001011101010111111000100100101101000111100111011100010111110101111001110011100000011001011000011000101000110111011101101100101111100011001001000111100010101110111111011111001000110101110101110100000100110010101000110001010110010100101110001010011111011110110011101101010101001000011000011110111101010100101011011110010100100010110001010010110110000011011110011100000001011010101000100000110010011010111010011100000000000011011011100001010101110101011111111101111001001111011101001000111111000110000000110001001001110111110110111000010110011000011101100101010101111001101000110011111110100000001101101101100011101000100010001101101000010000101111000010011010000100011000110111011111000001010011100101000101101110100101011010110000000010111100001101110101001101101111100001001000110011101110101111000011100001111001101111011001000111100010110011101011000001001001100011010111000110001110010110000110000110011001111111100110101110000000010110100001111101011111000101001101111101101101011101101010000100010111010100100110101001110101100011101100101011000100011001011101100100000100100001101101100111110110110111101111000001011011011110010011111001000101111100111111101111011110100110010001111001010101010000101111110100100111111110010101000110100010001101", @"Pow test 60 failed");
}

- (void)testPow61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"61523513152577512260406665004464" andRadix:8];
    JKBigInteger *result = [int1 pow:47];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15753241752530405474766517055071653253546712172352225606244631523405027457145560723236221326054244301563453532440636145552665466377573425307226644255577227354020135711504661025547026066203541516527622103222606300210114403104207203720531722156742365260253243141114053772517277147221035747170626046516335726365174450231046127461440442300667704216120122160751746067473065351713153243237157036254522201106403224440503727411045231227710342006423041221630205235403651233477236705726162723200370737306017542611607525303711225132227315207753505750316471303445426160105563171335304746755231176267401641465125757604507400004673064323437432607265130764007111676231510234651664664051543763623206432670623235602753364630747374402011346235604727036674444316346235720450176435763737270126671457512663242746016464346625014452716422123012630220223572135704365132762126276555554375657651700316164522167650331635640272551131746522412567726307353265175457333655230737774124366102444301031207134304522526066166625065635216667416670247207447443267636040074105324401742322246346642764744207714216623414234153215776212157462067045674162170751254313523046764731105372713275633525505753310506353412713365710431304135000763626771512346511353145677125413013006165542373117314410625037552241064676371637510367420647003515664710225407703510267762552562432632203216172134746030054372453543562177344623252165754131347773760131316421717030763016211126631727616361665335244205324077771050273335304022120000000000000000000000000000000", @"Pow test 61 failed");
}

- (void)testPow62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26861e7" andRadix:16];
    JKBigInteger *result = [int1 pow:84];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"59974cd62c606b4bf6866afffef9ec24c4a0d5681f69252665f03454b38f9adb09fc7ea3d0f6c6448a38d77ba0e054ba0f58f29a65cb6c4ef13f68a02208b5cfed77b870b0d6016dd037b64e65c29a1be491b8611ee95f45880b8f145e29c1086045c1aabf2d4129bd21cce1593510b88bbd607cfa8ab44d173e96b5a93ac36f8195e18e8aa4ab4e6e3dbad956c5f3db106db7dc76035a9aa70f9fa07859d02b391a34f761f6ce81fe1fc704f84b201dc6c92c72d049d6b72a2a894e4f38893e10ebea5a512181f23adbcd7bbe9d6924bd44cf73285f741a7c38648365466b3ff8f63fcf3f69fd9bc9768b414da48fb8a7b81fb0c71729e916cce3fd7f9d2a13a49b05e03bb8ecf0b61", @"Pow test 62 failed");
}

- (void)testPow63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011101001100100000100100010110010001000101110011111101011011000010100" andRadix:2];
    JKBigInteger *result = [int1 pow:18];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110111111000111111001000000100100001110111110001100101110001100001010110011111010010111100111111000001110100001110010001101000101000111100000011010111011001101101100001011101010101011010001101001001000001111001010001101101010100111000100001011101101100100011101011000100100000011010010111000001111011010101110111100001110101111000101100101101001011111001101110110101101011101101010000111001101011111101111010011111000101011100011111101011100010011100100001100111000101111111101000110010110100010100111001010100011110011101100110010000010101100000100010110011000100010111001001111010011010011001001110001110101001011111110111000100001010100001111110000001101011001000011111011100010000011001101101110100101000111010001010101110100001010001101000011000110101000000001001000011001101010101100100110111111010100010110010100011101101001110001010001111100110111001111010110010111011110001101010010110011011100100100101001001000111010001001111001000001000110001011001001100100111011101000110100110001011100111101010110001111111000100000111111101100001001111111101011101101111100110011010010010101001111110100001101001000000100011101000111110010011111000001111110100110101010100010101100110111110110100011001000010000101001001111010111000110100011011001000000000000000000000000000000000000", @"Pow test 63 failed");
}

- (void)testPow64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"192f" andRadix:16];
    JKBigInteger *result = [int1 pow:82];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"32a04023e13a5c350a76ed1ba78eba8ebc8e606a1010eb2be9dd97c132fff9984e202d7b61ff449f675fc0b4900d102c6b90d80e85c547cd369f4a270bfe3d988fa4def7360efff185f57008899fb7ea0b5ebe88473c146cc049f2bc5adcb05f63b8e6cf2068abf056934e5ff011982bc9cde39216fa15ee35821260677b07630fa1", @"Pow test 64 failed");
}

- (void)testPow65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2a854d93" andRadix:16];
    JKBigInteger *result = [int1 pow:24];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"395f06f232b07208db71ba371b98efee8049cbe5695877f805f2d1085b4f67cf3b0c79119fc310f14b1c5ee17d80f4ddec08fe6281a8c1121fcb909a621e65a100a4745485bf94c70b67e8059e55c62984163e1718fff4961", @"Pow test 65 failed");
}

- (void)testPow66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110101010101011100011" andRadix:2];
    JKBigInteger *result = [int1 pow:65];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000011011011010001001101011001010110011101001101110110010100110110110001111011011001001110100111011011110001111110010001111011010000111100101110000010100000111100110000111111110111000101100101011101001110010110110001110100011000111010101011111111111011010000110000000101011111101100111001000110101111110111001111100100010111110101111101111101111000101111000111110111001111000101010101100101101110111011111101101110010110111000101010101100001110001000110011001110011100110100110100010000110001100001100011110110101111001000110100111110110110001001001010110000111001010101000010000001111001101111011001001010000110000010010001001000100101101001100100100011000111111011111101110110000011000100110000111010101100101101110010001000010110001000111010000110110001011001010001000111101100010000110010111110111100000100100101001010011011111010100111001111000010011100000101000111001010110010101001011011111000100010110000111100100110001011101101111010101111110101011011111011111101111100001100100110000010110001000001110110100111111011001001111010001011010011111100010101110010000000101010101100101001110100010001000000011111101010001101000110101011110110000011100100001110010111000110000000100101111011000001101010100101100001011111110101001110000101100110111010001101001000010110110100001110100111011110000001101001011100111101100100100011100010111110011001010111101001110101101111011100111000111001101000100001001111000011110111011010011011111101110000100101101010000101010111100111100111100011", @"Pow test 66 failed");
}

- (void)testPow67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110100111101110110100000111011101010011001000100011001111111011" andRadix:2];
    JKBigInteger *result = [int1 pow:17];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100100001011010101111010100100111110101000101001001001111100100001101010000011101000010000001010000010110011011110001110101010101011101001110111100010001111111010000000110101011011011111011010010111001001000010010000111011110001110000101001111011000101111110100010110010010111000001101111110010111000010100000101110111110111101000111111100001010010011001011011010001000000110100010000000000100100111010010011001100111011010001111000110101110010111111111000101100010000001010001000110010101100100110001001101000011011111100011101110000111000011010011001011111011101111010110101001110000000000000110010000110000110011010000111000000101110111000001101111011001110100111000101011101110111010101000000101111110010101100110011111100011001000110110010101000000000010010100110100101001111111111011010111100000100111010010100001011100001101110101100110011110001111100101000101110000000111001110100101111100010010000111110010011111000001110001011101100111000101001000001010010110000111111100110000100101000011010110000001011010000000010100110101101001011011000100010100111011", @"Pow test 67 failed");
}

- (void)testPow68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"59580241595529487243638221905" andRadix:10];
    JKBigInteger *result = [int1 pow:97];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"15308026775004185023012444847734241192189890826044466784720601806624281992090729240361866547834686349921651519142765145365566246629536723279410023587880410904361060457160884947183853795302271394202233624672889619061724716492318981710702361973094021869053444020276420977423056429583981301232846364183640991399695918684136600435747656892389667513364360696507116913230614391204147628787398916839032117428897813270076478100330799948993207057515107915771230043351435827695731404368976149998727295612949495116955501419789192459343082662025902019399097817792188656193639273754700293597789414208362820756261158245715228652570181804784655734007450498000192187769133805387413138477181092376545001393541952850949186903897423648757279120307774030001459581895298113348486320205383570691825408133297303046358510693151470361451596604455368412450975215675379041052969589776943777241740699264139761601250383039076495532533139307841716780585404547549679588909700177525257075954206481369453093691260638402252459792597622812133658831843131992063475461245249848686601823140848996431690904825852921212741596216381285313756465066146721504523450411176763473845004785523338160110814211622622587740403316400529390700167589363504464720596641341328280961278531964834179797816299038668368396519250015567118817950305447722874549471380743643961045008800072279631895826866240955052790271227286416180465800728308389341131399927204717052615466746760390447337511196422158466894856843566420064602191311529746761702144850307691592409247413322115970451093693004386846029477181427515088006395725777451779304777286288618250760153888821915112356561489568517338464491363622279815857901445133163831472895165806819633239591725578411938890805521324247771589102286278569459215150586405677227246059843060772548013409582034940953918981389254300107585878981289421183922644076419746823228323746083893592552445590122167346476654187381578426441372116583876827774405257293258220679314442208613411955472306722929418941916713710983581992812211855691334951273672435804095157735166919321017746191659524434203246367418304191217877170386820229265564495708616391522905419034363364803410680846044932722953525847610756369614839843216419534633871567373924174730481734094158752895898821211491702919356202664349193788945323355724790106785305128344505331754609142311472436664066189218559560240584077840596480274920843415634312331232481782223515056118168534760971908140975419440914656388811191745173324234443855001409442661254350292095792707243278487496568244211564888664207853381125243156291366329620286023416950120386356437923491409646335470964637146583606228789203513189462333297755052581294103498745904793518032159702416244181846094172889454355796548945603072137522152954467801657374141564921743242457161701580215830420517164611737825907766819000244140625", @"Pow test 68 failed");
}

- (void)testPow69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1361564505063117775171727660304" andRadix:8];
    JKBigInteger *result = [int1 pow:15];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"512376707575776224421135516330237747460625236421573120362620526424111351030110006540145135271703133522544323571622252607306573213627657566573206175601222451263710116643572133032442146727736042762655115565656563742134005274520224023066640033657754077517551102220343732411227152474200124042604520307566217452574750015027766162360122035454766761750534244125443464342341343163720531115253600350565764644357753025461410545422021507633713763136257210000000000", @"Pow test 69 failed");
}

- (void)testPow70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101111111000001100111110111100110011000010111000010011100111100000" andRadix:2];
    JKBigInteger *result = [int1 pow:91];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110111010000100001101111100001000011011110001111110110011100011010101100100100010001000000111111111110000100010101001100110110001111001010110100010111101011110010100111001001110100110001100001101101110100000111000110100100101001001010110100101000110000001101001101010101101110100101111111000100110001011101100011010010100010100011100000001101000101100100000110111010111100110110010100111011001100010001111011011101110111110011001011111011011010101011110001110000101100110111111101011110011010111011101100010011000111111111001101110000110110110001100011011100101001101000100111010010000111100111111001111000010110101000000001010011011010010111000110111010100100111111110110100111011100110010100110001001101000110011000101101111110110001001011000001010110111101001111011001011001100100011000001000111010001110100101110101001000100011000100100101101101000001110110011110100001010100010010001001101011011101001111001000101111001110100010010001111010011011100110011111100010110010010101111001110011101000110001110000011111111011010001011101011110111001000101111010000000000111110100101101100110000010011010001111001001000100001111101100101000000011011011110011101111000101010011101011011001111111110110000101001010110000110100101000110101100001000011101111000100010100100111111011110101000000100101111010100010001001011110010110100001001111111101001101110001010001101101001100000110011001100000011011010001100101011101001111000110100000011110111010111101010001011101010100111111101101111011010000001000110101101101110101000010111000000110100010010011010010111011100001011001010101010011011110001100010111011100011101011011010100011011101111111010011101011111101101000110100011010111010101000000101101011011001000100010001101111011111101010011110111111111111100101110101000101000000011111111101001001110000111011000111101100110011011010000100000111111101100010010011110111101010101011101011010110100101101111101001111011101111010110110110000001111010100100011011001010000100010010100100000010011101010101010001101000010011011010001011011001000010101111100111101011011111001000110011011000100111110010111110011001100000011010110100101001111011110010011110001011101000011111011100100011110110111100011100011110110001101000011010010010101111011100110110000111110010100010110101111010111010101111111011000011010010011010111010111010111001010011111001100111100111011000000101101000001110100111110001100001011100111001000110011110100001000101001111011101101001110000100000111011000010110000011011001111011101011101101101010011011100010010101011011001111100010100010000100111110111000001000000000000100010110000100110100101100010111001011110110000110011011101001111111001111010010110011010111000111001101100111100111011100110011001100011101011000010110001000010101111101101000111011010101001100101011110000111101111101111000100001000101111011101101111010100101111000111110010010110101010111011011000010101001100001100100001110000100100101110111110000101000011100100110111010101001001100110000011101010011111010111110010011100100100010111110111101101001100000101000000001111111011001010101110111100011011011101111110010011001011110101001101001111001111101001111101001000101011110010000111111010111101010001011000011001000010110111010100010001110011011010110011011101100001110011000011110011110100010101100010110100100100000011100000110111001100101111000111101001010000100101100110010001110100101001111110000001010101001100001101111100011100010010100110110111100000101110100010010100010001111111010001000111010011100001010100000000100000111101010110000111101011110111011010011000000100111100111111011110110011111011111010010100101100101010001000100011000010100110010110010000110101000100001110000100111110100110010001111011100110110101101101011011001010100010000000101110001011100111110111010110010110110110100010111011101000010011101101100100110010011001101000111110111001110001001001100111110010001100101110011010000010010011111111101101010001010010011001001010101110000100100010001100000000100011111011001111010111111010001010011110011111011110001011011110011001001011100010011101010111000011001000011001010011100011010111010110111101011011010110100111111000000000011111110000110011010100010100100111100110010000101010010010101001111011011101000101010001000111100100110111110000111101010110100000000001011011101011110100110011011101011100010000111110000110111100101101101110100011100010011010000011101000000101000000010001100110110010001100101100101011100001001100011100001100110101100011111111010101000001010001001011010110100110111000001010110011011010110101110110110101110001001110011111010001111000011110111101100001000101110011111001111111011101010101010111001010100000011101000111111111010000110001001110110011101010100001101000111010000111101101010000011110101111101111110100001110110110001100000001000111100001011000010011100010100000000011001101101100000101010010000100010010000010011111111110110000010110100000010110101011111000011110010011111101110001001010001000101010001000010011011001011111100111111011100110000011001111000101111001000000110101110101010110001001101110001110011100001001110111101000100000110100000001011100101101111100011110100001101001100110010000110101111111010100010100010000011000101100100111010011000111110001100110111101111000001000110001101001011001010010000010111100010011001111011000011100000011101000111001101001100100100101011100100111101101111100011010011001010011011001001111100101011101000000001011101011101011110010010111011111010111011110100100100111100010101010110101011110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 70 failed");
}

- (void)testPow71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1434" andRadix:8];
    JKBigInteger *result = [int1 pow:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"27574552750556277554223742706422610445211260174761453012372753142166064225465671326071664532374426451730074313125506713762724750667705274204574040161626115166570425222131306362555535036112034010373555577032172353330413072736110525765020000000000000000000000000000000000000000000000000000000000000", @"Pow test 71 failed");
}

- (void)testPow72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7b5e94737b8bb3af8ac" andRadix:16];
    JKBigInteger *result = [int1 pow:90];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2529468b650bb819d0db25aae5b3272193cd8c8dbd343f29710e671a9dcef4d3c4bbb48f6ff294f999ef62f75491e8ee514764c81ba935361bb591790ed42b868e08f7057967d9624acf4fac305bbacac09842a1be7e6cedd5e77c7792805f92d6742c167e98f9efaa41ef3231b3a8a0d09525a31cf6d0d0241afad829017eb64ea7bff5853d368c05028257b72b3dd5471823f0b5553a621551c8b6f107e1e4166711ee5c2baeb7b7d32ca7cf620f4182f20774f7d2eed01fc2873ff47c936816414bd6dac2f9c4652aec5ee5a843830454f4d70363a040215d55f5ff4a3b6342cb858bf3fb6f966c721757a096382ce00a5504e590045af893c8d9bf678941a75e7348a0d6c7808252a4fee5ee3b09101c6f28bdfee5f144b344f60d9882677f864ab7b79c9a5165bed80f4bb76c56ec2a9fd63763806826e1d9f40bd1df479022dab97056aac20b00acefd3534786f548ce997dab55fdd2fc58e821e22c2da8ebad28c89ed90b52bcdd10c4bc664995f96b135a9edb3ef7852d6c96308efe8cac93b3f2a9bd40ce05f255f5726f7f1ca2fa1817dd236f5f8a570b7060bdf531b3a21f62fa53cd9002c460b440e67142ec6dfbf96cdc431318c0c1b9cdfee9888993ff17f5ee4d8ec2f7e1703cd0c4db2d75e47ef30620fa000bf231516b1bd578a99327e63c4a22c1ec1c526e7709a207d7cf390fb5e6d112771c41ada02ce4fec4e17f98ad1922c0197253144014b65cc3eeacf73bcdc518216bb6e54c18df3ff7df90f15a0aea2dfcae3d617afcd66917f3505a95484e2dc615661050728a2ec591c9efa298910b7cd544c78ca9ebb0d7a6e26794e248b4d2b4a00a87fe7ea64cfa4d34d5bbc2c4f4f708038b2449cdd1210fbeea8e2580eba8219c651eb18da1965caf1789cce9d0c2cb6bce598391930c63e6f6da585edfdc7bb0d293a9e4778a031b83e54668b24c315353230b889080c8d93e5c5b86701be697fc046cefe5bfdb0ef294a1fe5daaf0f33fe181d58b24eae6a64e725c44c319a8c888f9e410a5b160c33cbcc6776385db9ab2ba164603f09e9c4a012dca808a310189e272d2c52dc5f9bcd82066a2a3b6abe9553e1716b616be2a5a9369999a9d995ca8526ff3d3c968fa28e4ddd29f45a8d04ebdf03c59000000000000000000000000000000000000000000000", @"Pow test 72 failed");
}

- (void)testPow73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"66324" andRadix:16];
    JKBigInteger *result = [int1 pow:31];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7a0958a2542cb7be413d522a22501d1257cc2386f5235f2568db15a449514e3ea1b26e49eaffe9deeb7012a0e973f78c9e86188f3b9b1cf1035b1f733255cbb9e4000000000000000", @"Pow test 73 failed");
}

- (void)testPow74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"48f75b2c21" andRadix:16];
    JKBigInteger *result = [int1 pow:23];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"519b486afd5d617a99e9e82f473af7819f4bddec135f10a18f3de062f6844730c8d97f3cf0fefb63c8b4a0b36429ed9a42b4d931f8a9065a5cc15c1e98ecd5e877f5563f2d08e509d36ce68279fd7798dda4eabd7d2007279f97157824cbc7ca33e6c770d489b3e1b2867ab96ae1", @"Pow test 74 failed");
}

- (void)testPow75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"27" andRadix:16];
    JKBigInteger *result = [int1 pow:31];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e650cfff6b512dfdf5b2aae419a70a37a693a4097", @"Pow test 75 failed");
}

- (void)testPow76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3101315505651622411104167070642" andRadix:8];
    JKBigInteger *result = [int1 pow:74];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"32547055664015327313477406674303535211061634634751520741507702276615373311427325575424747645665767307564273474342115705261333757554254354413346702657503015204767202375664532137301432730156766736163453046574112607760123666371274020533475165635120045176702337477352050124517003243140037111416673263221267450765356325750622323204030422167156450027457661365630155723751520505702161732376063035756461024523304354002550010744263705611764247264312763124504774023046600025302145556232511632211640474460071522752523141316226752650200212251500263760260562517367703160570733633142324244677527501753705114051027105440402346156764461532121035157234464666744004516154731374012565424734351773120746522144323662252361050160303637010743537013474324665013352563212254620014077103640742541071303531635643204573434275264111530122060577273076171537064315646520533063640225044704015656661660346603324404046570273345427571352236502565067611441151616403264564437435372263070660261110125620144531536770334074310057234325260465522011263526446515020126502556251713217047375163401126234566262124402331205330017557705533233774206403612527702223026301315374721722026470377557720723345341003055607423551414146525130243017720163550503162076523430624321172457462442225177056046631403522260351617674670003554175063754630105361156327645347354703343206755410521262633546231206277134350453344024304704141224415064013621256525111701333666155106604255233744601040423455503032163371704366617146135457474160763171722414573130402735206353626721710535547464125052142523126665773731121235124067452343020006325443314751035137730626507260515054764443737436156616213574461107425511170457235135536253573106744304215207657447446536646433763543075506323667772101252313776066132402732226310634042522204664127113046445411531647402333073745021233336352720317042606171356044346253740570122413503667402607000314746413044344707332567347243341162142071023755355715565773032206444024541123574242660742567532336302507240037617030555775105615561306203501160075227610270416277073761413473137242074714561205576230254132047147717151375072715734734433306213262114445062106664521324314614242304241642066045725217563574117021761730517557116044133331720125554124217462314217157301310573222546600116002204000000000000000000000000", @"Pow test 76 failed");
}

- (void)testPow77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33139df86407" andRadix:16];
    JKBigInteger *result = [int1 pow:95];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"87e127c76152cfca9679b86b1df5703bc719da411c977867502a76558ec18e4bd63c83c3dbeebf456021dd4dc17fdc565130fdfe67124c473c4ac1354e135749ba6e2b84a89cef7047cbcbe6175e72c33da0d9dcf6eea4824a3212179ca13e6ccf8a4fd87bd591bb12ba612c8ea955a3948ddbc6c18fc137a65cdd0013af213144cfbeede7827829d8b598e69a56b66b773d86e0d0649d4be907311985a32bb71523f977746eabc197d7579c2d1fa4ea6f65f4d94dc6523c1e5aed9e2c6ec19941dfc4b2d7687fe79ca715325a345bf182163c4e2f25f2e0b78d8e232308b6abc356f227506e8c76c9ae96575ee18e04584ffe2719ea6d52987864b9958f3cba579bcccabc1ad668ab78e8a9290296ba38d1436658a9bf84d97faa6c2b1157d01edc626745c3c2845d0247102676212d21e7479c7318b9afd6eea6fdbb8e775a7fa041bd55ca833f2c1a3221a21151bb1cc1e0236c99200bb624b63ee0be4f1503e92946d0ac25c62ff9c7e7edb608e866a254f011e7d64f21fdd0aa67b5e596390d6346155fed5edee0bd0552287711e3ced1f81ae14658a5e971c74b0096357a01354eb4b6fc98d087014c492f7e48030731f4a7410acac5fb28f05ab2bb3e798bb5f563d3070e0faf0cdd963c0945cddd24df8e9757dce07896fcccf511e24da0bee029f627b7872ce95691ce3c3fc3b63b9d9c4840d67b1a673f50a4061465ee629b94716e5d3a6b64d552f6927281e3a46f10aa8acba0116e1c8d0b7", @"Pow test 77 failed");
}

- (void)testPow78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000011110010001110100111100011000000101000010101001" andRadix:2];
    JKBigInteger *result = [int1 pow:8];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110111110101111100100011100011001011001000010001000001111101111110011100111100111001101000011000100110100000010001110001001001111010110010111001110000010111000001011000011010110000111100101111100110101101100010000110111110000111011101010100010001101110011011011110101001010000101010100111110111101100001010101101110001011000001101111000100001000000010001100110100111000110001000001010010001110011101000001010010001000001", @"Pow test 78 failed");
}

- (void)testPow79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"b1bb44f9813ff5a3ae4b" andRadix:16];
    JKBigInteger *result = [int1 pow:99];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"ebe5ecb80183f76a2873436e0fabbdd45537a8e5367b64cbbff19090fac7e47b8ec70ccfbe977dc477e19d1bce3b80788abcbb8df727c6feb7ab7c68c2c8729ed09e36c2f01ed1aaf833f18e7e3b420b9bc1931687c390972d4bc30d7feb7f44f58a3e1c223258a1389ca558477b2b7ee41f047f20629959c6614dd9fdde59d15ae615cd73cb6f839505c896aa1bd0e1347c1c9e54e7a3031cd3fd726a9c5f7d42e41072954b519c9e2152b3a1989f8e6bdd376ca10249d3250833b678c6387cf663186ee1521b61cfa132c9634c2c8f8cf7134e90e3351d1e192f1e750769e7cc0953608321b4e6158e0c401eef4cf839572dd26cac629b62e9765f4ea4f0e04e57e81c97b500637a511fc627a7f63ce7e38be5bf7aaf2f8e7d9eb5ef247b7000a0ee9e8d08a0afc887553d02a5a97f533f7fa4cc48fd4cfd3439c7b29479616765c59c6645727cccd24b8e168e5ba75a9656346fc93836871f0f31aa1851ea170d4166002e6d20409b0c29631f5ee2054385c9c7351585e7debde3b0a828e5a126088c9ece1eda8cdabcadf50a1b053ec6fc61d81d29f32e4f430de272cc1b99d2c2d87f19adc506a9786c656f0793c4fb20d5c0988fa04d949b5e214252ad1dd01a5b839cef07be125d73d551aef27bb62e56c6bd899a94c5ad1fc149eeccdea9e6cae646a9908636c11cd84274ae57a088112d34fc9d3f2727155e0160d0f0753d99ef6f7e036f56428ac27b01ab19ee3e6c7d89c63cc742bb6d0f4ab9e1003c640a79fa09cd22196f3b392ed8de887295f6e842df38c715ae8396116ba323f2e1b5a7eb0d2232bc94ed3946e408ab4fbded162e40e541ff8a48005ff530273336d3b39921296036ce4251a14d337610a0bb1870b29599925c0ddcd57b2a34687315cb49417bb1e853ab044617158a40c46f33aac769abed63a67464a053af576435fd5dc984535f99b4d51d734736ab18bceeb4b23b8062dda7f5335df3813ea7df2495574b064f9e6379e8e6cf0c7576098b77fa3a3198f4b3454781faee0c7d417760565a6c1b2c5776bd9fd3b0c474dc2c5b4b11fbc685a4a50bf5eed1c73f884db7f037dafb826b3cc7278466a17d52a320d2807d9c727870f6e82393165ee7467caad238fb8bf2530593a0a1e0cf7c1f4dbb3de60979ef7dd97937ca600cdbec505aa6f7f399cc2cf5d6d8e6428f74ebcf3ff3fa3a2cf32ca24db0d0dce5e37116b7df29d5dc28a84c1c2851bdc5b40dfd2ecbb247542f7f3a954ea3aa4045771fc3aa0f97ad5b0d9475890675aa910abbd3afd7456d42646e17c4eb1d2efdc9949f4885144fd983d3879155a3812277604e27b7b4ad9c0a1fe2b11027d5084961c108298ecfbd632e971ce1342576dd0eb73", @"Pow test 79 failed");
}

- (void)testPow80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"267811524af348388a9" andRadix:16];
    JKBigInteger *result = [int1 pow:78];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"6953ff5c588485f2a4c8331e1caeee6f99f602a7d1c13107fb1d7dc0dae7cbe3dc63a4d0bc9503271f4ce161bad9fbe003b4577e1406a330de58f94549a2135dbb740909026304d25dc22037da5da37c4f3e1c9e6f337d6264525141567d02a667cd188ea3409eae5331784f43ffefef4ed7a597879f20e8adb00e6555bacb8402d3b9c0aa0734fe6106ef718a2c9c33d7afea6013ce893ad430ab3ba1fc5a4f19fb6a7f5a665a798a369f561f80a404fd70ec7639ff9639dd69ae2820c0e408277ac6cf18d20c612664e2d19ff0a00f63e9a223828f1adeb7a429c02cfd64ce7c7d628bcd33daecbbd6d4055c3312e125d8b9987a6aa4617fd903675976808e71fb38d356f04ab96c7a43164f59258b9e6f4a7b0e3e5f85bdf38bbfed1b46762260d300d6627976560c6800c05e228a3cbec5475de32a38ba366d8a21094b58cafee61bd73bc26e30c1414e2330e658c6feb6025f5a870160483accec5e1a51aaf83855149ea88d62a0595dd034066de74cc0e53c3dfbb68a897345c783ad193694ad62a38808c343c3d03ac494d5cff1832979a531aef4e14a6d472e39fa0e63af4c0d80615013771aeb8f3696c3dff2687d6fa17a83f54acd548c7b58fe365fefa5894a1f5180b89032dd35a27e9a7f7fcbeb02f0c95ced6cea757d13e672ed56a630a8f88b2a2d67db635c261aef29a325263ad721ff92071a1d025843b47cbc522ea089dc693243cdfc8c906ac580d6c9f75ade1fa5a0cf2bc16e63c6323c5b87bc367b1d111ca3c02de72a6888dafc1311d5017c1bc4b71793b530e61c2648a6a95cd04e1b80223b283580701d2abdeb7523ecb45583b4951a01d0fff39aa5cea3647f7792dd646210100ebd711f2e060b4d7bb47fa833b97b57d72b91708483935f9374f1a405729910010f2af08bb678aa5a4c8c271886817f1f214bad5bda61d4830ef2a8a2abd0132b3d2b6bd6242e23783dd3bec20d418f8ebd4bd13c17d26fe524be173f1", @"Pow test 80 failed");
}

- (void)testPow81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5412517774102711324172014002116" andRadix:8];
    JKBigInteger *result = [int1 pow:93];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"22641727463446666515423250757027442053077313741726332267566346074716240615001730622432473342710652503376217552374007152706675655027622117442473343575041726517632602344321223123404503464626475611243313276217635032065273254262575414326237664150231616620306753721572040014400233751066526671102211735303617421775567253307475205362236766450461534760013711106716541501275326771233730366713533022024262061001601632512517611023123262215461404416257137707740002652716051616425545055310071703130710376565650256514005526125675355474645176064547470413742436554602663041776734561660101445247163325355167440073367372440144427355055774455154560555411536404144754737024625066643626044041152421456310235150465640574761655732405206275051343666167506310635526613624376700336661223572651323270501367307015362574671107555332530143351127120056576647650457646401304334245236003731761326004352274275175625640015051305536426166547055352563726716712261413414260413253510305062125153555437165031347047011172366044564052404223050622320072032506371534326327372451122410630026430321172306327023656606123352461131604145256761515570627305527706630307170611762243773251502317210120140142014046034161650205347705537544572330141567523163264026610363246360532100154253472470335705212651336423351454311653547362220027024351174103441073310211752743360751751653437663113103661201635560026230452344265462424146474165705020734122063144606510053114424721422667443150141677053223416554726442452705012300774645315324526144711654200545777602575233142104645776760601074555456130312164475001612661164436105774061301012750503234676327625001445312677111543057060516756671246375245510642766615544657144611034625251673546414711743410770332325470473706233317135346621765205521130254522116244337045464377161675157053455137531104217232270544670772160427754541036673713163216332170562014603400735105562604640143564660615231433210327566750574206122705644504673352211664006755766121231265250667446701606160545525660616566771404160416627207277167512066260232050174237614400530277247427013474470643700667417356340162414766013257305516445022742064345325413613723556036205716163566010611404412750155673141573606671136465466075410515163517252406364537777767154070716471646314607423770570615137035732044355002177770332772072535166373607754506226155225305667150275015260377656667631627227424102261011135134652236510162340000500547150744205452411731036446453303307022455747727270540332617762044364450473732770463626643704204050627714232434227234154205721214455242064445655707630706107623561670404134103672554600352526600073241546350516243527016641342414645512241116603630135164010613261523660747244524527254677177716127771727450134352205534207465037532444574237714047421540237376244050751644726025302715626311224555512212323433630717364713155411457106607224376125355301453606761432661375700210076414070000000000000000000000000000000", @"Pow test 81 failed");
}

- (void)testPow82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100111011000001001010010101001100011101101000010001111110000011" andRadix:2];
    JKBigInteger *result = [int1 pow:6];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011110001101000111001111101100100010000110111011001100101010100110001110010111101110000111100110010011100001001100011000010011011111010010001110011101000000100111011011010111111011110000110001110111101000101001001110011101010101101101000110011000110010000110100001110001110010110111100111011111110001110100101110010001100111101100010110000010010010011101010010100111011001", @"Pow test 82 failed");
}

- (void)testPow83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100101101010000000011000100100010111111010001011011111101000001101101000001" andRadix:2];
    JKBigInteger *result = [int1 pow:8];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11111011110110001000100101110001101000001001100101001000100010001011000010000010010111111011111110110011011101110101001101110000101010000010111100000011010011010101100111001010101100100110100000111001110100011110100010000111100100010100100100000101111110001001011000100000010110101001010110000011011000010111101011001100001111011011001001101100011111100101101000111000101100000110101110010110010010001111100011010101101011110011000111010110000111011111010101111001100001001001110000011010000010001100011101001100011110000000011100111100101010101001011110111111100010001001110010010101101001110001001101000000001", @"Pow test 83 failed");
}

- (void)testPow84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2601740371" andRadix:8];
    JKBigInteger *result = [int1 pow:44];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2356563104441421512310747357165770534154364771350002574077353444010655427465047415647354404412045515202404612237562556100154423506607663500251062206046216572673161205751040535460313651642334326513631452763446652215373605200237746442750765720034505261162001332254427467753053405237345140736274007042405236614465744756511372536636404603022347010055066502656711553470764755612522210640334607004177276263440241053046567441", @"Pow test 84 failed");
}

- (void)testPow85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001" andRadix:2];
    JKBigInteger *result = [int1 pow:38];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010111110111000110011010101010010011100100110001011010101001111011000110110110000000010010100110010001110000100011110001", @"Pow test 85 failed");
}

- (void)testPow86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4472858677941858341" andRadix:10];
    JKBigInteger *result = [int1 pow:37];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1179373964358570746328173815214078236087630926263729336089598348342062092368216348072731503725860375338503543210298542775782971927705035633032847767264530700105354344423535662944689636416386276693980503705080783418620705030180364841281253291083008660118972600301995786554145504629937466336376601567479664322052402362644087917069272985857749735385910343246208055899832498134954606531498003196970238361225172014856194626754363971565997494107646574954962089971568591629092280299976234573960168230412340468868716426232396699749835992126584972555847663779007531026983232717788442608764165542395655929118118053368113247899583067033086794258619341328104293089524887349166831815110445185552308868181", @"Pow test 86 failed");
}

- (void)testPow87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100100010001010100011101001010010010011100010011101000101100111011100010000110" andRadix:2];
    JKBigInteger *result = [int1 pow:43];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110011101000110100110010001011101100100110110000001111011001100010110000010010010111000011010000011100010010101110101110110000101011010011010101100110110000000100000011101011110100111110010101101100001110011011001110001011100001110001011100010110101011011011000000010011001001010000010101111101100001011111100111111011000111001000101101110001010000000010110001100011001101001000000110111000010111101011101110101011011000010101101101100010100000011100000100001011111110011110000100011110111000111000101010001110110100101110011000000110110111101011000011101100111101110110001101101010111111011010001000111100111111100010010110101011111110001010101000000010110100111011100011110001111100001101100010101011111011110110100000110011010100001000110000011001101110111011000101010100011101000110011000010111010001001101000111000101000011111010000011010101110000011001001001110100010010110011111010100101000010111100101011011011011011110111011000000010110001110111111100011101001110001001000001010000011111000111100001001101111100110010100101010100111010110000110000011011000101101011010100100000110000111111011000010010100111001001111011001111011110011110001001000101100000010101000110110100111110010100000100001111100000001011011100111100101000001011111100100101011111011001100111111011111001001110110100111101100010110101100001111111011101111101001110101101111110000111011011110011111011110000100001101111101010000001110001011110110001001100011001010001110010001110110000101011000110011101011001100001010100100111011100000010101010011110010001111101101000000010100100011011000100110000000111001110111010011110100111011110001010011111111111100010101111111011101111100110110110011100100011110111000000100110101111110011100010110100011011000010111011101110110011110010001100100110110100110110100101001011110000000101100000011111001011000011110010001111011001000101101110010010110101100110110010011111011011100011111001101001100100110110010010000100110001001111111010011000000001101001011100010001001101010100010111101101111011001111011110101000000110010101111011011011101101011101110001110100001110010000010101010000101011011101110010101000101110001100000100110011000111111000010010101101101001111001101011011111010001111011011000110101101000011110010111000101010111011110000001001100110000011000000110110111000101110000000010111000110101111100111011101101100100001001001011101111100010000111011011010100100100100011110100011110111010001001001000011101101110110111100110110100110011011011010011001001110100011100000100000101110110111110101110010000011101101000110101100111110011000110101010100010010101001111111111111111100101100111000001111001011001010101111101001011100000110111100101000100101011101000100101101010101100100100100001010011100100101101100001000011000111101101111101101100000001001111000100101110110100110111101011100001101011010001011011111001110011100001011110111011110101011001000110011000011110100101110100101100100110101000101011110001010010011100001111111001110011011001001101100001011101101101010101011011110111010011110100001100110110110000101011010110010010110001101001010100101011100011101111111000010110111110100010101001110111011010010100011001100001001100011011101010010110000010001100111111111101000011111110011011100011101101110011011101101101110000101100110011110101011010110111001101100000111011111101011000001110110000000000000000000000000000000000000000000", @"Pow test 87 failed");
}

- (void)testPow88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111" andRadix:2];
    JKBigInteger *result = [int1 pow:87];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10010111001001111000000001000010111100010110011011111010000100010011110101010101001110001001010011011110001111011010001111111010100010111101111110001010001010001100001101011110100110001000001100011101011101001110110110010000011101000000101110111", @"Pow test 88 failed");
}

- (void)testPow89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3190e69" andRadix:16];
    JKBigInteger *result = [int1 pow:45];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2a72519ee8bdd8e5695e4f48c141e4d0bacb9c51036be0f5017203486e4ca3ab1b8a2b0feb58c7cbe135519368da77ced671fd83105e5e35940a52c84887a41b6a68ed93b045d3768fc078f51305595beeb22c5a01fce76bc88d294cd60123666e5993684c9967fd0d959a15289e6acb5a32c99281ae371d4b1d625605ee9ffbc9344d0c43edd3389237d5b9e539de7c9", @"Pow test 89 failed");
}

- (void)testPow90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a1f316932784" andRadix:16];
    JKBigInteger *result = [int1 pow:50];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a431814b82a1efede6639443db7ea3b1560eb0fcc0c29849e04383e7283bad89a317cf038a7787b4578799fb8f207d3b2c80df86a968f976903e97b4cb84ff0043a3822323acd918910ec3d598b88f70559b866fea5b81b4d45d31a398b6b074d1a39c3baf2dd7cd576641d979add853fe83ba8ec00ee951d0062a959e79fee11a66abd9d9252ae0d70eb94a83c1548d95ab8e756f022786fe6e07c80bbab364e846a07d7e3623b019d08d37229d75bb41512315fa407d6fd9e900521dc0ff49c3a13006c9cfc51ef70f8cdedd86e5466bbba74a118e536b1d24d33956f01c8b2d36ed92a551c383c5499dcb9d6fac25e7bc34a1bf2cd943be6ac383641d9ba44622113d2c276d8bc03e70d78a4ca3cf032c4c64395fdb0304df705b95d9ce072c1811c10000000000000000000000000", @"Pow test 90 failed");
}

- (void)testPow91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9506570372947858235580" andRadix:10];
    JKBigInteger *result = [int1 pow:41];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"12559679725355229168458883444095372344851720130763466006819617089171113198145088157631047300508172197627940765355681636553387854295372331452222398980663530915595239399791497902617585041771661467461061401775703374520590658517433888688372200653011018016784842271094743290464184475159203144276119231313317870981710665006327346910353867030241840319581330502631788958663461356387068845493843893661616477228975636042483444232213033873193810924584037626091497954343602976236960640889696745638444687322326946039256233312317168343474622731420446468542339837711927226981611142588661508897939976652943053294349894178311870622266845342661026665829575656258590513396192490139393669898204276989368395342280466022009670830924819338897577165827674092591261026459597519595735423383400817014632744554778250588486010504885158101112430437028026940114253746435013015745157116251340800000000000000000000000000000000000000000", @"Pow test 91 failed");
}

- (void)testPow92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"689800086290584" andRadix:10];
    JKBigInteger *result = [int1 pow:16];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2627676576728475713087745678892088088114935614260522489726590173157937272276551135503012901860309268152581964329420001677020207612893881458932876834753818024849251856438927430509613469381021490141098157339017484383018951618171193069142016", @"Pow test 92 failed");
}

- (void)testPow93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17c81c" andRadix:16];
    JKBigInteger *result = [int1 pow:59];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"354221a420ebdd99f5546cde2796c7f3982da29734f64f8cc8c492aa75058bab9bc420795a97ab19f63e10d6e5e2d4838d61e3281220f5427fba27cd4c3c738907c4d5429811628083e555226f4f789aa5d56b188e781e767bd71e2870cdb8c378298827e7ad47b910d78ab0100a20035e95be1390b9953bceebc513046a05b8c8dcb976b0fbcad585c00000000000000000000000000000", @"Pow test 93 failed");
}

- (void)testPow94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101100111010000001101111110010101001001011100010010101011010010110011000111111011000110000101" andRadix:2];
    JKBigInteger *result = [int1 pow:92];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111101110010111011101110100110001010100010010000101100111110000100001111000001101001101000100111110111010110111110001100011000001001101010001010111101000101010111100011111101100010111100000000111000010111110100101111001011101101101000101101001001110110000001101110001100001001110110111010010001001110100100101101111010010000101100000110111011001001111101000111001000001000111001001100000110111010101010011000101001101000001101001110100000110011101101010110000000000111001101011111110100100000111111001000101110111001111100000100110110001101000010100110111110011011001111011101111000001010000100100111110001011110000110101110001011010011100110111011001100001000101101110101101010010110000100010011101101011100100000011110111111100011010100001111010110111111010000100101011010100111000111101101110110010000110100000110100111011001010001000001001101000010111101110001101000011010101010001111110100000010111100000010000011010100111100010100100010101011011000011001101010100010011100000101111000111100001111111001000010011101011011100111101000010100000010010111010011100100100101000010011000110111110001111100000101001000010000110101111100110001001001001100101000101101000111101000011100010001011101001111111101110011111110110101100111011101101101110000010010100011011010000110001110001101111110101001110100001010101010111110011101001100101110100111111011000100010000001111000010011000100011000001001111010000110111101000100010011101001110110110101111100111011010110000100110010100110000110010000100010001110010010110101010100111010101111011001011101110111000101110000001100110000010000101000001001110000111101001110000001010010011101000000101001001100100010001100110110101000101011011101001001010001000110000111000101101010110101101011011011001110001000000010100100010011100001011111110011000110001000111011101110100100100011111001100100110101110100110111101011101011101101101000101000100010010000110101101001110011011100011010000000111000100101010100000001111110101101100110111010110011110011111100100111110000000111101101111001111111111011110101110101001100101110011001111010010011110101110110101011011111001111010001000000110110001010000010110001110101100110011011100110011101101000011000111110010001111000000101011100110000111001010000001001101010001000101010001111100001000010010101001110010011001100001100110100110001000111101100011110110100110011001010100101000011101110101110101010001001011111001101101001101100000001000001010110110010000111000110111100111101001001101000100110100101111011110110100111000010101011110111001101111111100010001011001010101000011100110001010000000101101000100010000011010101110101101010011011000101110101001001111001011110011011101111100101000001101011011010010110110011101010010101010111011100100110000110110111001111110111001010111110010001010100011101010011001100000101010010011100111110110100011000010000111011000000101001011111010011000001011101000110101110011110111001011111000101101110011011101010101111110001010101101010010111110010000010001111010111011001001011101110111000010011100110101100010010111011111011111111110101101111101110110101110011011101001111000001001100101011101011000010001000011111000111101111111001001100111110011000000000110100000001001011000101110101001111110101000101000110011001110010010010100001010010110011010011001110000100011011101011101101010010100010011100011000011110011010101010000111111011000101101111010001010010111011011011110111111110010000000101110000111010011100101111011111001000011001101011111010010010100101101111101000010100110111100100111001110011010110011001010110110001010111011001111110001000001000110111001111110111111001001011001000111001100100000100110100100100110101011010000101000101010111011111011111101110010010110101111010011101100101001000101100111110011111010101101111100101111110101101111000110100010000010101110110111010000000100000100010101100000001100110110100110111101010010100000010111000000011101101001101111001100101100010011011000011011110000100110111000001000101011000011101101010001100010100011001110011110001111000000100011010001110001010000011001101011001111100011101110100111010101010000101011001010101101101010101000010010101111110010101010001111001011000111010000100110011100110101110100001101100111110111110101101110011101011110101100101010010010000110010011011011101011001101111111000101111111100000010101111101110011100010010001111101010001111011110111111010010000111011001010100010000001010101111111011111100011000000001110000000011011001010110011111111101101110111110100001111110010010101111000010001110010111111010000101110111000001110110010111100010101011010101100111101100011010010110100101111001100100100100100100001110011001111111111100110000110110011111101111010100111111010011111101001101011011011010101010100000001010011100110100011001010000010101000011111101100011101011100110010101010110101000000001011000101111000110111110110011111000111010110001110110011110001000000001110011001001000011111100111111101111000010001001101011011111001110001010110010001010011001011110110011001000100101001111100011101011101101111000101110110011011101110000100101111101001100001101110110011010111010101001100000100110001111010100010001111111101101111011011001101110011110010111010011100100100001101101110001100000101110101010011111111101010101000110100010000101111000110110110001010100011111110000010111010000100011011010110000000110010100100111001100101110111111000111101111001010000011000110000001010111001110110000110001100011001011001010100001001110011010001011010110111101110100101011111001101100110000001011101001010101100011011100011010001101000100000111011100111011010110110101100101110110000101101111111010111010101001111001001111010000001001100001111100110001000000101111101000101110111100111110010001000001000110011000001111010000010010011001110111010000010011100000111100001000110111011011101110001010001010010110101010001001100110001101110111010100011111011101011100110101011110100111011010110001111101000001000010001010101111100010101110111110100000101010011011101001101000101111100010011010110000010100101010100111110001010110000111111110110011011011011010101010000110010011000101111000001111111100000101011111000010001011100001010001100011010100111011010011011001111000010101010111100001100111010100000111111110010111010111001000111110011011001011101111100000011100000000110000111010010010011100100111011000110100111011110100101000100100001000011110011010001100000111001000000100000110100001001010000111100111010011001001000110000111111110010010100100111001110001010011100000100100110110101100011001010101010001100101101110001010001110111011011111100010101001001100011101100111000110000111110010111001101111001010000100110100010101001100000100110001100110001000010000101100011110001011111101100001000011101110111111011000001100010011101001100110011010010110000011010010000011101101100010110101100010100110101011000110110011001100000000010011101101101110010001111111010100100001110100101110010111100100010011101010110100010100010011100000111100110010110110011101000111110010001011101001001001111011010001101101010110000110010111010011001100001100000111010100010001111000011101111100101101000111100010111100111000011100100010001111100010000001101110101001111110100001110111010010000011010101110101111011100111001000000010000000010001110011101000000100010100111001010001010101101011100011001001100100101000100101110101111001111111001100100110111110101011011101111010011111101010011010000101011100111001011011111001110100001111000000110001000100011001011000001110111011111010111010101000000011000100110001101010111101000000111001010101001111100011011101010001011010100100000101010111111111001111000000000010110001001111111100010010101101111110011001100100001111110011110011100110000000110001110110111001011111100100100101001000101101100000110101100110001111101111001011011111101101101100101101001011110011101111100110110100101010000110111110010111111111011011101011110101000111000000000101001001011100110010010010110100000001100010010011111100111111100100110001110011110010100101011101100101110101101100110000101010000111111110111010101001000111010110010011000011111010010111000100111101101010101111111111000011001110100010100000110010001101010010111010100111101111010000000010111010110110010111101010001000101001110100000001000101101111001111010100011101011011000100111000010101010101110101010010011100100011100110010100010010011000110001010110011100011110101001011111100000101100101110111010001101011111101011110111001110000000010001101011010111001111011011000000000111001011100010001", @"Pow test 94 failed");
}

- (void)testPow95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010111010100010001011101101011001011" andRadix:2];
    JKBigInteger *result = [int1 pow:60];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111011010110011110011111011001111010001101001110010010101101010101000101101111010111001101111000011010110101010111111011010011001001001101101101101101101000010011000000011111111001100001101011100111011000111011000101000101010001010010111010101010100010011011101100011111000111011000111110111001110110111110010011111110110001000001000111101011101011010110110000011000001111000011000101111010100101100110001101000100010101110001011001001100000111101110000101101110101101101110101010011010011100111010111111011101111000010111110011010100111001110111100001001101111111011000010000000001010100100111110101111011101011101111001000101011001010000000100011011010111111000100011000100111110011001110100000001111010010011110110110000101000010011100001011100101101100011001111111010111111011011100010110011101010000111111110110110001010100110100010011011100000010001010101001111110110110001100011010101011111101101010101101010110011110101111110000010010001000101010011101001111101100001110110010101101010100010111001100100100101110111111101001101101001000001101000110000011101101001101100011111110001100110100101110100001011000010110111110010011101001010001010100110000101110001101101101000111001011011001100001100100011001011101001000001000011100001111100010110010011110110110011000111011010011111111111110010010110110111111010001101110000001111111011100010000001011101100110100101011001010010010001111000011010010111011011100001000010101010111101111111100100101000101000111101001101110001010011100111110010110000101101001101000101101010110101000100100000110101100111110111101100011100001001100011111000100011110001010111011100111001010101111011110010101010100100100110001111100011110010000010110100101001100110000000010100100111001001110100111110110010011111100101101110110111011010010101010110100001110100011010111100010001001010100010011111010110111100010101010010110001100010000000000111101101110111000100011011111110000010011011001110111100011100000110110010111001010000110101001110100111110100110110110111101111100100111010111100000100001010011111000010100011010010000100010010101110000101010010011011011101000011101100011111011000000101001010011101011010010111110000111111101111100111010001", @"Pow test 95 failed");
}

- (void)testPow96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001011100101011111011011001110011100" andRadix:2];
    JKBigInteger *result = [int1 pow:47];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100110111010001011011100010100011011010100110001110001101111000011011011101101111000100001101101010110101110111000110001011101111100001010000100100011101010111000000111010011001111000011001110110101100010011110101010100100110011011101001101010001011100010000110101011110001011100111111000101010111101111001101011100001000100100011010001011100111011100010011110110110101100001010100101100001110111110000000110010110011000110011110000101000110101111101010010000010110011000001101110111010101111001001100111111111010101111110110001110000011100101110000001111010010001000000101101000011000101010000010001110010000001001011100111111010110110001111100111000100101011100001110111101111111101111010001111100111110010000111111101111111011100001011011110010100010011110111011011111100000001110000111010101101110100100110001000001111011101100001101111011010111110110000101000000101011110111100101100000100000001101010111001010010100000100001001010010111011000011110010101001111110010000011011000111110111111000011110100001111010110101110110111101101110111001100001101110011011111000110110000010101110100011111010100010101000011100000000101000011001111110011101011000010111010000101101001000001001000110100111111100010111100110100110000100101101011011000100100100110100110011010111100001110011010000101010000001010000011110101000001100110101000010000000011110111111001010000001100110011100101110110001110100110011100000101111000100111111000110100010111100010100011100000010010101010111010000000100100100001010010100010010100100111001100011111101111111100110001001100100100001110010001101011100001110101000000000100010101110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 96 failed");
}

- (void)testPow97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100111110011" andRadix:2];
    JKBigInteger *result = [int1 pow:86];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111111110010100010100001101100100000101100000011100110011010110000101101011011001011100010100011111011100000110110110001000010100000100001011111011100011001111001001111010010011101000001110111101111010101000110111110001011000111110111011111011000001010010110010010010101100001100001111101110010111000000010011010100100001100000011001101011110100011111101101010100010100101010110011011100000101110010011011100010000011111001110000111011100111011110110100110000100011101101001011011100000111011100101001011001101101110001001000101100001111010110000110011011100000010000000111100111001100100101011100011100000011111101000001010100011101011000001110100101000011101101100010101000000001000010100101110101001011000101010001000001111100000100010111010100111101001000101110001010011011101100001011100010010101101110111011010111011010010100001010101111111100001001010011001010000000000110001000011001000001100111111000011100101010100111101100100001111100001010010110101010011100110010100110010111010101110110100101101111000011110001010111001101101010001111011101110011000010000000001100111010111111001", @"Pow test 97 failed");
}

- (void)testPow98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1" andRadix:16];
    JKBigInteger *result = [int1 pow:43];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"Pow test 98 failed");
}

- (void)testPow99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000001001001010010100101111011000111000110100101100000" andRadix:2];
    JKBigInteger *result = [int1 pow:27];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100111010011110011000101100111100011100001110010110110010010001111111011010111110001011110000010011000001011011101110100011101100010110100111011100111110110011110101110111110000111110000111110001011110101100110110011001111011110011101111000010111101001101011010100000110110010000101101000001010000110010000001100111111011100100100100011101011011111011001110110100001000001011000111000001101111101100111000101101011111101001101101111100011001101010101011110110101101100011010110111001000000001000000110100101110011000110001101110000010100000110010111010000110011011101101100100101010101001111000111011110100011000001001010111000010010001110100110000110000111001111010011000100010001010011001001011111010000110110101110110001001010010101010000101000101111010111001000011100101000000011010111001110101110000001000011111000001010010111101111111001110001010101000000110110011111101100010011101000111001111011101001110011010101010011011101010110110010101000101011111111011010011011010010111011100111011111010011011101111110010010000110000110100011010000000111100111110000001100101000011001011011011101010101000001011111111001000100100101011101000100111001101010101100010110101100110010100111011001111100001111000111111011000001011101011111001110101011011000001100011111110100100001100011000001111111010011001101001010011101010011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Pow test 99 failed");
}

//////////

- (void)testNegate0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2750131224152760014475320211" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2750131224152760014475320211", @"Negate test 0 failed");
}

- (void)testNegate1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-43140714307142103043413115553006302563026423437273351676300247532702527540072542266" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"43140714307142103043413115553006302563026423437273351676300247532702527540072542266", @"Negate test 1 failed");
}

- (void)testNegate2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-576537302666603723353561734514426705157376120371747247" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"576537302666603723353561734514426705157376120371747247", @"Negate test 2 failed");
}

- (void)testNegate3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5025100371351918116931836251310170427742666091560358454353100688241850295453189652110" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5025100371351918116931836251310170427742666091560358454353100688241850295453189652110", @"Negate test 3 failed");
}

- (void)testNegate4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-d635bb263fc40128bd6" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d635bb263fc40128bd6", @"Negate test 4 failed");
}

- (void)testNegate5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-17403317064672252524025573574316747711020653102034521204446355136522413536402152762573013" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"17403317064672252524025573574316747711020653102034521204446355136522413536402152762573013", @"Negate test 5 failed");
}

- (void)testNegate6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-72924c835285e07" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"72924c835285e07", @"Negate test 6 failed");
}

- (void)testNegate7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-a93fe5639ab54f46aa8600df6ed4520f1b9" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a93fe5639ab54f46aa8600df6ed4520f1b9", @"Negate test 7 failed");
}

- (void)testNegate8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-101011100111111011100001001011001101110011101001111101111010101111110111001011" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101011100111111011100001001011001101110011101001111101111010101111110111001011", @"Negate test 8 failed");
}

- (void)testNegate9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-81311427636509897098729852077040120062837773243630535885613882458752584748918031928712888" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"81311427636509897098729852077040120062837773243630535885613882458752584748918031928712888", @"Negate test 9 failed");
}

- (void)testNegate10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-c02f3148af10c680d" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c02f3148af10c680d", @"Negate test 10 failed");
}

- (void)testNegate11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-178897c95177a58affb8fc23b7ce32a2cbbea2cb401ea225883062422671ba2e65fc8a93c1f44151cee" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"178897c95177a58affb8fc23b7ce32a2cbbea2cb401ea225883062422671ba2e65fc8a93c1f44151cee", @"Negate test 11 failed");
}

- (void)testNegate12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2ef1b6869a5b535919ec95e56f5236" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2ef1b6869a5b535919ec95e56f5236", @"Negate test 12 failed");
}

- (void)testNegate13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-12764227aef08db5391cb860e84194876f79c94" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"12764227aef08db5391cb860e84194876f79c94", @"Negate test 13 failed");
}

- (void)testNegate14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-626076527166041764064634050725716650773574540534000754430565737341463742204101630113523727151731517640122403" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"626076527166041764064634050725716650773574540534000754430565737341463742204101630113523727151731517640122403", @"Negate test 14 failed");
}

- (void)testNegate15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2496bec0cf" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2496bec0cf", @"Negate test 15 failed");
}

- (void)testNegate16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-65e89ee2c42b8425391c37198daad62704ca7860fdc837b86" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"65e89ee2c42b8425391c37198daad62704ca7860fdc837b86", @"Negate test 16 failed");
}

- (void)testNegate17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6383115566106726827683490091771369295590569091809427375" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6383115566106726827683490091771369295590569091809427375", @"Negate test 17 failed");
}

- (void)testNegate18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10100000001110010100011010001010001100010001110101111100110101010000010001000001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100000001110010100011010001010001100010001110101111100110101010000010001000001", @"Negate test 18 failed");
}

- (void)testNegate19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-106e7ea21801a3d0126b1b45d7d69f01" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"106e7ea21801a3d0126b1b45d7d69f01", @"Negate test 19 failed");
}

- (void)testNegate20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1011100111101010100011101100101100110001100010111100000110100011110100011011101011101111011001010111010110011100101011001111010010110110111000110000101110111001110100001100010011000000011110111011101111100010001011111001111111011110001111111000001011001111011000011110100010111110100100001011011010000110111000100100110011" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011100111101010100011101100101100110001100010111100000110100011110100011011101011101111011001010111010110011100101011001111010010110110111000110000101110111001110100001100010011000000011110111011101111100010001011111001111111011110001111111000001011001111011000011110100010111110100100001011011010000110111000100100110011", @"Negate test 20 failed");
}

- (void)testNegate21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-efac3e2a2440ab83180db29c2089afddf48ef" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"efac3e2a2440ab83180db29c2089afddf48ef", @"Negate test 21 failed");
}

- (void)testNegate22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-4177397287163395914438610992715245854717957379145363954817723726988939845" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4177397287163395914438610992715245854717957379145363954817723726988939845", @"Negate test 22 failed");
}

- (void)testNegate23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-735787689368803199046078827507549" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"735787689368803199046078827507549", @"Negate test 23 failed");
}

- (void)testNegate24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1f04414c109a8061e" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1f04414c109a8061e", @"Negate test 24 failed");
}

- (void)testNegate25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1245bfcdeaa388c8fe6904551b51753cbf7" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1245bfcdeaa388c8fe6904551b51753cbf7", @"Negate test 25 failed");
}

- (void)testNegate26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-50332948704159520088782660382798986941172812394970779829203880696747" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"50332948704159520088782660382798986941172812394970779829203880696747", @"Negate test 26 failed");
}

- (void)testNegate27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-434367607151256473147560737040255453223452203562145522471263774554015307570205471" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"434367607151256473147560737040255453223452203562145522471263774554015307570205471", @"Negate test 27 failed");
}

- (void)testNegate28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-65256385024348276400449880636530555436345086238647878" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"65256385024348276400449880636530555436345086238647878", @"Negate test 28 failed");
}

- (void)testNegate29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-576639648850557170307535288452139112604744801153513" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"576639648850557170307535288452139112604744801153513", @"Negate test 29 failed");
}

- (void)testNegate30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-362103700625556671157345415406326012637607127672130311074013322063420" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"362103700625556671157345415406326012637607127672130311074013322063420", @"Negate test 30 failed");
}

- (void)testNegate31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7712801974106780198262850275542" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7712801974106780198262850275542", @"Negate test 31 failed");
}

- (void)testNegate32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11011100100110111111100101101011001001010101100010101100100101100011001001110110011111100100001001110110110100100110000010001001100111100111101100101100101100010010110000001101110101111111101110011111011000" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011100100110111111100101101011001001010101100010101100100101100011001001110110011111100100001001110110110100100110000010001001100111100111101100101100101100010010110000001101110101111111101110011111011000", @"Negate test 32 failed");
}

- (void)testNegate33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-605ba4cddf3a40b67d" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"605ba4cddf3a40b67d", @"Negate test 33 failed");
}

- (void)testNegate34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-485101" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"485101", @"Negate test 34 failed");
}

- (void)testNegate35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100101100001110011100001010001000011110101110101111010000001001110110001101101001110100100011110001001110000100100111000000110101110011000000001011001000000101001101000010011001001111111101101111001111010110011000100011111101001001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100101100001110011100001010001000011110101110101111010000001001110110001101101001110100100011110001001110000100100111000000110101110011000000001011001000000101001101000010011001001111111101101111001111010110011000100011111101001001", @"Negate test 35 failed");
}

- (void)testNegate36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-9385474454101437352805491326003783943685734245692110" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"9385474454101437352805491326003783943685734245692110", @"Negate test 36 failed");
}

- (void)testNegate37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-4361340592074336094337162104688953607310959334233" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4361340592074336094337162104688953607310959334233", @"Negate test 37 failed");
}

- (void)testNegate38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1cc040411474b8a92ae597f744610c470e9504dfd1d9623d9f95f45a8c30e5608276ecfe" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1cc040411474b8a92ae597f744610c470e9504dfd1d9623d9f95f45a8c30e5608276ecfe", @"Negate test 38 failed");
}

- (void)testNegate39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11663344517443371002710105034360425771411155230365225437565317176572564574526740730721755220466" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"11663344517443371002710105034360425771411155230365225437565317176572564574526740730721755220466", @"Negate test 39 failed");
}

- (void)testNegate40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1000101100100111100110111111111110001011001001001101001111000010010110111111010100000111100011011101010101100000101010011001110010101000000010010" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000101100100111100110111111111110001011001001001101001111000010010110111111010100000111100011011101010101100000101010011001110010101000000010010", @"Negate test 40 failed");
}

- (void)testNegate41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2b6fb7c74ce78f9ad6af" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2b6fb7c74ce78f9ad6af", @"Negate test 41 failed");
}

- (void)testNegate42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100111111000110110101111010101001010001100101100100011101000000100" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100111111000110110101111010101001010001100101100100011101000000100", @"Negate test 42 failed");
}

- (void)testNegate43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10001010010111000101110011000111100000011101100010000010100101000001011001011011001101000011110001101101111110111011111001010111011101011010000010100100100101111100101110010010101111001011111011010001100100001111011011111000111101011011110100110011101110111101101101000101101010101101001001101101010011010010011000" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001010010111000101110011000111100000011101100010000010100101000001011001011011001101000011110001101101111110111011111001010111011101011010000010100100100101111100101110010010101111001011111011010001100100001111011011111000111101011011110100110011101110111101101101000101101010101101001001101101010011010010011000", @"Negate test 43 failed");
}

- (void)testNegate44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-adf8188342cf52db42a8bf35d7d578c0be4a3858" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"adf8188342cf52db42a8bf35d7d578c0be4a3858", @"Negate test 44 failed");
}

- (void)testNegate45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2403275175" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2403275175", @"Negate test 45 failed");
}

- (void)testNegate46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-c1c3a151f02a55fa8caa321e9f9f45b9c6db0c4c2625b848128823a94e0886c93d5" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c1c3a151f02a55fa8caa321e9f9f45b9c6db0c4c2625b848128823a94e0886c93d5", @"Negate test 46 failed");
}

- (void)testNegate47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5652688789981916189090591501375902667" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5652688789981916189090591501375902667", @"Negate test 47 failed");
}

- (void)testNegate48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-57d83e08ea1eb0228dc6c5550f966d2da6c8a3c1c5110542e4ee909d3c3e4dcb69f4be" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"57d83e08ea1eb0228dc6c5550f966d2da6c8a3c1c5110542e4ee909d3c3e4dcb69f4be", @"Negate test 48 failed");
}

- (void)testNegate49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2749230484200364128030271014010715346298325645746556701971046369478995508849584228145199841194021458" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2749230484200364128030271014010715346298325645746556701971046369478995508849584228145199841194021458", @"Negate test 49 failed");
}

- (void)testNegate50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10000110101001011011010001101010011101000100" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000110101001011011010001101010011101000100", @"Negate test 50 failed");
}

- (void)testNegate51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1010001000111111100110001010001011100110011011100000111011010000111100011101" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010001000111111100110001010001011100110011011100000111011010000111100011101", @"Negate test 51 failed");
}

- (void)testNegate52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1001110111010011100111001001100111000011101100100100110000011010010101110100110110101011000001010000111011100010110010110000111100011111000011111111000101110100011000000110001010010100001101011111000011100110000101110111100100010011000101101001111011111" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001110111010011100111001001100111000011101100100100110000011010010101110100110110101011000001010000111011100010110010110000111100011111000011111111000101110100011000000110001010010100001101011111000011100110000101110111100100010011000101101001111011111", @"Negate test 52 failed");
}

- (void)testNegate53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7db23e328324d65c0b33c05a0a" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7db23e328324d65c0b33c05a0a", @"Negate test 53 failed");
}

- (void)testNegate54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-15374366563265001420430213160102320335102774733654763503447453630633510411552237620437722306734065" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15374366563265001420430213160102320335102774733654763503447453630633510411552237620437722306734065", @"Negate test 54 failed");
}

- (void)testNegate55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-256447151251766540767784121779298023059761096203699055241753374273788271005290178617144" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"256447151251766540767784121779298023059761096203699055241753374273788271005290178617144", @"Negate test 55 failed");
}

- (void)testNegate56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-114c733c87b28f626497b867a53bc3f26952066f37e17e115c7e261c4eb66a3aab91b45207c872c39" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"114c733c87b28f626497b867a53bc3f26952066f37e17e115c7e261c4eb66a3aab91b45207c872c39", @"Negate test 56 failed");
}

- (void)testNegate57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-46bd495d63b3b6f7db8a30c02998183c66c8c0e36b3cd3" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"46bd495d63b3b6f7db8a30c02998183c66c8c0e36b3cd3", @"Negate test 57 failed");
}

- (void)testNegate58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-210e0c667f7f561b90b201f4ded316cd2cc8ac61fe6e625a987d2ed6cd0f1dc6ed8ddf503d7253ce" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"210e0c667f7f561b90b201f4ded316cd2cc8ac61fe6e625a987d2ed6cd0f1dc6ed8ddf503d7253ce", @"Negate test 58 failed");
}

- (void)testNegate59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6360520312675372241154773245647601443" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6360520312675372241154773245647601443", @"Negate test 59 failed");
}

- (void)testNegate60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11100010001100011000011100111011000110010100100101101111111101100111111010001111100111000001010011001010111100101011010010011010110101000101000011110101110111101011100100110101100100100011011101100011011100010010111000110101010100011100000011111100111101001111010100011" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100010001100011000011100111011000110010100100101101111111101100111111010001111100111000001010011001010111100101011010010011010110101000101000011110101110111101011100100110101100100100011011101100011011100010010111000110101010100011100000011111100111101001111010100011", @"Negate test 60 failed");
}

- (void)testNegate61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-51166150744" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"51166150744", @"Negate test 61 failed");
}

- (void)testNegate62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7f8ffe57a91eca3351cf489eae0bdbf489a7421fcadda8c30f9602edc087a3bfbd0" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7f8ffe57a91eca3351cf489eae0bdbf489a7421fcadda8c30f9602edc087a3bfbd0", @"Negate test 62 failed");
}

- (void)testNegate63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10101000010000011011000111111011010100110011000001100010100011101111110111010110110111111110011011001101110001101101100101101100110101011100111000111111100010100011001110101100101001000000011101011111111101000111100010011000101000010011100110001110011111001000001100000110100100111101110011101110011100000110001010101100111" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101000010000011011000111111011010100110011000001100010100011101111110111010110110111111110011011001101110001101101100101101100110101011100111000111111100010100011001110101100101001000000011101011111111101000111100010011000101000010011100110001110011111001000001100000110100100111101110011101110011100000110001010101100111", @"Negate test 63 failed");
}

- (void)testNegate64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100011011000100111101000111100101101010001011110110101011101111011110001001010001111001110010100101101100110000000110011111101110000110010010110011101011111101111000111000100101111110101101000000101100011110110000110110011001101110101010010011110001111100101111011101001010001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011011000100111101000111100101101010001011110110101011101111011110001001010001111001110010100101101100110000000110011111101110000110010010110011101011111101111000111000100101111110101101000000101100011110110000110110011001101110101010010011110001111100101111011101001010001", @"Negate test 64 failed");
}

- (void)testNegate65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10110000000100110010011101010010011100111010011001101100101110100010000000000110100010011010000101100010101001110001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110000000100110010011101010010011100111010011001101100101110100010000000000110100010011010000101100010101001110001", @"Negate test 65 failed");
}

- (void)testNegate66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-31ef0d404d11845ebe825da3113e6d2842c" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"31ef0d404d11845ebe825da3113e6d2842c", @"Negate test 66 failed");
}

- (void)testNegate67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11011101011011101011110010110001100011001110011000100001001101011110000100110101101100010110110010001100100001110101101" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011101011011101011110010110001100011001110011000100001001101011110000100110101101100010110110010001100100001110101101", @"Negate test 67 failed");
}

- (void)testNegate68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1da2f0fe4b8f5276f2e1247009725" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1da2f0fe4b8f5276f2e1247009725", @"Negate test 68 failed");
}

- (void)testNegate69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10100100011111110100001100000100000111111010011010111011101011111101101010100001110000100110111000111000111001100000000100010000010110011001000011001001001100110110000001000001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100100011111110100001100000100000111111010011010111011101011111101101010100001110000100110111000111000111001100000000100010000010110011001000011001001001100110110000001000001", @"Negate test 69 failed");
}

- (void)testNegate70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-45283618914270260577648798394879333136922208189378605590549572605" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"45283618914270260577648798394879333136922208189378605590549572605", @"Negate test 70 failed");
}

- (void)testNegate71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-463331431853854878182984931058" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"463331431853854878182984931058", @"Negate test 71 failed");
}

- (void)testNegate72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-12b0a4dc0d78f5e615317ebe17be41fd9ef000585f2ff060ad9a2a98fdc37c084b35ae810e7fbf89b4" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"12b0a4dc0d78f5e615317ebe17be41fd9ef000585f2ff060ad9a2a98fdc37c084b35ae810e7fbf89b4", @"Negate test 72 failed");
}

- (void)testNegate73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2226731322223101647" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2226731322223101647", @"Negate test 73 failed");
}

- (void)testNegate74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7316263031217160501706272626744032102230057707462576660324007141047766041142120056017" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7316263031217160501706272626744032102230057707462576660324007141047766041142120056017", @"Negate test 74 failed");
}

- (void)testNegate75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6361674614507275464506562406746447141766006737024147423042003120552" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6361674614507275464506562406746447141766006737024147423042003120552", @"Negate test 75 failed");
}

- (void)testNegate76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-293f14961cf1062f42662ae4863ec418e438e54a4d99a3dc017" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"293f14961cf1062f42662ae4863ec418e438e54a4d99a3dc017", @"Negate test 76 failed");
}

- (void)testNegate77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-67b64f115a98eaa30735c5382ec72912958639945f3d08a55" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"67b64f115a98eaa30735c5382ec72912958639945f3d08a55", @"Negate test 77 failed");
}

- (void)testNegate78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-110000111010111001100011111101000011111101111000101010001100101101000110101101010010000101" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000111010111001100011111101000011111101111000101010001100101101000110101101010010000101", @"Negate test 78 failed");
}

- (void)testNegate79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2027117451116264734006235566312605266443475337472140317432325016752313422570445" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2027117451116264734006235566312605266443475337472140317432325016752313422570445", @"Negate test 79 failed");
}

- (void)testNegate80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-98882737545092588288109546454112229925042199742909504441318043" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"98882737545092588288109546454112229925042199742909504441318043", @"Negate test 80 failed");
}

- (void)testNegate81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-330945848556317826281908043740996439007798073681052848202305170727905322616954418521435570715" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"330945848556317826281908043740996439007798073681052848202305170727905322616954418521435570715", @"Negate test 81 failed");
}

- (void)testNegate82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10011110000110000100" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011110000110000100", @"Negate test 82 failed");
}

- (void)testNegate83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11010011000110010111010" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11010011000110010111010", @"Negate test 83 failed");
}

- (void)testNegate84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-30007f04f72ec3da1c588280395eb73b574f90c8b4c68fdf1d1c" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"30007f04f72ec3da1c588280395eb73b574f90c8b4c68fdf1d1c", @"Negate test 84 failed");
}

- (void)testNegate85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-428396720602339464" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"428396720602339464", @"Negate test 85 failed");
}

- (void)testNegate86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11100110101000011011010100110101011001001001000000010100001000110100100110011100000100111010111100100001110101111011110010010111110111101000000011010100110110001000100010110110001101100010000100100110000111101101000000000010100111000010100011101001011001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100110101000011011010100110101011001001001000000010100001000110100100110011100000100111010111100100001110101111011110010010111110111101000000011010100110110001000100010110110001101100010000100100110000111101101000000000010100111000010100011101001011001", @"Negate test 86 failed");
}

- (void)testNegate87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3006444402236716735620" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3006444402236716735620", @"Negate test 87 failed");
}

- (void)testNegate88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-e1b1af837dc2ec39c6c29e6333d2994128f05dd81263f1eabefeb1fd62a2396a03fd8477d8603b8b2cc" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e1b1af837dc2ec39c6c29e6333d2994128f05dd81263f1eabefeb1fd62a2396a03fd8477d8603b8b2cc", @"Negate test 88 failed");
}

- (void)testNegate89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-9" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"9", @"Negate test 89 failed");
}

- (void)testNegate90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-111001110000111000100000000010100000110010110011011000111100001101000000011100010111111011010000010100101111101010001110001010000100110" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111001110000111000100000000010100000110010110011011000111100001101000000011100010111111011010000010100101111101010001110001010000100110", @"Negate test 90 failed");
}

- (void)testNegate91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-306601557357427006652645766554607623530210542606225640371134342113703402554467167673762745006710627631177" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"306601557357427006652645766554607623530210542606225640371134342113703402554467167673762745006710627631177", @"Negate test 91 failed");
}

- (void)testNegate92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1000011100100100001110010110100101111000110100001001100111011001101111110111011011100001001101111100101111100110000011010110100010101011001011010001001110100001000100" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000011100100100001110010110100101111000110100001001100111011001101111110111011011100001001101111100101111100110000011010110100010101011001011010001001110100001000100", @"Negate test 92 failed");
}

- (void)testNegate93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7914755665065115130111697303597301330017910572645158921062972884210741558092851085987278151" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7914755665065115130111697303597301330017910572645158921062972884210741558092851085987278151", @"Negate test 93 failed");
}

- (void)testNegate94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-b370931bbd9eb9cf72bdd8db0c97a01ebe30a7fe187e9ceaca1dd6547903834d58d8" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"b370931bbd9eb9cf72bdd8db0c97a01ebe30a7fe187e9ceaca1dd6547903834d58d8", @"Negate test 94 failed");
}

- (void)testNegate95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-15fcb32dc60020d7a9c8bf2d5ceadae43bfd33fb62221dfc64731b9902e" andRadix:16];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"15fcb32dc60020d7a9c8bf2d5ceadae43bfd33fb62221dfc64731b9902e", @"Negate test 95 failed");
}

- (void)testNegate96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-7" andRadix:10];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7", @"Negate test 96 failed");
}

- (void)testNegate97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-546766750575531102671164262301073455025433565353230333473" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"546766750575531102671164262301073455025433565353230333473", @"Negate test 97 failed");
}

- (void)testNegate98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-661220023004126136633422466500051121732272" andRadix:8];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"661220023004126136633422466500051121732272", @"Negate test 98 failed");
}

- (void)testNegate99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100011000011011011100101110010010100001101100000000010100011000010111101001000010000001011111110100101101100001001001" andRadix:2];
    JKBigInteger *result = [int1 negate];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011000011011011100101110010010100001101100000000010100011000010111101001000010000001011111110100101101100001001001", @"Negate test 99 failed");
}

- (void)testAbs0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-174141545532305530573436621261026247" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"174141545532305530573436621261026247", @"Abs test 0 failed");
}

- (void)testAbs1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-16072" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"16072", @"Abs test 1 failed");
}

- (void)testAbs2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1011011110011001000101111101011110010011100000001011110001000110110110110001010111011000010010111111111111110111111101001010101010" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011011110011001000101111101011110010011100000001011110001000110110110110001010111011000010010111111111111110111111101001010101010", @"Abs test 2 failed");
}

- (void)testAbs3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1bd9bc7aa3b238886289f8586a9273ebe9fecd528ede7b1" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1bd9bc7aa3b238886289f8586a9273ebe9fecd528ede7b1", @"Abs test 3 failed");
}

- (void)testAbs4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100010110001111110010111101001010001000111001011110100010001101010111001111110000000101110100111111011000110000010010" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010110001111110010111101001010001000111001011110100010001101010111001111110000000101110100111111011000110000010010", @"Abs test 4 failed");
}

- (void)testAbs5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3202188173057432754861402880221257782094623951950859656995141423015" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3202188173057432754861402880221257782094623951950859656995141423015", @"Abs test 5 failed");
}

- (void)testAbs6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-8e5b9e" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8e5b9e", @"Abs test 6 failed");
}

- (void)testAbs7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-64a3c177747cdc002645944c46beb9" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"64a3c177747cdc002645944c46beb9", @"Abs test 7 failed");
}

- (void)testAbs8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5031951113362876621377662178683386318699672169984209607031632179329870924624707258683384099" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5031951113362876621377662178683386318699672169984209607031632179329870924624707258683384099", @"Abs test 8 failed");
}

- (void)testAbs9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10011100000011110101010100100110110001010000100100100010110100010000000010100010000010111000001001010111011111001001010111000011000001100111111000101111010000001110111000000001001001110110100101100100100101111000010001" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10011100000011110101010100100110110001010000100100100010110100010000000010100010000010111000001001010111011111001001010111000011000001100111111000101111010000001110111000000001001001110110100101100100100101111000010001", @"Abs test 9 failed");
}

- (void)testAbs10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-4100485495442806253766959005993565314089061933649915350162467185341197994497377" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4100485495442806253766959005993565314089061933649915350162467185341197994497377", @"Abs test 10 failed");
}

- (void)testAbs11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-105130374166136615063132360410433345525502546571051742125555732416303163152020023216" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"105130374166136615063132360410433345525502546571051742125555732416303163152020023216", @"Abs test 11 failed");
}

- (void)testAbs12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-101000001011110111010111001011100010100101110110010101100110011111000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101000001011110111010111001011100010100101110110010101100110011111000", @"Abs test 12 failed");
}

- (void)testAbs13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-370816214870874" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"370816214870874", @"Abs test 13 failed");
}

- (void)testAbs14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3254547038781901422147451802238120850108639556968655786208773527" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3254547038781901422147451802238120850108639556968655786208773527", @"Abs test 14 failed");
}

- (void)testAbs15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-8624230859202791117344446916782992007427920125728380572065319536829097084616626166645659465" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"8624230859202791117344446916782992007427920125728380572065319536829097084616626166645659465", @"Abs test 15 failed");
}

- (void)testAbs16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-101010100111001001110001110111111110000100101010010011101" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101010100111001001110001110111111110000100101010010011101", @"Abs test 16 failed");
}

- (void)testAbs17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-13253213102325664644561620666176626250203054507265024245577740231116334714306517277707066247571327424" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"13253213102325664644561620666176626250203054507265024245577740231116334714306517277707066247571327424", @"Abs test 17 failed");
}

- (void)testAbs18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3022495401319332739644169949526869948333228610526163743404010279821672980937848325035749" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3022495401319332739644169949526869948333228610526163743404010279821672980937848325035749", @"Abs test 18 failed");
}

- (void)testAbs19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-119154aec7c6d665fc6152c65ef56200f471307" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"119154aec7c6d665fc6152c65ef56200f471307", @"Abs test 19 failed");
}

- (void)testAbs20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-48ee47af16acb1d23f9dec9ce7dd3a177e2e7a749e5f035ea886e0cfcab" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"48ee47af16acb1d23f9dec9ce7dd3a177e2e7a749e5f035ea886e0cfcab", @"Abs test 20 failed");
}

- (void)testAbs21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-980627483387857641393904122584969780905" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"980627483387857641393904122584969780905", @"Abs test 21 failed");
}

- (void)testAbs22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-72477402483366161913443405" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"72477402483366161913443405", @"Abs test 22 failed");
}

- (void)testAbs23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-602256510514031761424355214512415745372002406660524" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"602256510514031761424355214512415745372002406660524", @"Abs test 23 failed");
}

- (void)testAbs24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-46a559c80e00e623dd5cc856575" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"46a559c80e00e623dd5cc856575", @"Abs test 24 failed");
}

- (void)testAbs25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2012472634574464626637634506652215445032447306322222614764" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2012472634574464626637634506652215445032447306322222614764", @"Abs test 25 failed");
}

- (void)testAbs26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-4367889904496142674758150963224371760122588504805630956704218977308862144005054969218042858" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4367889904496142674758150963224371760122588504805630956704218977308862144005054969218042858", @"Abs test 26 failed");
}

- (void)testAbs27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1c01d55b0d82e5826d8dccffdd0822793e44c69f57" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1c01d55b0d82e5826d8dccffdd0822793e44c69f57", @"Abs test 27 failed");
}

- (void)testAbs28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3351775436876570835068173645426689868341052063447768749382234" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3351775436876570835068173645426689868341052063447768749382234", @"Abs test 28 failed");
}

- (void)testAbs29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-13ea1f0bd3fd8a58cdc167dd875872bcbdef89dadc197fc11712a062bd6166a5759325224e2e8da1bff" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"13ea1f0bd3fd8a58cdc167dd875872bcbdef89dadc197fc11712a062bd6166a5759325224e2e8da1bff", @"Abs test 29 failed");
}

- (void)testAbs30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2e6" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2e6", @"Abs test 30 failed");
}

- (void)testAbs31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10101101110101100110110001111001001101000100110001100101100011010100001001011101100110100001100111111001111000000000100111000011011110111010010111100101101011101111110001101111101011011110010001100100101001000010100000111011100000101010000111100001010011001010011111001011101101111100001100010000100111100010011111011000101" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101101110101100110110001111001001101000100110001100101100011010100001001011101100110100001100111111001111000000000100111000011011110111010010111100101101011101111110001101111101011011110010001100100101001000010100000111011100000101010000111100001010011001010011111001011101101111100001100010000100111100010011111011000101", @"Abs test 31 failed");
}

- (void)testAbs32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-945579744186762962650027883876240371971716807202399529133602881348" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"945579744186762962650027883876240371971716807202399529133602881348", @"Abs test 32 failed");
}

- (void)testAbs33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1492f26" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1492f26", @"Abs test 33 failed");
}

- (void)testAbs34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10001001100000100010010111111010101101101100111000110111101100010110101111011001111011001" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001001100000100010010111111010101101101100111000110111101100010110101111011001111011001", @"Abs test 34 failed");
}

- (void)testAbs35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10000100000000111010000111100110011000101001011011011110011111101111011001101101011010011100111101011101001010001110110111010111101000000100101111110010010111010100001010111110101000100111111010001101101101101100000010101111000001101" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000100000000111010000111100110011000101001011011011110011111101111011001101101011010011100111101011101001010001110110111010111101000000100101111110010010111010100001010111110101000100111111010001101101101101100000010101111000001101", @"Abs test 35 failed");
}

- (void)testAbs36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1def9f59426601070461f25eb3a8f6229c7e697ca8a2bd" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1def9f59426601070461f25eb3a8f6229c7e697ca8a2bd", @"Abs test 36 failed");
}

- (void)testAbs37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6506413326577757653035123527670270745313067547612745440760574452730674155047577721700114761533360222447" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6506413326577757653035123527670270745313067547612745440760574452730674155047577721700114761533360222447", @"Abs test 37 failed");
}

- (void)testAbs38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-79511699172571984378147233715460448698883" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"79511699172571984378147233715460448698883", @"Abs test 38 failed");
}

- (void)testAbs39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-42825325324530856160" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"42825325324530856160", @"Abs test 39 failed");
}

- (void)testAbs40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100010010110110001100001111011000110100000010010011001110111110011100011110101000110010000100100000111010110110101110110001000100110111010001000000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010010110110001100001111011000110100000010010011001110111110011100011110101000110010000100100000111010110110101110110001000100110111010001000000", @"Abs test 40 failed");
}

- (void)testAbs41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1692100441607987797468112325570926932658268602858635621417828145988258724355085163453144" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1692100441607987797468112325570926932658268602858635621417828145988258724355085163453144", @"Abs test 41 failed");
}

- (void)testAbs42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2c6c04dc298d3e1b8" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2c6c04dc298d3e1b8", @"Abs test 42 failed");
}

- (void)testAbs43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2100228435129595" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2100228435129595", @"Abs test 43 failed");
}

- (void)testAbs44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3263099517647281584799841227941057853439598378729736006651282346850728043466641859771" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3263099517647281584799841227941057853439598378729736006651282346850728043466641859771", @"Abs test 44 failed");
}

- (void)testAbs45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-459511510513166752759409977011063850" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"459511510513166752759409977011063850", @"Abs test 45 failed");
}

- (void)testAbs46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-9846428144755574064898712468612521258030492334966357685623363275808036349089187082939073261040956329" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"9846428144755574064898712468612521258030492334966357685623363275808036349089187082939073261040956329", @"Abs test 46 failed");
}

- (void)testAbs47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-67556397301504040256" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"67556397301504040256", @"Abs test 47 failed");
}

- (void)testAbs48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1000000110000010000011100000101001111110100010111010000111011000010101011101000110001110110" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000110000010000011100000101001111110100010111010000111011000010101011101000110001110110", @"Abs test 48 failed");
}

- (void)testAbs49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11100000011000100010101100000111011110010111100010000100001000010000101111010010000001100001110110101010010011000011101101101100110110001011101001111011010011011100010111111110100111011011010101010011111101110010100010110101001100000010" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11100000011000100010101100000111011110010111100010000100001000010000101111010010000001100001110110101010010011000011101101101100110110001011101001111011010011011100010111111110100111011011010101010011111101110010100010110101001100000010", @"Abs test 49 failed");
}

- (void)testAbs50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-3997518232050507245164745076328295178" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3997518232050507245164745076328295178", @"Abs test 50 failed");
}

- (void)testAbs51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-ebe865c805ea469527a20f0939180f2e6406587a87358c17b0caaa" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"ebe865c805ea469527a20f0939180f2e6406587a87358c17b0caaa", @"Abs test 51 failed");
}

- (void)testAbs52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-e80ca6ad7700" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e80ca6ad7700", @"Abs test 52 failed");
}

- (void)testAbs53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-328bfb9dfc7cbea5c4c7a0ec1a" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"328bfb9dfc7cbea5c4c7a0ec1a", @"Abs test 53 failed");
}

- (void)testAbs54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-15327677464330206005676664154476515115" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15327677464330206005676664154476515115", @"Abs test 54 failed");
}

- (void)testAbs55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1010111111110111111011101001101010011000111010100100011110000100011000100011010000111001001101011011100110111001000110000101001110110101010110010000000000101101111110110011" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010111111110111111011101001101010011000111010100100011110000100011000100011010000111001001101011011100110111001000110000101001110110101010110010000000000101101111110110011", @"Abs test 55 failed");
}

- (void)testAbs56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-40367720165" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"40367720165", @"Abs test 56 failed");
}

- (void)testAbs57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-110111110101100111010010001000001000001000000111101010010011001110001011000001101111100011100011011011001011110011000110110000110010100001110000000011111010001101110100111101110010001100010100000101100000011001111100001000001000100100" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110111110101100111010010001000001000001000000111101010010011001110001011000001101111100011100011011011001011110011000110110000110010100001110000000011111010001101110100111101110010001100010100000101100000011001111100001000001000100100", @"Abs test 57 failed");
}

- (void)testAbs58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1111100101000011101100111001000110110011100000001000111010111111101100111110000011101101111100011101111111100" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111100101000011101100111001000110110011100000001000111010111111101100111110000011101101111100011101111111100", @"Abs test 58 failed");
}

- (void)testAbs59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-111" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111", @"Abs test 59 failed");
}

- (void)testAbs60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6183055868756232563940769308907304427750988827565" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6183055868756232563940769308907304427750988827565", @"Abs test 60 failed");
}

- (void)testAbs61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-101111110" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101111110", @"Abs test 61 failed");
}

- (void)testAbs62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2335f426ef6170eaa6268bcd" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2335f426ef6170eaa6268bcd", @"Abs test 62 failed");
}

- (void)testAbs63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11521652323225341413715313746561561204727067414053542752576" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"11521652323225341413715313746561561204727067414053542752576", @"Abs test 63 failed");
}

- (void)testAbs64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100100111011011010101010100111010000111110000010010010001100011001001000111011011100111001110000100000010011" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100100111011011010101010100111010000111110000010010010001100011001001000111011011100111001110000100000010011", @"Abs test 64 failed");
}

- (void)testAbs65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-320498605411364064923541601701416503413710591387289055522186941671010967785419491402571885" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"320498605411364064923541601701416503413710591387289055522186941671010967785419491402571885", @"Abs test 65 failed");
}

- (void)testAbs66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1000000110110011010101010101000001011011111111010010001011001111011001001010100001010010101110000110010100101010100010011111001010001101111100101010110100000001101000111010010010100111010000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000110110011010101010101000001011011111111010010001011001111011001001010100001010010101110000110010100101010100010011111001010001101111100101010110100000001101000111010010010100111010000", @"Abs test 66 failed");
}

- (void)testAbs67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1111010000011011101010" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111010000011011101010", @"Abs test 67 failed");
}

- (void)testAbs68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100011000100101001000011100011010000010011010000011000010001110101011011001000111111011001111001000101001110100100010011000010010010011111110110101000100000010001011010100010101101010001000011011000010111000110010111101001000101101100011110000011100101000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011000100101001000011100011010000010011010000011000010001110101011011001000111111011001111001000101001110100100010011000010010010011111110110101000100000010001011010100010101101010001000011011000010111000110010111101001000101101100011110000011100101000", @"Abs test 68 failed");
}

- (void)testAbs69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-100011111111001000111110010111111110111011010110000101010010100000001100111010101110000010000010000101110011100010100000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011111111001000111110010111111110111011010110000101010010100000001100111010101110000010000010000101110011100010100000", @"Abs test 69 failed");
}

- (void)testAbs70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11101101011110011010101011011111110001001000110110000100000101001011111100110011100001010000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101101011110011010101011011111110001001000110110000100000101001011111100110011100001010000", @"Abs test 70 failed");
}

- (void)testAbs71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10100110001011010111101010010000000010001010001" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100110001011010111101010010000000010001010001", @"Abs test 71 failed");
}

- (void)testAbs72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-39860912224558859581054021470984279322418575315606630462992260654042232238907263" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"39860912224558859581054021470984279322418575315606630462992260654042232238907263", @"Abs test 72 failed");
}

- (void)testAbs73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1011100101010111001010100001000111100011011100001110101001001000000110110100101111011111101010000100100110011110000001111011011101111111000111101010011100000001000001100111111110111101100110100101110" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011100101010111001010100001000111100011011100001110101001001000000110110100101111011111101010000100100110011110000001111011011101111111000111101010011100000001000001100111111110111101100110100101110", @"Abs test 73 failed");
}

- (void)testAbs74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-6533724677207500732103754116223602464473155465303113415405132711101401747325047740015143055274444547316" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6533724677207500732103754116223602464473155465303113415405132711101401747325047740015143055274444547316", @"Abs test 74 failed");
}

- (void)testAbs75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-11000100011010010100010011101001010010101101000000111101000010110111101001101001011110101001010111011100100100100001111110001011011111000101011101100001111110111011011100011111010101110001101011011110000110011100110010110100101011011101010110011111101110000000101111101110011" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11000100011010010100010011101001010010101101000000111101000010110111101001101001011110101001010111011100100100100001111110001011011111000101011101100001111110111011011100011111010101110001101011011110000110011100110010110100101011011101010110011111101110000000101111101110011", @"Abs test 75 failed");
}

- (void)testAbs76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-f16db8850f141ee2719e8ff10e72f2159b43e10bc35d7efe" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"f16db8850f141ee2719e8ff10e72f2159b43e10bc35d7efe", @"Abs test 76 failed");
}

- (void)testAbs77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-305562472302516173613615077607466320557" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"305562472302516173613615077607466320557", @"Abs test 77 failed");
}

- (void)testAbs78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-68392279855032965932924352766" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"68392279855032965932924352766", @"Abs test 78 failed");
}

- (void)testAbs79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-16333457054333152502355214516150" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16333457054333152502355214516150", @"Abs test 79 failed");
}

- (void)testAbs80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-8cb414eefbcf6b74046a06193bb4" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8cb414eefbcf6b74046a06193bb4", @"Abs test 80 failed");
}

- (void)testAbs81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-15411717123124" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15411717123124", @"Abs test 81 failed");
}

- (void)testAbs82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-110650734313350477042616331265762714330366445477562206770224150077546772" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"110650734313350477042616331265762714330366445477562206770224150077546772", @"Abs test 82 failed");
}

- (void)testAbs83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-406361670526730665247423055556306674375556671523" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"406361670526730665247423055556306674375556671523", @"Abs test 83 failed");
}

- (void)testAbs84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-76171360512702741041204740474204517716037157712316517167662724620341127032376262" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"76171360512702741041204740474204517716037157712316517167662724620341127032376262", @"Abs test 84 failed");
}

- (void)testAbs85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2102025017365401412766026" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2102025017365401412766026", @"Abs test 85 failed");
}

- (void)testAbs86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-16537646166230454242354623160365301623776104330630304327666317073221312427565220431604541112313523374732445514" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16537646166230454242354623160365301623776104330630304327666317073221312427565220431604541112313523374732445514", @"Abs test 86 failed");
}

- (void)testAbs87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5670211643365064244" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"5670211643365064244", @"Abs test 87 failed");
}

- (void)testAbs88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1761137746624622763366014262036704004254766635" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1761137746624622763366014262036704004254766635", @"Abs test 88 failed");
}

- (void)testAbs89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1011100101010011010111111010101111101001001010110010011101101110011010111011000001011100101101101110100001011011101110100101001011110110110000111010111111110101000110010011100011000010110000100011000000001011111111000011001011100100100011001011011101110101000" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011100101010011010111111010101111101001001010110010011101101110011010111011000001011100101101101110100001011011101110100101001011110110110000111010111111110101000110010011100011000010110000100011000000001011111111000011001011100100100011001011011101110101000", @"Abs test 89 failed");
}

- (void)testAbs90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-27b92f2d901356bfd36bed07c9504ab71488c3ec9ec17ab28134728f6882fd" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"27b92f2d901356bfd36bed07c9504ab71488c3ec9ec17ab28134728f6882fd", @"Abs test 90 failed");
}

- (void)testAbs91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-44446757892576147995830096268563815" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"44446757892576147995830096268563815", @"Abs test 91 failed");
}

- (void)testAbs92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1a01674a8c0f3986ce9561212cf3c31fdfaa2c3b5046dc39d8ba3a82f57648fd9dd34c1f7f70" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1a01674a8c0f3986ce9561212cf3c31fdfaa2c3b5046dc39d8ba3a82f57648fd9dd34c1f7f70", @"Abs test 92 failed");
}

- (void)testAbs93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-10000110101000001000100011100111000011001010000101000011100111010100100000111001010100110001" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000110101000001000100011100111000011001010000101000011100111010100100000111001010100110001", @"Abs test 93 failed");
}

- (void)testAbs94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-eed5566ab8c8d1a57c1b519e" andRadix:16];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"eed5566ab8c8d1a57c1b519e", @"Abs test 94 failed");
}

- (void)testAbs95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-2010551033157653371475176462674400112416524732643107235523210365147262360025326640075727476476416612534" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2010551033157653371475176462674400112416524732643107235523210365147262360025326640075727476476416612534", @"Abs test 95 failed");
}

- (void)testAbs96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-5238967641532378294469" andRadix:10];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5238967641532378294469", @"Abs test 96 failed");
}

- (void)testAbs97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1244616065171772765635056372750113115331571152415417161416451151472547445160621" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1244616065171772765635056372750113115331571152415417161416451151472547445160621", @"Abs test 97 failed");
}

- (void)testAbs98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-1000010010011110010000111011010111001011101001111010011010101110101000111111011110001110000010000000101101011100000011011100100101011010011100111111001000110011001" andRadix:2];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000010010011110010000111011010111001011101001111010011010101110101000111111011110001110000010000000101101011100000011011100100101011010011100111111001000110011001", @"Abs test 98 failed");
}

- (void)testAbs99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"-417633206126264631534724405421777061311" andRadix:8];
    JKBigInteger *result = [int1 abs];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"417633206126264631534724405421777061311", @"Abs test 99 failed");
}

- (void)testXor0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6715346573722654450045534275311712477000035" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"414477007557330045222541375452530157364335561510741271625632142747605025643072677074571600" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"414477007557330045222541375452530157364335561516054137356110716317640511436363165403571635", @"Xor test 0 failed");
}

- (void)testXor1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6000772613426437617641235733015477226756375334335157263530551004351643434153621246" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2566173214216640005643032344527007700247" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6000772613426437617641235733015477226756377652246343075370554647363507113154121001", @"Xor test 1 failed");
}

- (void)testXor2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42205726406400405676037205105554566545173473624215324466742236521763663531172351630" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"674773640571367715470002011302755201561166" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"42205726406400405676037205105554566545173207157455655701057646523772561264373630756", @"Xor test 2 failed");
}

- (void)testXor3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110000111010101010110000010101000011001111100010101010010011111000101110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110101100000110000101100011000011000011001100001001100001110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110000111010101100011100010011000110101100100001101001011111110001001111111", @"Xor test 3 failed");
}

- (void)testXor4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011771275220414744714770133425276407757431740243104007044076317" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"64131715656675443004671551667347715577335256007127305142571161116214165424305540" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"64131715656675453015100724447753051263445365422351702615140621355310162460373657", @"Xor test 4 failed");
}

- (void)testXor5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"686426817040860658466501617306" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2194143333680476932929" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"686426815015233597078741954011", @"Xor test 5 failed");
}

- (void)testXor6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1471407754225556123666704516441107543264612574015777626710247016155432244343" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4551276005346030402301652" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1471407754225556123666704516441107543264612574015773377566242350165030145511", @"Xor test 6 failed");
}

- (void)testXor7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2818737872199471748028342487129947044054015053592195001953059775663789436" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"355656356395216958501511941415154949419605260389371223656845712416337618442266718713099070200319991" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"355656356395216958501511938931599227221653814194887774618196727039513269894932166664583536009337483", @"Xor test 7 failed");
}

- (void)testXor8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4897" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"96643282174324242424231560785494611851849072431094374985171569" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"96643282174324242424231560785494611851849072431094374985175376", @"Xor test 8 failed");
}

- (void)testXor9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11c26236d9b57b8cb1130b735e87d55ad06bfdca4245290f314609" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1aaedcff6d7d03" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"11c26236d9b57b8cb1130b735e87d55ad06bfdca58ebf5f05c3b0a", @"Xor test 9 failed");
}

- (void)testXor10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6424552113" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2236033353343264" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2236035777611377", @"Xor test 10 failed");
}

- (void)testXor11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1857726a4b36679f524aab1113b3971a753a953" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12a401b3a87b2ce098197c48a73ade30a8057171387c5643d6ee1bc507" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"12a401b3a87b2ce09818f93f819e6d56d1f055db896d6d7aa749486c54", @"Xor test 11 failed");
}

- (void)testXor12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6723a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4bb" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"67681", @"Xor test 12 failed");
}

- (void)testXor13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"75f8132cf7f467e40b58cf0b70ba8b931e0522e2cfcba29b605a01f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1b6218247535d4" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"75f8132cf7f467e40b58cf0b70ba8b931e0522e2ce7d831927095cb", @"Xor test 13 failed");
}

- (void)testXor14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42375600542140264767127322326550256133371773001737561117251634" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"222264663011757704232065056041267531677740611126402" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"42375600542362000104136475422762233165330514530140221706377236", @"Xor test 14 failed");
}

- (void)testXor15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6584344169484598387480903662402501500361311526105228624128869570996966469" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"96948606612885962380406024950563110028467562461401020614" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6584344169484598309689099489132544307509740919355816342940829108451208323", @"Xor test 15 failed");
}

- (void)testXor16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100001110001010001011011011110000100001010001010101100110000001001100101000111101100001110001011010111111110110010110011101101111111101000000101011010010010010011001001010000010001110011001001000001111001000100101011000001011011001011100011100100110001000101000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110111011101111110010010111000001100100011101000110111111001000101110100011110001111011100111111001110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100001110001010001011011011110000100001010001010101100110000001001100101000111101100001110001011010111111110110010110011101101111111101000000101011010010010010101110010111111100011100100001000100101100100000010010100001001110101101000010010011111010110111100110", @"Xor test 16 failed");
}

- (void)testXor17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17421401353707474654135412058416649" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1617176781868750463761971728238733097831" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1617191191212190571786164688238280449390", @"Xor test 17 failed");
}

- (void)testXor18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100101101010010100001101100001111110111000111000010010011100000101000110011100010111101011111001000001110110000110110111011110100001010100001010010111101011011011101111011110011111101010110110101111111000000011010100010100010100011001000010110111110111111001010010010100010110111001001001001111011101000010100100111101010110111110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110111110101000100111010101011011100110111000000100111000001000111101011001101000101110101010101010010101101000100111100011101100111100001111010100100111010100001010101101111011011101011111001110111100000011101110100001101011011111110011101000101010000100110101010011101001010101001000111001100100010110010001001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100101101010010100111010010100111010000010010011001110101011000101100001011101010000000000110100000100000011010011100101110011100101101000010111110000001010100001001011100100111110111111011001110100010011111010100011110100001001101101001111101100001001100100010111000100110000010011010100000101110100000101101000011111100100110111", @"Xor test 18 failed");
}

- (void)testXor19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010110110100111000110100011001010111111001111111100000110000111100001101001100000011110011001101000011110000001001011000110101100100110011100001010011100010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111010010100111101100110010000100100000100011000000001010110010100001010011000010100011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010110110100111000110100011001010111111001111111100000110000111100001010011110100100011111111111000111010000101010011000111111010110010010110010010001000001", @"Xor test 19 failed");
}

- (void)testXor20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100000010000001000111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001010011111010101111111110110101101100011011110010100110011110000100110011011000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001010011111010101111111110110101101100011011110010100110001010000110110010011111", @"Xor test 20 failed");
}

- (void)testXor21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100101010000110110100011010110010001110011001011111000001111010111101001010001101000100101011001000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001011110000001111110100101110001111010101000100000110000110001110011110010010110101011000100010000000111011011011000101101010101001101110000000011001100100111010111111011111001110000010010011101111111101100110100001001101100110011100101111101110110101101100100110111110110111110100011100101110011000011011111100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001011110000001111110100101110001111010101000100000110000110001110011110010010110101011000100010000000111011011011000101101010101001101110000000011001100100111010111111011111001110000010010011101111111101100110000101100111100000101000110101011100111011110101111001111111001101001001010110100011011100110000110100", @"Xor test 21 failed");
}

- (void)testXor22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010111001001000101001001010010100011000001111000110101101010100100110110000011100100101010111100001000111010000011111111100110010110001110111100111011110011000100100000111101101101011101111010001010011001101110000011001010010010001100000010000011010100100010110001111011110010101010001110110111110110101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101110001000101101100001011011011100000010101111001100111111100000100111011011100101000101000101101010111001001011100101101011100111000000010011000010011010110100101111010111000011010011111100100100000100011011110011100000011000011011011001010101010010010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010111001001000101001001010010100011000001111000011011100010001001010111011000111000101000010011000100000101100011011000111101110011001011111001010001001010001111000101010110001010011101101001001000000011011010101100011101010001011111111110100111010000111001000010011011101010110001010111100010100100111", @"Xor test 22 failed");
}

- (void)testXor23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7365516716763767632625641215122555060755115205605064642471610536613760122702377473226007660742567475257502" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"23062371507145364133232113110460211206233731252471425325067073543144264730737540124316166505463220027040673004" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"23065014011653407654400736751675333753253064347674220341625402353472477050615242253765340502203562540435424506", @"Xor test 23 failed");
}

- (void)testXor24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"45082b130895ddbac875835ccaddd6738aa467ecc19c9b1fdc4753660ed2094b77f8840e404748dba" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1ec0bef2" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"45082b130895ddbac875835ccaddd6738aa467ecc19c9b1fdc4753660ed2094b77f8840e41ab43348", @"Xor test 24 failed");
}

- (void)testXor25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"600789458863132111003913315876565752438" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"13540546727469126839202736725358053548966039506273133352737906542" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"13540546727469126839202736982273931904275037213407984898878211352", @"Xor test 25 failed");
}

- (void)testXor26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"517977361457837018340385229" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"142965079022009218942125135915198566066743991793617544763175647782132487565018121078446576" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"142965079022009218942125135915198566066743991793617544763175647970368505842073238879991869", @"Xor test 26 failed");
}

- (void)testXor27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010011110111010100001001100111100010110010100010100000110011010001010101101110000000111100111111000110010100001100100011011000001010110110001111111111011010101100011111100010111111100000011110001000101111110011100001100101111111011011001000000011100100010001010010101111110110000000010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010111000000000110010111100001110111111100001000011000000001010010111101101100011110110010010000000101010011000011111" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010011110111010100001001100111100010110010100010100000110011010001010101101110000000111100111111000110010100001100100011011000001010110110001111111111011010101100011110110000000111100000101100110100100001001100000000100110111111010001011111101110000111100111000000101111011100011000001011", @"Xor test 27 failed");
}

- (void)testXor28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"97668061923194594662721850530682277" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"343305103555633828698338410011855454949409332127601212289572570974" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"343305103555633828698338410011757955485267462294508086840130786043", @"Xor test 28 failed");
}

- (void)testXor29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"361373663372056776522627574537142554521351353345424145422313315623471471546625340317267" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"146212103077561" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"361373663372056776522627574537142554521351353345424145422313315623471471400437243360706", @"Xor test 29 failed");
}

- (void)testXor30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"72dff15e875698569dd6d5140678457da7c7d08bf619181ad42e9b2ac6c569fb3" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1acd8a812d0e0ece684c371695ad8bf" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"72dff15e875698569dd6d5140678457da7dd1d01773416141a46d71dd050c470c", @"Xor test 30 failed");
}

- (void)testXor31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"581a066bfe199e7586e854e1d757301bb3182542871b6bdaa1a2c2ffd45c2fb0242f7069e9e0c25" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"44081983f70a3219e6d7e6f3131b462ee3bd386b3051cee525a504d" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"581a066bfe199e7586e854e1935f29984412175b61cc8d29b2b984d137e117db147ebe8ccc45c68", @"Xor test 31 failed");
}

- (void)testXor32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"730118850419316179896656896" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"581158689059929308" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"730118850991185821028325596", @"Xor test 32 failed");
}

- (void)testXor33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1b8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5ea8585fc4e207e74c9f3ff2ce301ef6471663fb2d5bea8a3c7082a44425" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5ea8585fc4e207e74c9f3ff2ce301ef6471663fb2d5bea8a3c7082a4459d", @"Xor test 33 failed");
}

- (void)testXor34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17663651215252355104676655" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3160515760212076151423355115420004632123635547046552657311021252615007356607174645472105345104314062" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3160515760212076151423355115420004632123635547046552657311021252615007356610717014667357010000562637", @"Xor test 34 failed");
}

- (void)testXor35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"105f6ac1c5538e1a90a9dd1d76b2da4d9ccc246476a6a1c0e79aa7ec4962edf7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1414ceca163674f21e5076d327e34e396b64e0d65e33" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"105f6ac1c5538e1a90a9c909b878cc7be83e3a3400758623a9a3cc88a9b4b3c4", @"Xor test 35 failed");
}

- (void)testXor36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"248244611318450056833139897104610631944168066683871216022637447646636395484970971348178" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8465344371856628880177330731868949499891204507588725612181208037771681283" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"248244611318457638265138627627109174001413490402462561113775137649333720620037852832465", @"Xor test 36 failed");
}

- (void)testXor37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"65f3b1d91c8207cf7661dbdff529f6545a572b836bf1881aecf6729c03043e918c6140ef8de" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"764" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"65f3b1d91c8207cf7661dbdff529f6545a572b836bf1881aecf6729c03043e918c6140effba", @"Xor test 37 failed");
}

- (void)testXor38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1323004275641740113447453334152774565512404232651634301273567116202001717730605065426616075761432" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"27700305411061321604264667225204502263266637430272110410072003327645621034722017435410661254220" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1304704170250721232243637553377570067771662405261446211663515115125644136704127072013206614535612", @"Xor test 38 failed");
}

- (void)testXor39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010011100001001110000001111011000001001010110011010101011101000001111001010010101100000001010101110010110110100100110100101011001011111001011010100100101110000101010011011000110010101110001100010000010111010101010001010011001010100100101000000100111011001011110111000111110100001110010000101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111011111100001100010000001111101010100000101001000111000110100100010101100100111101111111010101101100101111010011101011110111100011111110101001001001100010101101101011001011010111010010100000001011110101100100001001111101000101101100111101001100111110001011011110110010010111010100110011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110011100111110101111100011111010111100011110110110011101100101110101011011111110001011101110101111011111010011011110101001110101110111100110101111101101100010010000111110000001101000010100011000010001001001111001110000011100100010001001001111101101011100111010101100110001100110110100110110110", @"Xor test 39 failed");
}

- (void)testXor40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"735b20e17b38db39f86a333e40dfee32439c1598e7d61f7479dbdd8fe0a01e7f309f5" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9d122ff" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"735b20e17b38db39f86a333e40dfee32439c1598e7d61f7479dbdd8fe0a01ee222b0a", @"Xor test 40 failed");
}

- (void)testXor41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"98527520528933719145377043298067798094495018282338856866308941513" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"897435444314" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"98527520528933719145377043298067798094495018282338857623610311315", @"Xor test 41 failed");
}

- (void)testXor42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"70772404771401170012456524347071532035621176" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"342234055427022444705057255676737363665066534477015014413421444742056405" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"342234055427022444705057255606045767114467444465443530754450176777677573", @"Xor test 42 failed");
}

- (void)testXor43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110000110001100001000001011001001100011110100111001101101100011000111100001010111010011000110101111101100011101000101000010110001110110100100001001000000011011100111111001111101000111111010001101001010010010100011010101100110010001111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100111001111011111000110000000011101000101011001100111010001101110000111000111110010101111000001110111111111011111101010110000010011000111111010101000111110000111000110010110111110011001100110001010100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110000110001100001000001011001000000100111011100110101011100011011010100100001110110100010111000001101011011010110111101101110000000001011011010110101010101011110100111110000111101111000100001010001100000100011101001100000000011011011", @"Xor test 43 failed");
}

- (void)testXor44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111110011010000110101000011100000111010101100010111110001001110110001110101101010100011111000011011100100111001110100111110010101000101011110001001000001111000010101000111001110001100100101100000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000010001111001010111001101010100010001001111000001001011011110101001010111000111100010000000111011000101110100001111001010011111110101011011000011100111011010110011110101100001000111101011101110010010110001011110111101000111001111100101011001101000000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000010001111001010111001101010100010001001111000001001011100000110011010001101111111110000111101110100111001010000110111100010001011000001111011100100100000110010100111011000110110101000011000101100011111001010001111111101111110110010100111101000100000", @"Xor test 44 failed");
}

- (void)testXor45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"b49c2dd4d65a99e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5bbbd6ea493ac638e93575a9646802" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5bbbd6ea493ac633a0f7a8e401c19c", @"Xor test 45 failed");
}

- (void)testXor46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"d6897ae498bcb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"446207f82514c" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"92eb7d1cbda87", @"Xor test 46 failed");
}

- (void)testXor47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011101010010011000000010000001000011000001011010001010001011101100100000111110101111101000111101001100011111100001011001000100001110101010110010010111001010101011110011110001011101011001111001010000101100100010111100011001110001101011000010110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101100011100001111101100010001110100000010100010010110010011110010001000010100010110111000011011100011100001010010000000110001011101111000101000111101001110110110000000111111101110010010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011101010010011000000010000001000011000001011010001010001000000000111100110001000011111001001001001110111101110111001010110110000110111110100100101111010001001000010010100011011101101000100100101000000100011111110010101111110001010100101100100010", @"Xor test 47 failed");
}

- (void)testXor48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d9cf45c22bdc3ec490b47935af9db29c09919cc816a3616d46784ea2" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"82e0ba33791cd5b878" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2d9cf45c22bdc3ec490b47935af9db29c09919c4af61952145aadf6da", @"Xor test 48 failed");
}

- (void)testXor49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6869928297168294309" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5615562311206626887516004823949204940447873254820320702724512677516" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5615562311206626887516004823949204940447873254824990263593802739497", @"Xor test 49 failed");
}

- (void)testXor50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63634600343541355135764717731137351455533520566145103462712017507517324335767704573540271007172113" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"43136710031620622111540714464770252613060510531617007215527365047" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"63634600343541355135764717731137312563223511346767012122006473277745537355277235364547064520217154", @"Xor test 50 failed");
}

- (void)testXor51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10110111101001010011001101110001010110101111110010011001011010011101000100101110110000100001100001000010101100100100001110111011001001100101101010000010111010010011100110111111111011100111001001100011111010011101010001010001000001001100110010110010000011110100000001011000001000111001000111001011000010100110001010100011110111001100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100100001000111100101001111111" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110111101001010011001101110001010110101111110010011001011010011101000100101110110000100001100001000010101100100100001110111011001001100101101010000010111010010011100110111111111011100111001001100011111010011101010001010001000001001100110010110010000011110100000001011000001000111001000111001011000010000010000010011111011110110011", @"Xor test 51 failed");
}

- (void)testXor52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"395568649189163859214823" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"328945547633792150619133929550212188425441184169946544121761158367017458174675829298931" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"328945547633792150619133929550212188425441184169946544121761158727075872820369651537684", @"Xor test 52 failed");
}

- (void)testXor53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47130db893b996ed37ec63" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a49362422e7ca16bd9a9f639d293857b136cf0ddf27c87dd5cd417c20552f038d524ebef582223e" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a49362422e7ca16bd9a9f639d293857b136cf0ddf27c87dd5cd417c20123c0e35c1f72818b5ce5d", @"Xor test 53 failed");
}

- (void)testXor54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2407124336233062441502066164644256371706104421501705563043271214415575201753264367" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"70300265307570636135356420505306460414027562704353165743225767204344600574000510663616404464564105464723734" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"70300265307570636135356422102222756627045123206335001107073416502240221075705073620467610071011304337547453", @"Xor test 54 failed");
}

- (void)testXor55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10754877543545738342792974079467111750486816842876998183182758515770790248388552181373305159206" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"43" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"10754877543545738342792974079467111750486816842876998183182758515770790248388552181373305159181", @"Xor test 55 failed");
}

- (void)testXor56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9ea859520d4d6887eccb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"757147c978f98d5ec21fe61581e62d4f318ea7301dca575a18aeb8f39e" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"757147c978f98d5ec21fe61581e62d4f318ea7aeb593055755c63f1f55", @"Xor test 56 failed");
}

- (void)testXor57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"547fefbb0a94ed71b0113abe4b4e4b7e0a59d030d6d2fd21c35a48a2ca4cb02cce" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"69d97c6ad131e8964936f52967cc2ed87b9b70b3964dfab0" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"547fefbb0a94ed71b078e3c2219f7a969c10e6c5ffb5310f1b21d3d279dafdd67e", @"Xor test 57 failed");
}

- (void)testXor58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"131084350461650095098924121860138376168723771155452177893887035750341482353891998458295382" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7575096507106458804357338227707" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"131084350461650095098924121860138376168723771155452177893891991132024690719745980899415981", @"Xor test 58 failed");
}

- (void)testXor59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"306" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"233344115323642573326400455724707766241005612525031430542130635650730757060643616062676723747772634" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"233344115323642573326400455724707766241005612525031430542130635650730757060643616062676723747772532", @"Xor test 59 failed");
}

- (void)testXor60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"969d502baee7b11a40a7d62c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"eeab517c0c8add009fee896c6676459827a72150d1b53687d412f" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"eeab517c0c8add009fee896c66764cf1f2a59bbeaaa4928da9703", @"Xor test 60 failed");
}

- (void)testXor61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"121034055442221672651" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"171344244746554" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"121034124706065134305", @"Xor test 61 failed");
}

- (void)testXor62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1441110774063601" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"30404133007756046623571114775426023253053754467227407172373753413117141403207356266" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"30404133007756046623571114775426023253053754467227407172373753413116500513573335467", @"Xor test 62 failed");
}

- (void)testXor63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000011011111111110111101011010111010010101010111010101100101001110001101001101100001010001101000101001101010011001000000110101001000010100010011101001111011011110011110100000101000100100101011110101011110010011110000100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111100011001101111000000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000011011111111110111101011010111010010101010111010101100101001110001101001101100001010001101000101001101010011001000000110101001000010100010011101001111011011110011110100000101000100100101011111010111101011110001000100", @"Xor test 63 failed");
}

- (void)testXor64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11001110000110100101110000110000101010000111111011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110000000110101110101110011011000100011001000101111010011011000101010110001011100000100011110101011111101101101100100001111110011100110111111001011111100100000000100101010011011111111100111101100011110101001001111011111111100111101001001110101111101001000100110010110110000110100100100111011001000010001000100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000000110101110101110011011000100011001000101111010011011000101010110001011100000100011110101011111101101101100100001111110011100110111111001011111100100000000100101010011011111111100111101100011110101001001111011111111100111101001001110101111101001000100101011000110110010001010100001011100010010110111111", @"Xor test 64 failed");
}

- (void)testXor65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101565121776400252723431252540325652515402641312760100060046712606223645410637250627340200026452" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"116364715615324653175165060716622415657675063564633014506246655535" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"101565121776400252723431252540233536200217565541615065000750130213474030473353463633646046673167", @"Xor test 65 failed");
}

- (void)testXor66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"152625565744426016307362145145601014012502777632367266356301500235640267550337437444065631330520343025" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"413437152541661561004726014125010700235702632006550707656135757256436404307772535027457573" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"152625565744035421255623724424605732006427767132152564564307050532016352207161001040362143605507714556", @"Xor test 66 failed");
}

- (void)testXor67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3886343808235120618125867027946674494227778246691060414613864638302300406350024181" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7339670986386022257606334813044850838" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3886343808235120618125867027946674494227778242051407196742937480325580382091791715", @"Xor test 67 failed");
}

- (void)testXor68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"44dc6437f755b0d7241b69944c5e4717" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"d3b21e1a9a74c41331d353a7d2bbea608c2a9181a9ed4ced5" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"d3b21e1a9a74c413359e95e4adceb16dfe6b2718ed28a89c2", @"Xor test 68 failed");
}

- (void)testXor69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101111011011001101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110000001111001101100111101101011001011001101011110111110011110010111010111111100000000100000100111011101101000100101000101100111000010010000001110110110000101110001101010100101111100001100001001111010001110111111010110000101111011110001011000101010001110011110100000110001100000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000001111001101100111101101011001011001101011110111110011110010111010111111100000000100000100111011101101000100101000101100111000010010000001110110110000101110001101010100101111100001100001001111010001110111111010110000101111011110001011000101010001110011100001111101010101101", @"Xor test 69 failed");
}

- (void)testXor70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"19fe227" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21ee" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"19fc3c9", @"Xor test 70 failed");
}

- (void)testXor71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1640159172" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"501403220698093986" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"501403222312783462", @"Xor test 71 failed");
}

- (void)testXor72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33266e9ce62e8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"44dda2e01bb8f2a23d49baed53c0e518c9876" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"44dda2e01bb8f2a23d49baed60e68b842fa9e", @"Xor test 72 failed");
}

- (void)testXor73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9cc93109bf99cbd17a162db7ce2067a02d6064b846fc573f66795ffde25114623c8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1b9070bd862cf1fed11380fa6eccb971" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"9cc93109bf99cbd17a162db7ce2067a02d61ddbf4d2435f079944ec5edf7f8a9ab9", @"Xor test 73 failed");
}

- (void)testXor74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"89d4b13b7617c22098e23b5dfa6a4b6420aaddb9" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2b45c2df04162bfe2d2ed664048a" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"89d4b13b7617e9655a3d3f4bd194664af6ced933", @"Xor test 74 failed");
}

- (void)testXor75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3669429780295718676727050322871236906554543721064732377877351006963085817301" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"804796384572811594" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3669429780295718676727050322871236906554543721064732377876564801157098380447", @"Xor test 75 failed");
}

- (void)testXor76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"77ac0ebc5917bc8114b1f74b58b00dce8c99365c54253add886cd2e07a1cb494c6080e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8cbb0e689fbc6bc2d699f1f6afabd4461651171c21a9b" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"77ac0ebc5917bc8114b1f74b507bbd280562f0e0794ca5c2e2966fa41b79a5e5041295", @"Xor test 76 failed");
}

- (void)testXor77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22240705617704152415013442222413246623412065711747356047755730633662" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"453056750731222627555005576647774142121" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"22240705617704152415013442222040210173323247136212353531112044771743", @"Xor test 77 failed");
}

- (void)testXor78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"352961754572947477812454917" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2829201993432704777695429240560090154887507348860360120323639957" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2829201993432704777695429240560090155235911907626149034735053968", @"Xor test 78 failed");
}

- (void)testXor79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"304754673377544474501551170563205453556426740404616371532777215572452526241036756272117334362" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3636564762714315717644713755" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"304754673377544474501551170563205453556426740404616371532777215571264042523722443565753427437", @"Xor test 79 failed");
}

- (void)testXor80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"950297175605337875858705556" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26948877066684609516424867539122760212677927459844378075361667744277098343380198507800404728146613" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"26948877066684609516424867539122760212677927459844378075361667744277097431771012619496582765028897", @"Xor test 80 failed");
}

- (void)testXor81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"67995515863067215074432021091092892535774" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20931533280964444724781273638565971561471743447134856189138834916066" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"20931533280964444724781273703839186868238670473240486171921636739388", @"Xor test 81 failed");
}

- (void)testXor82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101100001001010011011101011101101111001100010111111111111010110001001011111110001010000000101110100111011001010111001000010111110001000100010111110000010001000101110100111000100110010101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101100001001010011011101011101101111001100010111111111111010110001001011111110001010000000101110100111011001010111001000010111110001000100010111110000010001000101110100111000101101001011", @"Xor test 82 failed");
}

- (void)testXor83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110110000011000011011110110000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10100011010111111100101111010000000100010010101100111111110000010010011101111101100010101001010011000111110101110001111010010011001000001101001000110001101000011011111000010101111100000000010001010010110110110101011110010001011000010011100111100001000011100101011011101101111000011101111010011001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100011010111111100101111010000000100010010101100111111110000010010011101111101100010101001010011000111110101110001111010010011001000001101001000110001101000011011111000010101111100000000010001010010110110110101011110010001011000010011100111100001000011100101011011011011111011011110100100101001", @"Xor test 83 failed");
}

- (void)testXor84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"60492" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"474957961" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"474981573", @"Xor test 84 failed");
}

- (void)testXor85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"706576977052274834031802890736431777105694801889822510969586022163661" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"339762918165100474302034346572316" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"706576977052274834031802890736431776776112741938255618147487719743185", @"Xor test 85 failed");
}

- (void)testXor86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010111011101011100000110001111010001101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101100010110011111001000101110111000010101110011011101001010101011000100101000111011000011011100001001101100001011101000110011111100111100111001010011100111101111101011001101010110001010000010001011101101110111" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10101100010110011111001000101110111000010101110011011101001010101011000100101000111011000011011100001001101100001011101000110011111100111100111001010011100111101111101010011010001011010110000100000100111100011010", @"Xor test 86 failed");
}

- (void)testXor87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"46763" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"15653027004325600366601367054205640352330207513" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15653027004325600366601367054205640352330241270", @"Xor test 87 failed");
}

- (void)testXor88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"24570365854010024774482036949977256843532772614195669495415049823346892888677611786669660228" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6041787055004588529074089" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"24570365854010024774482036949977256843532772614195669495415049823343055323617401797465253869", @"Xor test 88 failed");
}

- (void)testXor89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100001100001100000111010011011101101110111101110110000110000000101100000101100101011001001011011110110001001101000011101111010110100101001010001010100010000011001010110110101001001110111101101111111100010101100111000010001100100010011010011011011101010100011001011110100011000110011111100000011101100111001100011010100010101101010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000110100101100111010110101110010011000100001110010010110000111000100100111110110101000110100011010100010101001001010011011100111111111011010110100011010011000100110011001010110010110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100001100001100000111010011011101101110111101110110000110000000101100000101100101011001001011011110110001001101000011101111010110100101001010001000100100100110101101100000000111011101111001100001101110100101011111100110110010010111011100111000001001000001010000001101111111111001100100110110111110110100001000101001101000011111100", @"Xor test 89 failed");
}

- (void)testXor90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"88fd2e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7f761ae982e3b55fe8" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7f761ae982e33da2c6", @"Xor test 90 failed");
}

- (void)testXor91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7429e01d7f2884224f353ed1ceec5230552fd6dc31e0d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"21be505956af8c0687108552ea29a3208a47097f1675be98526c570d151c9f0c0eb5872589c53" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"21be505956af8c0687108552ea29a320fe6ee962695d3aba1d5969dcdbf0cd3c5b9a51f9b825e", @"Xor test 91 failed");
}

- (void)testXor92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5514" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"376070756740125237" andRadix:8];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"376070756740120723", @"Xor test 92 failed");
}

- (void)testXor93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"81846337275196213557556075545191192406302705415493414468260951163497271582967872402265460817561900" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"79595806476443187527263219607922387638185290208211712667465232665566529628" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"81846337275196213557556126806496330436450164474909332420199025755526000924677503482466645455978864", @"Xor test 93 failed");
}

- (void)testXor94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001100111010001101110111000111000100110111010110100001010111100110110100000010110011010010010001000110010011001000100011111101001111010000010010100101000111011001001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110101000010110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001100111010001101110111000111000100110111010110100001010111100110110100000010110011010010010001000110010011001000100011111101001111010000010010100101110010011011111", @"Xor test 94 failed");
}

- (void)testXor95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5aa24c51545b864f47573b84de0a2ded8dc35ac1f242f20d1bfe0d3700c2d7c154325edad73b1" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1c695bc7cf263028eef7e7b8ccf" andRadix:16];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5aa24c51545b864f47573b84de0a2ded8dc35ac1f242f20d1be2646cc70df1f17cdca93d6ff7e", @"Xor test 95 failed");
}

- (void)testXor96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101001010001010001110010100101110001001000001011011110100101000101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10111110000000110101011011110100100110000001001110011001101101101011100011100010001001100101110001100110000101010101000110110101000101000100111001101000010010101011001001001111100110110001000101101111000101110001111010111001010110111110101100001111111101111010110000001001000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10111110000000110101011011110100100110000001001110011001101101101011100011100010001001100101110001100110000101010101000110110101000101000100111001101000010010101011001001001111100110110001000101101111000101110100110000110011011000101010000010000110111100100001000100100001101", @"Xor test 96 failed");
}

- (void)testXor97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101011010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110111110101111010011000010000100011101010000010110010001010110010100000110010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110111110101111010011000010000100011101010000010110010001010110011001011100011", @"Xor test 97 failed");
}

- (void)testXor98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"696989697482395647100801325508728218129648722160913121169341315258182683335129882427308120423" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"696989697482395647100801325508728218129648722160913121169341315258182683335129882427308120422", @"Xor test 98 failed");
}

- (void)testXor99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"38451865300944736593830808724438536125500482937346611532397844428733852" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"56" andRadix:10];
    JKBigInteger *result = [int1 bitwiseXor:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"38451865300944736593830808724438536125500482937346611532397844428733860", @"Xor test 99 failed");
}

- (void)testOr0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111110101100011011010011101010111110001001001101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011101100011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000111110101100011011010011101010111111011101101111", @"Or test 0 failed");
}

- (void)testOr1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"557d43f51a9dfc361d15d9670daa" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"ea494e91d22bb7c5d46412a2239e4" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"ef5fdebfd3abffc7f5f55fb673dee", @"Or test 1 failed");
}

- (void)testOr2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63946be5161b0fda9f26efca01a555c65239dbb9d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"73ead5157bcf900e4c7529c1ee57f6b5c6436a62080495fd894372f287c7c3d99975f31dde" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"73ead5157bcf900e4c7529c1ee57f6b5c67b6efe5965b5fda9f37efea7dfd7ddfd77ffbfdf", @"Or test 2 failed");
}

- (void)testOr3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100010110110111111001100100111011101000000010000010100100111101011011100000101000000110011101101101011101111100111110011000110010000111111010011011100011111000001010110000111001101000110011111010111100010001111101000001001000111001000000000001011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11000100111110010011101101010110000100110001010101000100011000000111000111101100110100110010111111001100000011111100011111101010101000101010011011100011010000011001101010001111011110000101011000101001010011100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100010110110111111001100100111011101011000110111110110111111101011111100100111001010111011101111101011111111111111110111100110010111111111110011011111111111111101010111000111011111011110011111010111101111011111111011111001101111001101001010011111", @"Or test 3 failed");
}

- (void)testOr4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101111101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10001101010011001100110000101110000000011010110010101011011100001100110111010001100001000001010001110001111110100111100010000110011101010101001010001000101001001110111101100011001101110011111010000111110011101010000000101001011010001110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001101010011001100110000101110000000011010110010101011011100001100110111010001100001000001010001110001111110100111100010000110011101010101001010001000101001001110111101100011001101110011111010000111110011101010000000101001011111111111", @"Or test 4 failed");
}

- (void)testOr5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4576046261576027571124254242145021620211272765207544330074104530032473304" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"37527001654224213634120544335661461545614777267425513266477125113471073233106171401330046726733" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"37527001654224213634124576377661577567775777277667557267677335373775277777336175505730076777737", @"Or test 5 failed");
}

- (void)testOr6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16442570104522405360026477446214152370340001617342574134413151341155626" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"174352402047141750534332234511773213272522241313" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16442570104522405360026577756616157371750535737376575777613373763355737", @"Or test 6 failed");
}

- (void)testOr7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15fd653b26cf1ea1a99a39fb44d543966e1565c158dec15930290" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"92ec54c81828a57fa11f7c5a31f672d0c8d3bdfb3a9587e993603a066fa974" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"92ec54c8197ff77fb37ffdfa3bfff3dffcdffdfb7ef5d7fd97edfe17ffabf4", @"Or test 7 failed");
}

- (void)testOr8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"65634cc946ef5841549c020fa92f64" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5dfa79fc90760ce1c50970b2ac6d23bd004df92040f72c8bebec" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5dfa79fc90760ce1c50970f7ef6debffef5df974dcf72fabefec", @"Or test 8 failed");
}

- (void)testOr9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3733057131336761104010101525" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1306542256155732207410412310213255653410350071664605312247646042436731635503" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1306542256155732207410412310213255653410350071667737357377776763536731735527", @"Or test 9 failed");
}

- (void)testOr10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001010110100110110100010101110100111111101100100111011011010001010111100111110111001011101011111001111111000000110010011000110111001001011010101011000110000101100111000111111111010100000000010110101100110011011110101111010100000011010000011101101101011110100010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11010001111001101111111101110010111000100001111010011001001100111010100111101010110011100100011100110101101101001001011000001110110101101101101110101101010111100010000001111111101111110101000100101001101111111101011001011001111111000111011001100011010100000010000110101100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11010001111001111111111111110110111101110101111111111101101111111011110111111111110111110111011111111111111101111111011000111110111101111111101111111111111111100110000101111111101111111111010100101001111111111101111011011111111111010111011011110011011101101111011110101110", @"Or test 10 failed");
}

- (void)testOr11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"346050404771446411660501041657373267116612011246322646313342614201412377365747" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"163622741573463366424474223017436400216150304473624210012235124004" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"346050404771567633761573463777777677337617437646336756317773634211412377365747", @"Or test 11 failed");
}

- (void)testOr12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10b062519c186f9aabdd8842f236f06e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3c4" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"10b062519c186f9aabdd8842f236f3ee", @"Or test 12 failed");
}

- (void)testOr13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1456026151374250322666602572154013466627145117323036241605276077767136613" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"405103543751133271055364755703242336604655061303212427715171125175016326116361025142451001734" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"405103543751133271055776777753376376726677663773356437777777165177337336357765277177777137737", @"Or test 13 failed");
}

- (void)testOr14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"131940838102801156187793002031100047752016" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3530162373368117109562539446929207266532992268231717" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3530162373456144236993592343112563705414735923904373", @"Or test 14 failed");
}

- (void)testOr15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"65564174784660314703721" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7368370630317816" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"65564177640350663235577", @"Or test 15 failed");
}

- (void)testOr16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"427342244305519194548130712371885640342651604970963035784755210998238799497421522992208338" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"175769464309309523117956155026" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"427342244305519194548130712371885640342651604970963035784755227149598891889082720974921682", @"Or test 16 failed");
}

- (void)testOr17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1744021161051531467355604676" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"515022562740600043213013255310136016117736574417137014142231260751" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"515022562740600043213013255310136016117776575577177535567375664777", @"Or test 17 failed");
}

- (void)testOr18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29ae656a01091" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"cae13dfd29104cf800bba0ad9435af075bed648df3eced92837020c3020f8ab8e575" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"cae13dfd29104cf800bba0ad9435af075bed648df3eced92837020c39aefdeb8f5f5", @"Or test 18 failed");
}

- (void)testOr19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"82275651887086718313335945722269762888086349726836749616072902694748075837605326566752575606105787" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20029538203228869412936262103342105" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"82275651887086718313335945722269762888086349726836749616072902701472353321413188251414302516461243", @"Or test 19 failed");
}

- (void)testOr20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5937146461159867497372" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4111619870128951920703037674151717480884186385237323856695147273530116578792542" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4111619870128951920703037674151717480884186385237323856695158241044254454448094", @"Or test 20 failed");
}

- (void)testOr21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"838" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"867772240502435055850987202420" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"867772240502435055850987202422", @"Or test 21 failed");
}

- (void)testOr22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"62311192242202582727" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"82216935902744258275653098195754638380855250583221754731692408827240890283" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"82216935902744258275653098195754638380855250583221754791648006052333469679", @"Or test 22 failed");
}

- (void)testOr23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d5" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2908529d26c802fd" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2908529d26c802fd", @"Or test 23 failed");
}

- (void)testOr24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"bbeeaf2b61ec96255e332211c4b562e16242e6a2bbedae64434452" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3f04a6d6108ea8cd071bffb6dced5cc2" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"bbeeaf2b61ec96255e33223fc4b7f6f1eeeaefa7bbffbefcef5cd2", @"Or test 24 failed");
}

- (void)testOr25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"24602752620533507013031110667323563432231631504461351125516435404456" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6533045317173133337325004200107521177647463075071417422533550106672121774611" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"6533045337773773737737507213137531777767563477271637526573751127776535774657", @"Or test 25 failed");
}

- (void)testOr26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101100100110100000010010111010011010111000111001101000100011001001001111001110100111000100100010000001111110010100100101111001100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000101100001100010101010101010110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101100100110100000010010111010011010111000111001101000100011001001001111001110100111000100100011000101111111110110101111111011110", @"Or test 26 failed");
}

- (void)testOr27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"76275323431471425632755271" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"65732720406" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"76275323431471465732775677", @"Or test 27 failed");
}

- (void)testOr28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"151125042764424015037607012764646530575130027327227163542765106501460" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1212001375021121730305721356354241143402315776364266407736017251171531121762371341125727676737754402524345730" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1212001375021121730305721356354241143402355777366766427737037657173775767772775371127727677777756767526745770", @"Or test 28 failed");
}

- (void)testOr29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23041226424566530123274152624" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4035022520225216427441333405102751322775357546423220066245" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"4035022520225216427441333405123751326775777576523274176665", @"Or test 29 failed");
}

- (void)testOr30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30317672398003506227609808176317470" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"95013667078903224202215654005800627641465000329755319171129432707787348572343670522508498482279" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"95013667078903224202215654005800627641465000329755319171129462655087187716206709506793369154687", @"Or test 30 failed");
}

- (void)testOr31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"544abd736afbdf56ac6ca32d3ab21f65c6a468374651bc33d5d4bdde8d81813489" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"95271584986ed9cc1d201dcbfea123b557a4310" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"544abd736afbdf56ac6ca32d3abb5f75deedeeffded1fe33ddffffdebfd5fb7799", @"Or test 31 failed");
}

- (void)testOr32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3766926700114990657414379613474275" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7252382023451929354356" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3766926700122242966094358656216567", @"Or test 32 failed");
}

- (void)testOr33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1b3db0e214459386d61140697f772da0379cd336eaed68feb0d7b4f84b81250b3ef96d12" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1606b798733c7a63e5efc07ab024bc36edb2797677700e5ed612cb0a2ab24d29bc6f97ab1cca4" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1606b7bbfb3e7b67fdffed7bb426bff7fffa7b7fff736efed69feb0f7bffcdb9be7fb7ef9edb6", @"Or test 33 failed");
}

- (void)testOr34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4807473508147713724906924275774404233182" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"82970833496973754425907051718" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4807473508148953200895944308639113117662", @"Or test 34 failed");
}

- (void)testOr35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26ddd8eeef3a88f35de4d9490a37220732c14bd035060008ea8988681721ee90e00" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2980f87d59cbce8fb118549dc2f6dd87abadd87e72367c0afbbdf3b1a0086e01b896b745c6b429a" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2980f87d59cbeedff9feffbfcaf7dde7fbedda7f72377ecbfbfdf7b7a008ee89b8feb765eeb4e9a", @"Or test 35 failed");
}

- (void)testOr36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100000110101011001001011011110100000111111010101110000000100100000011110101100001010001100111101110000000111111100101010000010000110100111110100001011010111010001011110111111111010100010101010011100100010100101001100010000101011010011111000111110100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100000110101011001001011011110100000111111010101110000000100100000011110101100001010001100111101110000000111111100101010000010000110100111110100001011010111010001011110111111111010100010101010011100100010100101001100010000101011010011111000111111100", @"Or test 36 failed");
}

- (void)testOr37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"629806974097324956440945468230184699724638483881341445811619923762797556910588961374655872" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"629806974097324956440945468230184699724638483881341445811619923762797556910588961374655878", @"Or test 37 failed");
}

- (void)testOr38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110001010111110010111110110101111001001011100011100111000101011011110000010011011110001111000111100010011011010101011011111000110010010101101010100110000110111010001101001000010010000011000011011000000111001001111111101010100101000010111101101100111101100000111101111011011000100011101110000000001000111000110100001000110110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1011110101101100001001000011011001011110111100010011011101010011011101011100001100111100101010110110011111101100011000001000111001000011011000011101101110001100010111000111" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110001010111110010111110110101111001001011100011100111000101011011110000010011011110001111000111100010011011010101011011111000110010010101101010100110001111111111101101001001010011011011011111111100010111011101111111111111111101001110111101101110111111111111111101111011011000111011101111011000011101111110111100011111110111", @"Or test 38 failed");
}

- (void)testOr39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"85524581963070293592578896989012321" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3754135792912383462271075926242433871609606061522346716031614521461444415" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3754135792912383462271075926242433871693656651646753098888043490510655359", @"Or test 39 failed");
}

- (void)testOr40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011001101110110001011011110011000010001101110100111001000000001011110001011111010101100010101000111010011111111101100011000000011001110111010111110101110110101111111011110111111100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010001000010101010010110111010111110001110011011000001110000011001100010111101101100010000011011101100011101011100011011111010001111111001001100110101101010010111010010111001100001100000111011110110100000101010101110010111011010111001010010011010000010001010000001100011101011001100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010001000010101010010110111010111110001110011011000001110000011001100010111101101100010000011011111111011101111110011011111110011111111001101110110111101010010111011110111011111011101100111111110111110011111111101110011111011011111111111010111110101110111111111111111111111111101111", @"Or test 40 failed");
}

- (void)testOr41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"177024271656333702111473501" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"50777751320520" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"177024271656373777751773521", @"Or test 41 failed");
}

- (void)testOr42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12536465456606163644443071001431561205450107540" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3735776362161553623454031155545426315021325014463054573171507" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3735776362161553737475477757567666757071325435563255573177547", @"Or test 42 failed");
}

- (void)testOr43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"712396872087654948703059861382449520838757485041055601406531999255582058851667367642" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"954007" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"712396872087654948703059861382449520838757485041055601406531999255582058851667533535", @"Or test 43 failed");
}

- (void)testOr44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9323119" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"990856612891935811000785681956736822307528902247522755232961930483668080769367428672275" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"990856612891935811000785681956736822307528902247522755232961930483668080769367437994879", @"Or test 44 failed");
}

- (void)testOr45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"778561337a645777b97fdbcb70bdcc2e08d06fea36c84d94793a171645fe" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"44fd821626789cbf8d2d171ac38b624eb6af075dd8847b0110" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"778561337a64fff7bf7ffbdfffbded3f1ad3efea7efeef977dfa977f45fe", @"Or test 45 failed");
}

- (void)testOr46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8319527574706752385547997756432089615693674666115789473442396482228859336100810461841201639457911650" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2389665" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"8319527574706752385547997756432089615693674666115789473442396482228859336100810461841201639458174947", @"Or test 46 failed");
}

- (void)testOr47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"96edce7d7353b1af07b9d59c3236dc147e974f32" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"e175b14d1fb9491d19ad49c1864b0b67ea6560ed5f5f74682c63087a8630bed9c3dd5787d0da97d80" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e175b14d1fb9491d19ad49c1864b0b67ea6560ed5f7ffcefff773b7af67bbfd9c3ff7fc7d7fbf7fb2", @"Or test 47 failed");
}

- (void)testOr48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101011100010111100001010101011111111111101000100110111001011100011100100000010111000100110110001110001010000110101111001111111110010011010110101100001000000000001110101111011100111001010010000011101111011010001110011111001011001100110001001100011100111110010001010010101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111110110010101111000110111110110011100100110110011111110000011011001011101001011100001010110111101010110001101001100101010010010001010101010001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100101011100010111100001010101011111111111101000100110111001011100011100100000010111000100110110001110001010000110101111001111111111111111110110101111001110111110111111101111111110111111110010011011101111111011011110011111111111101110110001101101111101111110010001010111111101", @"Or test 48 failed");
}

- (void)testOr49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"503371541717645555347420105331157424520245002177511372314611636513703535553324402720254041312557267531" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7551033625402745676550461620762662622347055324660733" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"503371541717645555347420105331157424520245002177517773337635636757777575573724762762676347357777667733", @"Or test 49 failed");
}

- (void)testOr50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010011111110011110101100000011100101011001011010000110111010000011100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000110111000111001101010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010011111110011110101100000011100101011001011011000110111010111011101011", @"Or test 50 failed");
}

- (void)testOr51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7911613836564008645354863144098971407451528547603698672497521795316174645098" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"475815646072085221049753823218353395865844426446467" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7911613836564008645354863245768277837171271651083539917876525663232684455915", @"Or test 51 failed");
}

- (void)testOr52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110101011111011010110011010011100010000011010011111100100011101000010010101000100011111011110010011010000001000000100111010110101001101001011010111010110000111100000000110110110111010011010110111111110111010100011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11100101010111100101101101001101010001000010111011101011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110101011111011010110011010011100010000011010011111100100011101000010010101000100011111011110010011010000001000000100111010110101001101001011010111010110000111111100101110111110111111111011111111111110111111111111111", @"Or test 52 failed");
}

- (void)testOr53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110011100100010110101111101100110111101110011101011000011101000100111011110000111111000001101101001110010010110011110001111101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110011100100010110101111101100110111101110011101011000011101000100111011110000111111000001101101001110010010110011110001111101", @"Or test 53 failed");
}

- (void)testOr54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1625280231081363426241606943634235995215524036362381308165428879641924260902106909627099744506609" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1681792396529643015823593032066269930750487014199426707733436626" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1625280231081363426241606943634237667339708037350967514497318486786281867357138978237655021476595", @"Or test 54 failed");
}

- (void)testOr55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"39833636496413636701423892524700764011951" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"34082730161828767518773243341917912139707304467107675962251832837573342442287270413" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"34082730161828767518773243341917912139707315713726842678069986307278292442829094831", @"Or test 55 failed");
}

- (void)testOr56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101100101011001111111101011000001000110100100111010010000001111000111101101011110011001001111101010001010100111001011111110010000101101010011100001111010010101100000000111011100101010101010001011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111001001101000010001110100001010001001100010100111101011010010100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101100101011001111111101011000001000110100100111010010000001111000111101101011110011001001111101010001010100111001011111110010000111101011111100011111110110101110001001111011100111111111010011111", @"Or test 56 failed");
}

- (void)testOr57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101101011001111110000101110100101110101101100000011001010011100100011100011111101010111011000100001110110001110101000111110100010101101111110010000101000000110100111111100111111110111011011010001010010001100110001000110011010001010001111001111011011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1101011111110110101011001100011000100000100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100101101011001111110000101110100101110101101100000011001010011100100011100011111101010111011000100001110110001110101000111110100010101101111110010000101000000110100111111100111111110111011011010001010010001101111011111110111111011011101111001111011111", @"Or test 57 failed");
}

- (void)testOr58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3791590ea83282d977058dcc14a7149185dd3e72a8338c87689aee0e43348ce0e9ebec9f2137a6e6d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"e2718c55f6a1b764a3578ad94d352219f989be472ce8d8501" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3791590ea83282d977058dcc14a71491e7fdbe77feb3bfe7ebdfeedf4f35aef9f9ebfedf2dfffef6d", @"Or test 58 failed");
}

- (void)testOr59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"588" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5f5d93916058450" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5f5d939160585d8", @"Or test 59 failed");
}

- (void)testOr60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"307004053341106611006623246426722475600467253101476737220557567751031655100233617766017655756727104" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2236504306571005767606132512444220740" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"307004053341106611006623246426722475600467253101476737220557567777535757571237777766137757756727744", @"Or test 60 failed");
}

- (void)testOr61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"44530024726322432330623024264002564205534352745074255307741444713520174760302005412742375127627503635" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"14216721264615400026324244060116655776532171372152362722751572366073460747232411412126146716230270" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"44534236727366637730627324264062576655776772775376357367763755773766177760747237413752377167737733675", @"Or test 61 failed");
}

- (void)testOr62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8981631fdd95736132e654912" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"34843ef6b02da1987b47e910b43b6a28c54a784ad457dd330523a24c709e5f6e" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"34843ef6b02da1987b47e910b43b6a28c54a784adc57fdffdd77b65f7eff5f7e", @"Or test 62 failed");
}

- (void)testOr63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111000001111010100000011111000111010000110100001101010010011101000101100000100010111010111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11010000110111011110011101010001111110111001100111110110010111100101011011001011101010100110001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11111000111111011110011111111001111110111111100111111110010111101101111111001111111111110111111", @"Or test 63 failed");
}

- (void)testOr64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1391571841609" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8851113409430088794179138385414608463736937205990940418627052252410113449702572143" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"8851113409430088794179138385414608463736937205990940418627052252410113724582851183", @"Or test 64 failed");
}

- (void)testOr65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"989221779002541497349786028271195041218736" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"43358482374021408479166255" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"989221779002541538795635612724536345558975", @"Or test 65 failed");
}

- (void)testOr66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000001011000011000110001000000010111101011000000000001011111111010000001010011010101011110001001011001110100001011000100010111101100000110110000011000111011101000111101011100110110101010111101011010011100011001011101001100111011101001111110110110100101001010011111101001011011100000110010001000010001000110111010011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11100101011100001011000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000001011000011000110001000000010111101011000000000001011111111010000001010011010101011110001001011001110100001011000100010111101100000110110000011000111011101000111101011100110110101010111101011010011100011001011101001100111011101001111110110110100101001010011111101001011011100000110010001000011101101111111011011000", @"Or test 66 failed");
}

- (void)testOr67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"238367d91b155422ac83e496d95b3fac3" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"19f318d39f9dc43cda5fe42" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"238367d91b1df73aff9ffdd6fddb7fec3", @"Or test 67 failed");
}

- (void)testOr68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47106443180100425763509393513285" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"56112077821350351782789187503" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"47117679316993688092194066358255", @"Or test 68 failed");
}

- (void)testOr69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3791181728295570258929531796193638249780610487675910795058491" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3791181728295570258929531796193638249780610487675910795058491", @"Or test 69 failed");
}

- (void)testOr70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17cc79f296f1cb8ebec8d080e31562abc141cb18f0dfcbbe053fe09a485" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4732d32e51bd535e576e53d7799158f85faead78397aa8917eebd622984727857" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4732d33fddfdf3def7efdffff9d1d8fb5feeaff979fbb8f1ffebfe27bfe7bfcd7", @"Or test 70 failed");
}

- (void)testOr71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"85413931376246271846626998676683700135790697012622" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"340105584198870728214788635960798562354928211886120046691" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"340105599453475639549606902443611191774620641046314835439", @"Or test 71 failed");
}

- (void)testOr72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"63b5d3da66a0419e7055f443a35aa8d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1238fa026eb0b20a8f" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"63b5d3da66a041bffff5f6ebab7aa8f", @"Or test 72 failed");
}

- (void)testOr73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1b250b0bcd249b4336240aa1e9909b4817a1ef8c1c92503390ff80d24f5f7bb" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3a1" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1b250b0bcd249b4336240aa1e9909b4817a1ef8c1c92503390ff80d24f5f7bb", @"Or test 73 failed");
}

- (void)testOr74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"112207053116140375160605051322172121265142137511100755041507223422636367665326015470" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"15465162625334315577653015470573117125004737433617777112536705473733010403216144622461336540050452102251036202" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"15465162625334315577653015572777157137144777573617777332576725677773137513316755663567337562676777767377037672", @"Or test 74 failed");
}

- (void)testOr75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10f48f9c8751827db0442" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a17908e2fb957bd0a83ad2151b19a98259e1bd854cf5ab2c84dd48788810bc5c46189191b3ee" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"a17908e2fb957bd0a83ad2151b19a98259e1bd854cf5ab2c84dd48798f58fddc7718b7dbb7ee", @"Or test 75 failed");
}

- (void)testOr76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000110101010001011111101000111110000001001011101111000110101100010110110000001110111000110000011000110101101111011010000000001100101000111010010110100110110101001010010111101001010011111000110100011111011001011000011010011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010101000100001011011111100010101000110110010000011000111110011101101111011000111111101001010010010011010111111010110110011100110100010110100010000010010011111101011110111111101001110001110111100110110001110110010010110011010101110101111011011101110000101110000010001001001010101001110011110100000000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010101000100001011011111100010101000110110010000011000111110011101101111011000111111111001011111111011111111111011111111111111110110111110110110110010011111111101111110111111111101111111111111100110111101111110111010110111110111110101111011011111111001111111111010111101011111111001111011111110011001", @"Or test 76 failed");
}

- (void)testOr77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3b165369f1cdfdef9dfa47a55ad37f83462102db25e72fbd271d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101731a1ca005fb3ffe8713351dc343f278dddbb1e31dd6390235858533a302470b5d8f11" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"101731a1ca005fb3ffe873b375febf3fffdffdffbe7bddefb7fb7c7a533fb27e72ffdaf1d", @"Or test 77 failed");
}

- (void)testOr78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"fe74c96df59ec6adf151e5c1c43b3e919f0a4a16398446b8f17182661e8a1ad6b9debefb69dd6c83d5f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"94af398af27df39582fbd4197c7c7fc2f95ed8b0ce0e02a3bd23bdbef2bbb05f7ed" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"fe74c96df59ec6adf5fffdcbf67fff959ffbde1f7dfc7ffaf97fdaf6de8e1af7bdffbffffbfffcdffff", @"Or test 78 failed");
}

- (void)testOr79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e6932e547fe54a9505eabf4dba3def555bcc33af4091f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1a75399a739031ab3a70f0bd95c1f9ebee" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"e6932e547fe5efd79defbf4fbabfef5f5bdd7fbfdebff", @"Or test 79 failed");
}

- (void)testOr80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011001110000111001100100111111000101100010100111011011100000001000001010001100010010010110111001010000110011110100101011011100001110111010001011111010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010101000010001011010000100101110110100011001010100001111011110001110101011001011101110101100011010010000110101000111001101100001000100111000011110100001100001111000010101000100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010101000010001011010000111111111110100111001110100111111011111101110101111011011101110101100011010011100110111010111111101110001110111111100111111111101101111111010011111111110", @"Or test 80 failed");
}

- (void)testOr81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"0" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1822789849893029578787860389949720462" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1822789849893029578787860389949720462", @"Or test 81 failed");
}

- (void)testOr82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2740575136442446360366261370" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"167203114343120455526600504115336710" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"167203116743575577566646764377377770", @"Or test 82 failed");
}

- (void)testOr83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"58ad011f78ba53a2b1bd26d305" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2d4f3df8ac9ccf6106f83c74349" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2dcffdf9ff9fef7b2ffbfe7d34d", @"Or test 83 failed");
}

- (void)testOr84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9619921466980029407691658204853077" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"31568211090055972200368635676376155" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"40857567262868119331899032470470495", @"Or test 84 failed");
}

- (void)testOr85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"643571ab987f7edacfad183580e3aba34f63359b7f00873c23b3b50bb29d56db7e73ef3f691" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"da40f05403f8b03954e68632d760a1898c45" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"643571ab987f7edacfad183580e3aba34f63359fff0f877c3fbbb79ffefd77ff7e7bffbfed5", @"Or test 85 failed");
}

- (void)testOr86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110111000100111101010011110110110010000000000000000101100001100010001001001101001110001110001111010000111010101100010100001101110000100001000100101001010000011111110011000100011001100001000010110000011111101001100100011010100000000100100101110001000001110100011110110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001100000100001011001011010000100100110010110111110100000010010001011101000011010010010111111000010100100010001110100010000011010101000100011001011000101010010011101011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11110111000100111101010011110110110010000000000000000101100001100010001001001101001110001110001111011001111010101101011101011111110100100111010110111111110000011111111011101100011011110011111111110010111111111001110100011010111010101100100111111011000101110110011111111", @"Or test 86 failed");
}

- (void)testOr87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2123" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10e7cb2abcd99a8f82f8ebc702974afda661f0ac11f6d6dca753a26efa" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"10e7cb2abcd99a8f82f8ebc702974afda661f0ac11f6d6dca753a26ffb", @"Or test 87 failed");
}

- (void)testOr88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"311004622717376134434400727046253743765656154036640116050635460503533564" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"72223071301746643147530315453541661535315214202150542615" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"311004622717376176637471727746653747775757557577661537355635662553573775", @"Or test 88 failed");
}

- (void)testOr89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101001110101100100101110101101010110011011101101111110100100101001111010101010100010110101110101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001010101010101100111001001000001101110010110111000110100010010110001110111100010111001011000001101101110111101010000110110000100000000011100000001110101111101010011101001000000010110111000110001111010000110100111110011100001010111110101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001010101010101100111001001000001101110010110111000110100010010110001110111100010111001011000001101101110111101010000110110000100000000011100101001110101111101111111101101010110011111111101111111111110101111111111111011100011110111110101", @"Or test 89 failed");
}

- (void)testOr90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110010111011100011100100000001111111001001011011110001100010001101011011001110111111011000000110101000011110000010010111000111111001011111010100000000001011111000100000011100100010010101011010000101110001000000001010100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110010111011100011100100000001111111001001011011110001100010001101011011001110111111011000000110101000011110000010010111000111111001011111010100000000001011111000100000011100100010010101011010000101110001000000001110111", @"Or test 90 failed");
}

- (void)testOr91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"117102133402122017636657277474276265240716236030242712055552065" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2553203644577720343514616415643543730305234657501156" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"117102133402573217676777777777776677655757777730347736657553177", @"Or test 91 failed");
}

- (void)testOr92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6107679137435898372634718661506050044294719447246589517271385892328164181016173814977943" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"964169217031635" andRadix:10];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6107679137435898372634718661506050044294719447246589517271385892328164181302597131419095", @"Or test 92 failed");
}

- (void)testOr93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11100011101000001000000111000100000011011100000011011011000111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101010000111100000010010001110000101110100110011110101000111011100000101000011010000000010000000010000011000100001101010100111001011011010101000011001100001011001100100000100101010010011100101000101011001110000010011000011000111010010101011110000101000011110000101000101001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101010000111100000010010001110000101110100110011110101000111011100000101000011010000000010000000010000011000100001101010100111001011011010101000011001100001011001100100000100101010010011100101000101011001110000011111011111000111010010111011110000111011111110011111011101111", @"Or test 93 failed");
}

- (void)testOr94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110001110001000001010010111010010111111011100100011111000111100110110101011101011001111101010110100110101110001000100100101000001011101011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111000111001101000110000111100001100000111010010010001110001011100011110010101011100100011001011000111110010101011110010010011010010011010001111100000001000110000001100011010101101011110101001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111000111001101000110000111100001100000111010010010001110001111101011111010111111110110111111011100111111111101111110110110111011111011011111111110110101110111110001100111110101101011111101011", @"Or test 94 failed");
}

- (void)testOr95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8a751f65202d9b59a1b5b5adb0c41859840c9020c5cd91396fae864c4b21b73f72b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"222edcd84e487cf8d1ea06119cd543461" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8a751f65202d9b59a1b5b5adb0c41859842ebefcddcfd97dffffee4e5bbdf77f76b", @"Or test 95 failed");
}

- (void)testOr96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"139a4c7a6afaa7c8c026664a6a64779b88a7804faa2b73202425" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"16001a44d5443cc4115fc6e485418cc47b0092bf2a281f7555ca0ffcc3a06622d14c90eb6" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"16001a44d5443cc4115fc7fda5c7aeeffb7c9ebf6e6cbff757fbbffefba4fea2f77e92eb7", @"Or test 96 failed");
}

- (void)testOr97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8b33d052b43deab48c887f1c267e0068a9298fc3027a62b0957373" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1e48e726c265abeb04bbc68f86e59c24b188657617bb82657a868ae9b46410db15d908660663e29cb" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1e48e726c265abeb04bbc68f86edbf3db5ab67febffbcae7fbc6efe9b6ee92dbfdf92fe62f6bf7bfb", @"Or test 97 failed");
}

- (void)testOr98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30f343f54a315c4a8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"40d215f49936" andRadix:16];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"30f347fd6b7f5ddbe", @"Or test 98 failed");
}

- (void)testOr99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"475433340177110406732" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"31447334137720365527530415716" andRadix:8];
    JKBigInteger *result = [int1 bitwiseOr:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"31447334577733365577530417736", @"Or test 99 failed");
}

- (void)testAnd0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"208048f1409957d4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1131860" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"111040", @"And test 0 failed");
}

- (void)testAnd1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"132601007622006" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7665020253324763747" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"20201004622006", @"And test 1 failed");
}

- (void)testAnd2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"913621369768316690404412153989071324599271910592367593045882" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1390944736982458349157720410863083008570907" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"100388619098748919519408033821568422131226", @"And test 2 failed");
}

- (void)testAnd3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000010010111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100001001011001001010000000110100111000100100111100100010011001001011011110110011111100100100111100010000011100001000111101110001111010010000011110001001010001101011000011101110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000010101110", @"And test 3 failed");
}

- (void)testAnd4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2772623346340444536606642555126416171522067661425025461403620425602452" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2057270021717210200600265471527216474044146152717104160645462150602247" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2052220000300000000600240451126016070000046040405004060401420000602042", @"And test 4 failed");
}

- (void)testAnd5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"69663911122897909504872438105107853395495274120703546911835267147640979496713861805" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"32573406834634221293507245695598930024523" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"863341089816343049600175185431896528905", @"And test 5 failed");
}

- (void)testAnd6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10101111011001101111001000100100110100010011000110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000000001101001001111010110000001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000000100000000100010010000000", @"And test 6 failed");
}

- (void)testAnd7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"106221374243117266712737465106301673146300223135550663470175117604707601770" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"31322226317501127337325073065007232422474732750476" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"21102200213100100223125050061000030002404702600470", @"And test 7 failed");
}

- (void)testAnd8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"762659073185353967073011895763674967077380630635355546066705070021335168277241" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9147938472151812102067320637968316935510039071326172000217325043470897441009690640249230" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"907310512749268709488369543779782892574315930053633742818393382588371783816", @"And test 8 failed");
}

- (void)testAnd9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16435067801320295953010891040495144790135934519719184877417029947508998181854064" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6054946557" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"66160", @"And test 9 failed");
}

- (void)testAnd10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13cb8fad8b3623ce10ee5b27ec7d77c03963109c872846" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11d40ad4a69abd11e229e0e8b4fa71eb33db3" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"114008c00680b010c2016000943001c832802", @"And test 10 failed");
}

- (void)testAnd11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"266302771760702756275741155" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"47430434664541115102017515676" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"20000660540100102015501054", @"And test 11 failed");
}

- (void)testAnd12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4934978807548271994443771707395758644072879399277699990138887" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11420161435198867869382428" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"11108188937459703595773956", @"And test 12 failed");
}

- (void)testAnd13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"226201804509925659248424227769874348519324694059795117507917346149546360" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3292365507582708122122" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"340118449793717796872", @"And test 13 failed");
}

- (void)testAnd14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1344014702114460050563255213315143177630653313141732233" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"703165020377661411307626001501651646257610" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"400040020255201011103026000401211040212210", @"And test 14 failed");
}

- (void)testAnd15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010111110110110110010001010001111101011010001110101100110011111111100101001001011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010100101110001110111111001010101001001100010110110000100010100100111001101011001001001010000010010110000110011010100111000100001011110111101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000100110000100010000001000000000000010010000110001000100011000100000001000001001", @"And test 15 failed");
}

- (void)testAnd16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5774818036411708840934937401433693162719060562502320145" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7253475466" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"542179328", @"And test 16 failed");
}

- (void)testAnd17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111101000110001000000001101000000100011001000100110011110100001100101010100111010001010101111101100100010000111000001000100010110110010000110001111111000011011100000010001110111011010100111110010001100110001111001101001001010101111111110011010101001011100101011011011010110100100011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010001100011111011100010010000011101000111010000100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10010000000010101001000000000000011001000110000000000", @"And test 17 failed");
}

- (void)testAnd18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8018606952906181417708779880746485893531074228722277897468" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"107517536272407668447970841730699814546" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"22104074519331676476049837120660456592", @"And test 18 failed");
}

- (void)testAnd19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001110000111000010010101001001010001010001010011111001110000000111100010000001000100101000111101101110110000010100011000110111010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100111110101000111111001011100101010000001000000110101010001111101000000110101101000011101000100110000001110000011100011001000111010101011101110010101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001010000101000000000000000000000000000001000000000000100000000011100000000000000000100000011100001000000000010100011000110010000", @"And test 19 failed");
}

- (void)testAnd20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7772eeba0e17a4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5cd2c38ee85f4dd8479d9515f535ebb" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7150401a0216a0", @"And test 20 failed");
}

- (void)testAnd21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"126ba1184e277cee546fa9dd64a1e69cb819e842025a" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"14d05dbead2e1791bd6781c2d4dedba2ac74286f47" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"80180e252c06102d21814080c698a00860000242", @"And test 21 failed");
}

- (void)testAnd22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111011110000110001010000001001010001101001101011111100010010100110000111111000110001001000010110111101100010000101100101001010010100101110000111100100011110000000100000000011000100111101101100111111111000101000011001101100101001111110100101101111001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111011011110100001101010000100101010111010101100111111100001000111100110011110001100111100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010000100100010111010000100000011000001000101000110010100001100111000", @"And test 22 failed");
}

- (void)testAnd23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3562763610252667021155547257124737037635125041516311655724717650404456653454453022203471633171604503" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2414102566336117" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2410002160204103", @"And test 23 failed");
}

- (void)testAnd24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"131733232516323" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"625145763462677763754735403524265533402305536154705741556254766542275312744325401530556741365762" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"130512200104322", @"And test 24 failed");
}

- (void)testAnd25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"741066775462717512113451122717616600742335651762512570327324301702001025734665060241071453204363227450130" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"30505404004736740423253304144332560722636" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1004004624040001051000004322020400030", @"And test 25 failed");
}

- (void)testAnd26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7704595aa933a17a19ada229542bf4fc5817b118e4348128a68d5be32d866472a328f9" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"37c8583d58dd74d1491fd761368bab8f0472b2eeca8f9875c336c60a87dc5bfef9a9330fb6" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"500458582011011a11212209000b04701006800880348120860803c0098660202308b0", @"And test 26 failed");
}

- (void)testAnd27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3324273016762376045306651310453151541702242576437210063404366113355070246116" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"37043200007566327036515640711234107" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2042000000062004026111240010204106", @"And test 27 failed");
}

- (void)testAnd28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33777083192317228043234828618709374796147209264101859522634521947" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"76622399473058644518235363133277321580099756213917336701443563482461917242862575895045696401" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7445749195041417646294100896085757838795053850381028966206736657", @"And test 28 failed");
}

- (void)testAnd29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"43b83a2d643d1fe75647ad7fe8df9ae3cd8e307f28eaa155df3859d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12feb06827148c6259c5ed0536ed726409111a1" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1246a068201488624984200520e820440910181", @"And test 29 failed");
}

- (void)testAnd30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a0ea7913aea9feb0a3171256713fea60a565923a34bed3ccc4fdac9ad919a01c782b4aa5ea9a20" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5f43314996d7c3d0085118018e2e3eed817ff4e13cc60653378b8f9446f8" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1702104116c24080001018008e020cc4812c90c118800450230a85800220", @"And test 30 failed");
}

- (void)testAnd31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"869753730257756110241696086" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5942697657168228173359536119915982830138309459967223662685256175375037896043" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5062378063197088967557442", @"And test 31 failed");
}

- (void)testAnd32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"475335561061762403647654676276102135066235200" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12402246701707221423131640553423533072600372366030540151200263341065" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"440111421021062400242244030040100000062201000", @"And test 32 failed");
}

- (void)testAnd33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1140759426327918097" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"205094718449242447010781959270795205248657392020446103752" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"833315619671900160", @"And test 33 failed");
}

- (void)testAnd34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"60968519761210568627001182463960039948117946326359146589548040026769431588456125497821228800208313" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"72951642787978470235543781683931736859967379715118575761351116651771982938503" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"14476012777544292601252875333736496852711979478427425117577837805819525104001", @"And test 34 failed");
}

- (void)testAnd35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"202820837927301376477081624012621018091223234" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"601271591085" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"872702080", @"And test 35 failed");
}

- (void)testAnd36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e4c4bec0781ad1276e5a73138981f2e1994b5bc68bf9ce4aadb02a551" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26e8e21a2eabf610596dd99949f8c59c6ec18a8c68a" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2668421202898010410949194088c18c4a818008400", @"And test 36 failed");
}

- (void)testAnd37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"649350891902119112458613050574135813319859" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"33210544739923758709451298498264327325448699994443848201062421884205388" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"441007359882294676460654620090244215875584", @"And test 37 failed");
}

- (void)testAnd38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"136173230371662627534062265636041037707063530504775310410405571041544321272117772316453763202561" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"74751514040657523" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"70310410040202521", @"And test 38 failed");
}

- (void)testAnd39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100100010011110100001110111000110001111001001000101000100100100110000001000001011101110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101010001000001111000111001000100001101010100000111100000000011101011001100011011100110111110011110110101001001101000011101000011001011100001001011011010110100100110001101110000100011101000001001011100111111001100100011100010001101010111110001100100101111001100101001101000011010100100010101101010001100101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100000000001010100000000100000100001001000001000101000000000100100000001000000001100100", @"And test 39 failed");
}

- (void)testAnd40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2764156727231565357022315711203210157010717116167045715515772335520634262447102073376017532452246017" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2465456723441564773505325550513256071612373736570032116036046244662433" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2000056000401104163005305510512214020610262406100032116016002040242013", @"And test 40 failed");
}

- (void)testAnd41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"70646546752117303242565723411101024157335016625541007730175037127061632541676763053" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"114715460735577615142253456" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"114015020021432401042243052", @"And test 41 failed");
}

- (void)testAnd42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100000001100100011011011001010011100000001100011010100000101001100001111101010000000011110100100100010111110010001000010001101000100001100001000100010011010000100111111000101011000100000011000100111111101011110001110110111011100101010111011110110000001110000111100000110000100110101101111010100111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1001010100010111010101001001011001011101000010011101010000110011110101100001001101011000011010111011000111010001000110011000011111110001000110001011111101001111001000110111111101001101010010001001001011111101110010111011110011101100101101010010100011100000100111110001100101000101111000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010000000010010100000001000001010100000000001100000000100010000000000000000100000000011010010001000010000001000100001000001000100000000010000000111101000101001000100000011000000101010000001000001010110101010000101010110011100100000001010000100000000000000100110001100101000100111000", @"And test 42 failed");
}

- (void)testAnd43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"722d3a0b9390144d62f7" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4280e78af60ad78" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8021004402070", @"And test 43 failed");
}

- (void)testAnd44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"56374363246627706662401553034233516447153412171131510741137272727413364170607067457062565315433" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"332605661150050535271366736517502401167637642374624715667270666614" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"232404441150010131031100700117002401003224040204024415062060204410", @"And test 44 failed");
}

- (void)testAnd45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"478f9e2dc1d14866d6fdc88d61b2f4183769ff51aaca67f3a43eb8fb4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"609060a76c7f09afd8ca10be4" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"20006001284a01a3800a10ba4", @"And test 45 failed");
}

- (void)testAnd46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101010011101000011100101001110110010101101100111000001000001101011010010001101111001110001000001111100101110110110001111100111110001100101011101000001110100010010101110111110001010001100011111010001111110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000111010110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000001010110", @"And test 46 failed");
}

- (void)testAnd47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101011011001010110010101100011011111101000001011001010101110100000110100000100100110000001010110001110000100001101100111110101010101101010100000111000101001001100001110000111110001111000111101011101101001010000000001000111010001110000111110010001010111101100111110010110010011000000011110101101000001101001010011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100111011010100000101101110000010000001101001101110100101010000010010000000110111101001100110001000001010110100010011000001110011111000000000100011010111011101110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100001001000000000000101110000010000001101001101100000000000000000000000000000110000001100010001000001000100100010010000000010000000000000000100000000101001000010", @"And test 47 failed");
}

- (void)testAnd48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010100100100001110111100111100110111010001111011111100000111010011100111111100101101111011001001001001010001100011100101110001100111010001011010011001100101011011010111110000111110110101011101110110010111110011011010001010010111001011100001011111000111100001101000000111011010110001110001011011010110110101000010111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111111000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000", @"And test 48 failed");
}

- (void)testAnd49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17fc71bc2d48a5825074b72b4b8a9035bdd4f0a450763a4908076e3007c71a641" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"19fda641a5095b49e0fdfbae4d83e7da3eabe" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1035a440a0005040204908064c0007c21a200", @"And test 49 failed");
}

- (void)testAnd50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5759025047301721318037216028468242395548004400846144579833511779056049732277807356979" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2205570606385446503337997500115944603827856668894239021758328993779712042177010307106900356932647" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1353623302443862280322640868345961821572130788725707239236663337377939669213656384547", @"And test 50 failed");
}

- (void)testAnd51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1333470176302220163274560" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4704572" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"204560", @"And test 51 failed");
}

- (void)testAnd52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5314341057305730770216420460704203467311222117241762233436505730507220304156143236" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"726" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"226", @"And test 52 failed");
}

- (void)testAnd53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13357230776042453055773456075061442" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"150470062354443" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"150450060040442", @"And test 53 failed");
}

- (void)testAnd54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11101110001000111111101110000010110100100001100001011011011010101100101001110010001001011100111100100110001010000101001110011111010000011011100110101110000011000001100011010100100111001110010111001000000100010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101100111110111011010011001101010101001101111000011100101100111101000101110001111111000110010000011110100011010110111111" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101100100110001010000001001100010101000000011000000100101100000001000001100001010100000110000000010110000000000100010100", @"And test 54 failed");
}

- (void)testAnd55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"774478784078942691136827678088698119390034715036987874877" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6781986831964559790" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1445132198760863788", @"And test 55 failed");
}

- (void)testAnd56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011000100010110000110111001001001110001011010010010000000000011001100000011011110001110101100100100111000001000001100000100100000001101010100101110001001100110101010111110001111100001010010011001011110001011101101111001111110101001011000001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010110100011101001000000101111110000000110011000011101010000110000110010011110100011111001011100101010001000000000100110110011111100100011010101011111110000010011000100010000111010100111100010000100011100010110010001000101110111011111100000011000111001110111111000100000110001010100001000000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001000000010000000010011000000001110001011000000010000000000000000100000011011100000010000100000100110000000000000100000000100000000101000000000100001000000110000000000100000111000001000000011000011000000011101000100000110000000000001000000", @"And test 56 failed");
}

- (void)testAnd57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100100111000011000110101100111101001000011110111000010101010000111111010011110000100011000011001100001001001100100110101001010101011001010000001111011011100110011101100011000110101010110001101101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101011110111111011000111011001111101101110011111100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101011010100110011000100011000110101000110001101100", @"And test 57 failed");
}

- (void)testAnd58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17853280971308317159013591331889620228875719213591083955713377753459663912883" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8456006835646101683891751765958165218606568797448269158308226282423599199838375843" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"29326002347367586516392483565429144099714053250835871400244507683982479267", @"And test 58 failed");
}

- (void)testAnd59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111011101010001011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001", @"And test 59 failed");
}

- (void)testAnd60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"905203613728284090982939269368793" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"157407062150799356071714937887057304546210" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"649136941848420909478119453264768", @"And test 60 failed");
}

- (void)testAnd61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"70086377521696324483379068686363083262410553755962882" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"73319184414229831200296375185143206733138264195260162681587041883350519351319182286" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3016588754389841930300394890157982781222586223168002", @"And test 61 failed");
}

- (void)testAnd62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3da7d73472" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7f62e5be6929eecb1c0b129000979b623ad39333513216efc996bf4307e886e53cd8c" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"826530400", @"And test 62 failed");
}

- (void)testAnd63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"66228f8eaa65d97b9f4cc638af9b15e45a6a6ba5f5f1f8bb5a3b4903b9b4b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"531c456737e0c87471f998959a1b0d3fec22562ab4bc0fa93342cb66" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5008044517a0c044618898911a010426a802560a80b403a010028b42", @"And test 63 failed");
}

- (void)testAnd64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42e39b0104482c3ffa63dcf257b73491de1a25c38435d42ce29bda4f26" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"aa568738999e5d0e5a0759cd9949f4cd3b50bdef3e11a4983101ecde3f04e5e27d2d522b18" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"420319010048240d3a409ce216112490100024c20404c4206009520b00", @"And test 64 failed");
}

- (void)testAnd65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"293a11b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"cccba0edba4446" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"920002", @"And test 65 failed");
}

- (void)testAnd66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111100001010000001110010010000001111101110000110010011110101101010100001100101000011111011110000100111011011100001000010111100001011101011111111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111111011100011000101001101101000110000010000001111111110110111011110001101010100010101010110001001001010010011111100110101000010011001001111010100111111100110001010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100001000000000010000000000001110100110000110000001010100000000000000000001000010010011110000100101000010000001000010010100001011100010001010", @"And test 66 failed");
}

- (void)testAnd67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"166c99b16b960172d0970d85bbcbdf16a8986dc9b6fccc3902b82ccbe0c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"493f9" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"49208", @"And test 67 failed");
}

- (void)testAnd68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"327652514314772247646614224036421657671003341647157524500353750" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"17641" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"13640", @"And test 68 failed");
}

- (void)testAnd69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1100010000010000100010100001000001100110000011010111101010000000011010101000101100011010111000001011010010011001100011000100100001100010101001111101101111101011110101000101101010100010000111100011011011110010101011011110001010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000", @"And test 69 failed");
}

- (void)testAnd70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2e8eff608a4f209037164acb1d29480d7e2086a84f2e8f53a94062f6e1399b12c0f6a1a70bf7c2c57" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"d16d18a6" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"916c0806", @"And test 70 failed");
}

- (void)testAnd71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30f252346e41" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"669b6225a5b03252623a453fd38a29e7a5f6e799e90d8895f7866a8a9d1a3e672689373372f5709" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"107212244601", @"And test 71 failed");
}

- (void)testAnd72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5f7237bca7c63811" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8f5cc4ef5c9f46434a54bf54d2c5a6" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"434214bc04c20000", @"And test 72 failed");
}

- (void)testAnd73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110111101011001010010101011111000000011000000100110111101010100001011000000111111000001001101110010100101001010011110101100111010010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100000001011111111011100010001001110010101000001101000001011011111010110010101111110111000010100010001110000111111100101100110001100101101001001000001011011100011010001100111000100110111100011100011110000000100110101011100111011111000100010000011101100001001101100010010100011100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001011000010010001000111000000010000000000100011100000000000010000000100111000001000100010000000101000000001100100000010000010100", @"And test 73 failed");
}

- (void)testAnd74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"66667232437346062445677630713445624677350772266660703345757137306021753576176271060" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1222357254561571123311305014361215336565332424404463040350137261104320065637053546034533776247057375" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"22201200014340000004465230400404420040350132260000300045617013106020513576046051060", @"And test 74 failed");
}

- (void)testAnd75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1809e15a6dee23c4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"764d8769359aee3a594f85e1f0fa634db6eea448" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1008614824ee2040", @"And test 75 failed");
}

- (void)testAnd76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2690686512" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"881510157198580517810" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2686454320", @"And test 76 failed");
}

- (void)testAnd77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100010111111100010101001001010011101110000101001011111110110111110000000001000111101010110101010011100010000010010100110100011111110110001101110100110011100101101000101101111101010110100011111100011101111000101101111001100110001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110110101000010011000111111010100001011110111101101100001110110001000101110010100010111101010001110111110011011001010110101111100000010100001001010011011110111000000010111101100010011110011000011110010011001111011111011010010100110110000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000010011000100010000000001010010101100000100001010110000000101110000000000000101000000110101010011000000000010000100100000010100000000000001010100110000000000101000100000011100010000000010010000001101011000001000010000100110000", @"And test 77 failed");
}

- (void)testAnd78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"270" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3c04c88" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"And test 78 failed");
}

- (void)testAnd79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22a5" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"66aea3636c1" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2281", @"And test 79 failed");
}

- (void)testAnd80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001111101010101011100011000111101100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110001101011000000011000010011010111001001101010110111101100101100110000100010110110001111100101110000110100001100101000011111110100101001001001101001010011111011000001111001000010000111001000" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1001011000000101001000010000111001000", @"And test 80 failed");
}

- (void)testAnd81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000101100110000011101000011101010011000001001110111010100110011011000101101000101111101110001011111111000100010000111110000000111010111011011101110000111111001010110011100100111110110100101011000110001000100100010011011000011010101010110100000011010010100000101100010010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010010100000111100011010010001100011" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000000000010000000000000000000010", @"And test 81 failed");
}

- (void)testAnd82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11000110000110101110010011010001011100000110111011001010111110100000000010000110001011011001101100110100011101010110111100010000100001111011001011001010100001101001010011110011011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000100101000011000011111011100010111010011001111111101011010110010011001001000001010100101000000010101111010110000010011010010001100" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000000000000010000000000010000010001010011001101100100000010100010010001000000000000000101000000010001010000000000000010010010001000", @"And test 82 failed");
}

- (void)testAnd83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111101111101011011001011010010000001001111011001111011000111001101010100001101100001100000010001111010111101110010101010000001110010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1111100000000001111101110100100010001001001110110110000001111110010001111001001111111001110001111111110100100111101000100001100010101110010100000111011101110011101111001000101110011110111110010111000100110111110010110000011011001011101111010000111111010011000000000101" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000100000011011001010010000000001000101010001110011000010001000000100001100000000000000010001011000111000000010101010000000000000001", @"And test 83 failed");
}

- (void)testAnd84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"d4bcfd194fff7dac3fe61653a52775793" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"14cb70e43f5ea" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1443202435582", @"And test 84 failed");
}

- (void)testAnd85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"167c38d7338ac30fa2105647ed26955dbb1eefeb49cb15439278c958949a316fa705b1e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"82d452d42ba8332f" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"804002142a20130e", @"And test 85 failed");
}

- (void)testAnd86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001110100100100110010011000100011100011000001011000001101111100110000011001100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11101101010101111110011110101111010101100010111100110001" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11000100010100011000001010000001000101100010000000000000", @"And test 86 failed");
}

- (void)testAnd87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1102277514027015545211403753474515357065743" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5330262473007425334" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1310060411007025300", @"And test 87 failed");
}

- (void)testAnd88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111011011010011010111001000101101011110100111001011000011111010010001111111011101101101011011110011100000101000011111101110111101100110001010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111001110101101101001000111001001010011100000110100101000101001100010010010110001101101001101101111110000001010001110111000000111100110011111101000000011000110010011110100001101101110011100000011110001100011001001010010" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110001001000001000101001000000001010000100111000000000000110010010001000000011000100000011010100001100000100000000000001110001100000000001010000", @"And test 88 failed");
}

- (void)testAnd89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2157303370470733325251204760431730333" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"125673637653027643705021211211455020374211437437115636015721000650321040114" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"11003030010632005201000640021000110", @"And test 89 failed");
}

- (void)testAnd90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"f0e6f8d9" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"121b7fd97348265d41bfd71cc74b57f6add2444041963f705c3d82683465f25a2459cc61c6b904" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"60c6b800", @"And test 90 failed");
}

- (void)testAnd91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111001011101000110001010111110100010110011000011010110001010101010011111101011010100110011000111000000110001110100011011111011010000100101011010100011101000101111111111000101010100111010101001100100101000011111010010001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101111000111100100001111100001001001001000100100110010001101111000110101011110011110" andRadix:2];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101011000100000100000101100001001000001000100100010000001100100000000001011010010000", @"And test 91 failed");
}

- (void)testAnd92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5ede2d3" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"99ed96d711d18d78ed914dd5f9b0b4035a1a59365ec00" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"165e000", @"And test 92 failed");
}

- (void)testAnd93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4a8efcad15e0e062384b36775a6c1099040376" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2c7ad8843b686464da6cead7037bd7a63b2841a7161bb26f5cecc587c8dcb74946" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4286382801a00002304b146440040098040146", @"And test 93 failed");
}

- (void)testAnd94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6704413646542660365750660531655334131610" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12155717577147666371255700002605023755770565232520612133060540657454444260436560332520723502316205226" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"604410444040420160310420521400314001200", @"And test 94 failed");
}

- (void)testAnd95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110890473207185354826099292177063960306532017885014361018243864307970679182635590914570360" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20287762895555458091589066566901199221507864506565232235632397345850677878485342103999221862641" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"13988205689984026336658306519678592822407912887505557023115184240422695996142361312759920", @"And test 95 failed");
}

- (void)testAnd96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"68591" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10122369051010730977342699472965" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2117", @"And test 96 failed");
}

- (void)testAnd97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1ad2ff85a3a410337d01e371d1984afc354ce8da145fbe351c7c20f36f5434333ddc2ef99f16bc72f94" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"c347800d0699c6b251dabc6aafbae170c9b99" andRadix:16];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"10400000209443011189c2aa99a003040b90", @"And test 97 failed");
}

- (void)testAnd98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"91316177337199878340374991625" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"194012177764583320970308154685461101972878193427650923090861654479704350037593048581334" andRadix:10];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"80173658581487000228409147392", @"And test 98 failed");
}

- (void)testAnd99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"22054635517" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"543505547075647554646015122703065306153175352426476070356756061021307606440550670275607006260363" andRadix:8];
    JKBigInteger *result = [int1 bitwiseAnd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2004220103", @"And test 99 failed");
}

- (void)testShiftLeft0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"307424453637160273173635" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:72];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"307424453637160273173635000000000000000000000000", @"Shift left test 0 failed");
}

- (void)testShiftLeft1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47104" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:99];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"29855706936575258864050353893015552", @"Shift left test 1 failed");
}

- (void)testShiftLeft2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110010011000001010001110011011100111111101011100010000101011111010" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:1];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100100110000010100011100110111001111111010111000100001010111110100", @"Shift left test 2 failed");
}

- (void)testShiftLeft3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000100001010000110110011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:67];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100001000010100001101100110000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 3 failed");
}

- (void)testShiftLeft4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111011110010100000100001000101000110100011011010010010010000111110011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101111001010000010000100010100011010001101101001001001000011111001100000000000000000000000000000000000000000000", @"Shift left test 4 failed");
}

- (void)testShiftLeft5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:74];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"24000000000000000000000000", @"Shift left test 5 failed");
}

- (void)testShiftLeft6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5e11be8bccd" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:20];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5e11be8bccd00000", @"Shift left test 6 failed");
}

- (void)testShiftLeft7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1502" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:71];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3546497228635103555485696", @"Shift left test 7 failed");
}

- (void)testShiftLeft8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"d805c779170fc16" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:54];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"360171de45c3f0580000000000000", @"Shift left test 8 failed");
}

- (void)testShiftLeft9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7193721300098361909001969273" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:99];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4559562561972143619909513279006606069642688019997680205824", @"Shift left test 9 failed");
}

- (void)testShiftLeft10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"728016792273233418582" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"12807406853129678966718335771738112", @"Shift left test 10 failed");
}

- (void)testShiftLeft11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9269491157249462" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:22];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"38879063838816047464448", @"Shift left test 11 failed");
}

- (void)testShiftLeft12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"801547f784b51a9d771ff" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:8];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"801547f784b51a9d771ff00", @"Shift left test 12 failed");
}

- (void)testShiftLeft13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:69];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2361183241434822606848", @"Shift left test 13 failed");
}

- (void)testShiftLeft14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11101100111000110101110010001010011110101000010111001111101" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:65];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1110110011100011010111001000101001111010100001011100111110100000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 14 failed");
}

- (void)testShiftLeft15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101101000100111111010100110010101100101100100100000" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:39];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1101101000100111111010100110010101100101100100100000000000000000000000000000000000000000000", @"Shift left test 15 failed");
}

- (void)testShiftLeft16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3162661490" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"55638129327589912739840", @"Shift left test 16 failed");
}

- (void)testShiftLeft17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010000001010011101010010000001001111010101110001" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:20];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101000000101001110101001000000100111101010111000100000000000000000000", @"Shift left test 17 failed");
}

- (void)testShiftLeft18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11101111100100110110110010100001011111010001101001010011110000001010000101101000001000110" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:84];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11101111100100110110110010100001011111010001101001010011110000001010000101101000001000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 18 failed");
}

- (void)testShiftLeft19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000100100110101110001100000100101000110110010001011110100011100000001" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:32];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100010010011010111000110000010010100011011001000101111010001110000000100000000000000000000000000000000", @"Shift left test 19 failed");
}

- (void)testShiftLeft20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"312119583530144900040108" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:56];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"22490586241302319556738675819599613657088", @"Shift left test 20 failed");
}

- (void)testShiftLeft21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6698a" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:42];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"19a6280000000000", @"Shift left test 21 failed");
}

- (void)testShiftLeft22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000100101010100100010100010111001011110110101111001100011111011101101000010011100010010010010111" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:24];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000100101010100100010100010111001011110110101111001100011111011101101000010011100010010010010111000000000000000000000000", @"Shift left test 22 failed");
}

- (void)testShiftLeft23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10010011011110011011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:54];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10010011011110011011000000000000000000000000000000000000000000000000000000", @"Shift left test 23 failed");
}

- (void)testShiftLeft24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"55507b4501807c63" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:0];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"55507b4501807c63", @"Shift left test 24 failed");
}

- (void)testShiftLeft25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110101111000111001111101001101111010010100110000011100101101001011001111000001011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:94];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1101011110001110011111010011011110100101001100000111001011010010110011110000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 25 failed");
}

- (void)testShiftLeft26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"30" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:25];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"60000000", @"Shift left test 26 failed");
}

- (void)testShiftLeft27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"335247562" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1565236710000000000000000000000000000000", @"Shift left test 27 failed");
}

- (void)testShiftLeft28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"173bcba5be" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:19];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"b9de5d2df00000", @"Shift left test 28 failed");
}

- (void)testShiftLeft29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"172057" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:86];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7502740000000000000000000000000000", @"Shift left test 29 failed");
}

- (void)testShiftLeft30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"254677123777712332504326320" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:70];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"53157624777762466521065464000000000000000000000000", @"Shift left test 30 failed");
}

- (void)testShiftLeft31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9810275" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:51];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"22090775417201046323200", @"Shift left test 31 failed");
}

- (void)testShiftLeft32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"76352345762025641377" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:13];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1747247137440535027760000", @"Shift left test 32 failed");
}

- (void)testShiftLeft33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8de59c88e581df0860ab" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:84];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"8de59c88e581df0860ab000000000000000000000", @"Shift left test 33 failed");
}

- (void)testShiftLeft34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13d1644897dee3fbabdcab89" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:48];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"13d1644897dee3fbabdcab89000000000000", @"Shift left test 34 failed");
}

- (void)testShiftLeft35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5106987" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:96];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"404617195994235286653840238294597632", @"Shift left test 35 failed");
}

- (void)testShiftLeft36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9585236227161952688388" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"38340944908647810753552", @"Shift left test 36 failed");
}

- (void)testShiftLeft37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12202" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:86];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"510100000000000000000000000000000", @"Shift left test 37 failed");
}

- (void)testShiftLeft38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7896134945" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:12];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"32342568734720", @"Shift left test 38 failed");
}

- (void)testShiftLeft39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"60113542008598668184" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:82];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"290691252170734346760245934643584692478017536", @"Shift left test 39 failed");
}

- (void)testShiftLeft40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7829453226014" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:45];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"275474395556182642181275648", @"Shift left test 40 failed");
}

- (void)testShiftLeft41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"12e4bec0068b6b72" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:54];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4b92fb001a2dadc80000000000000", @"Shift left test 41 failed");
}

- (void)testShiftLeft42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4449b8a39980708c8383" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:40];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4449b8a39980708c83830000000000", @"Shift left test 42 failed");
}

- (void)testShiftLeft43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3b21fc9504bd456a1" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3b21fc9504bd456a100000000000", @"Shift left test 43 failed");
}

- (void)testShiftLeft44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101101111000001001001011111101111101000111100000001000011111110110001111001010110" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:94];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11011011110000010010010111111011111010001111000000010000111111101100011110010101100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 44 failed");
}

- (void)testShiftLeft45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1027f887d1ffa4052acb76d23" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:39];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"813fc43e8ffd2029565bb6918000000000", @"Shift left test 45 failed");
}

- (void)testShiftLeft46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10001101101110011100111111110101100010101111100011011001111110100110010001101" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:50];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000110110111001110011111111010110001010111110001101100111111010011001000110100000000000000000000000000000000000000000000000000", @"Shift left test 46 failed");
}

- (void)testShiftLeft47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"146881285691838338126584" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:75];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5549018084095505248119879468165333175827955712", @"Shift left test 47 failed");
}

- (void)testShiftLeft48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"27355135351" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:10];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"56732272722000", @"Shift left test 48 failed");
}

- (void)testShiftLeft49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6188756531261504279275800367" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:59];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3567575245833732358580692563507485445346820096", @"Shift left test 49 failed");
}

- (void)testShiftLeft50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100110100100111" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:7];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11001101001001110000000", @"Shift left test 50 failed");
}

- (void)testShiftLeft51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011011101110110010111010101101001111110101011110001110111111" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:36];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100011011101110110010111010101101001111110101011110001110111111000000000000000000000000000000000000", @"Shift left test 51 failed");
}

- (void)testShiftLeft52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"123375231431561" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:65];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"515765146146704000000000000000000000", @"Shift left test 52 failed");
}

- (void)testShiftLeft53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6127b96811df87bca54" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:93];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"c24f72d023bf0f794a800000000000000000000000", @"Shift left test 53 failed");
}

- (void)testShiftLeft54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2055014610116523" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:68];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"102640630404725140000000000000000000000", @"Shift left test 54 failed");
}

- (void)testShiftLeft55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"235753064546542744231765153303026" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:8];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"116765432263261362114772465541413000", @"Shift left test 55 failed");
}

- (void)testShiftLeft56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1309348" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:28];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"351475427442688", @"Shift left test 56 failed");
}

- (void)testShiftLeft57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:51];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"20266198323167232", @"Shift left test 57 failed");
}

- (void)testShiftLeft58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8a60beb65cdec031ad65679f8" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:78];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"22982fad9737b00c6b5959e7e00000000000000000000", @"Shift left test 58 failed");
}

- (void)testShiftLeft59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10011011111000010010000011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:31];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100110111110000100100000110000000000000000000000000000000", @"Shift left test 59 failed");
}

- (void)testShiftLeft60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011111011000101011100111011100000111110000001" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:30];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011111011000101011100111011100000111110000001000000000000000000000000000000", @"Shift left test 60 failed");
}

- (void)testShiftLeft61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:67];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"160000000000000000000000", @"Shift left test 61 failed");
}

- (void)testShiftLeft62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"142" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:29];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"610000000000", @"Shift left test 62 failed");
}

- (void)testShiftLeft63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000101000111100001011110111001111011110001111111101101" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:27];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000101000111100001011110111001111011110001111111101101000000000000000000000000000", @"Shift left test 63 failed");
}

- (void)testShiftLeft64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"44970" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:86];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3479385222916471935138351022080", @"Shift left test 64 failed");
}

- (void)testShiftLeft65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2222753" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:20];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"11113654000000", @"Shift left test 65 failed");
}

- (void)testShiftLeft66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101100011001011010011100001001011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:85];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1011000110010110100111000010010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 66 failed");
}

- (void)testShiftLeft67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"765550" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:95];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"37266400000000000000000000000000000000", @"Shift left test 67 failed");
}

- (void)testShiftLeft68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"657" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:28];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1536000000000", @"Shift left test 68 failed");
}

- (void)testShiftLeft69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"978" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:49];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"550565054446043136", @"Shift left test 69 failed");
}

- (void)testShiftLeft70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6716722367142730117675254503154" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:5];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"334735117346135404773652624146600", @"Shift left test 70 failed");
}

- (void)testShiftLeft71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5a39db096" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:92];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"5a39db09600000000000000000000000", @"Shift left test 71 failed");
}

- (void)testShiftLeft72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5137256736240317345626510550477" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:11];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"24575273571201475627132442642374000", @"Shift left test 72 failed");
}

- (void)testShiftLeft73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"23513663888" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:83];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"227410203103546464814398828974178304", @"Shift left test 73 failed");
}

- (void)testShiftLeft74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6101503611121579621758" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:23];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"51183122004283371787716132864", @"Shift left test 74 failed");
}

- (void)testShiftLeft75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"690b86f159901c5a57fdb" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:40];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"690b86f159901c5a57fdb0000000000", @"Shift left test 75 failed");
}

- (void)testShiftLeft76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1486b437" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1486b43700000000000", @"Shift left test 76 failed");
}

- (void)testShiftLeft77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2546236" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:72];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2546236000000000000000000000000", @"Shift left test 77 failed");
}

- (void)testShiftLeft78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"332657457424642525550452555044" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:60];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"33265745742464252555045255504400000000000000000000", @"Shift left test 78 failed");
}

- (void)testShiftLeft79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5635771152219" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:32];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"24205452786520842829824", @"Shift left test 79 failed");
}

- (void)testShiftLeft80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"51e987e6a9be" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:14];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"147a61f9aa6f8000", @"Shift left test 80 failed");
}

- (void)testShiftLeft81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1650341562444400530134571144" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:48];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"16503415624444005301345711440000000000000000", @"Shift left test 81 failed");
}

- (void)testShiftLeft82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100000001011101" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:44];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10000000101110100000000000000000000000000000000000000000000", @"Shift left test 82 failed");
}

- (void)testShiftLeft83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47313545277075620200053047247103" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:64];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"116627312576173440400126116516206000000000000000000000", @"Shift left test 83 failed");
}

- (void)testShiftLeft84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"401167605072515342063617714504" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:1];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1002357412165232704147437631210", @"Shift left test 84 failed");
}

- (void)testShiftLeft85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11688" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:7];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1496064", @"Shift left test 85 failed");
}

- (void)testShiftLeft86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"35604411" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:85];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"734110220000000000000000000000000000", @"Shift left test 86 failed");
}

- (void)testShiftLeft87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1766723676102535" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:47];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"7733517370412564000000000000000", @"Shift left test 87 failed");
}

- (void)testShiftLeft88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100001010010100011100111111010001010110010000111111101011110100011" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:7];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000010100101000111001111110100010101100100001111111010111101000110000000", @"Shift left test 88 failed");
}

- (void)testShiftLeft89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110100010001111001101110011100110101101100000110001000000110001101110000000001001110011001010" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:75];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110100010001111001101110011100110101101100000110001000000110001101110000000001001110011001010000000000000000000000000000000000000000000000000000000000000000000000000000", @"Shift left test 89 failed");
}

- (void)testShiftLeft90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"64608875869861588550" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:9];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"33079744445369133337600", @"Shift left test 90 failed");
}

- (void)testShiftLeft91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"122c6302a3" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:13];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2458c60546000", @"Shift left test 91 failed");
}

- (void)testShiftLeft92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"53beb72bf2" andRadix:16];
    JKBigInteger *result = [int1 shiftLeft:68];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"53beb72bf200000000000000000", @"Shift left test 92 failed");
}

- (void)testShiftLeft93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26334350266578242673019647" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"105337401066312970692078588", @"Shift left test 93 failed");
}

- (void)testShiftLeft94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"73" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:61];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"168326539672599658496", @"Shift left test 94 failed");
}

- (void)testShiftLeft95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3241898345167845301" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:3];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"25935186761342762408", @"Shift left test 95 failed");
}

- (void)testShiftLeft96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"24165963187100745927" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:34];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"415168086259750531254680813568", @"Shift left test 96 failed");
}

- (void)testShiftLeft97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"25622726052033150270465124676" andRadix:8];
    JKBigInteger *result = [int1 shiftLeft:15];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2562272605203315027046512467600000", @"Shift left test 97 failed");
}

- (void)testShiftLeft98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"42022325117497284983692" andRadix:10];
    JKBigInteger *result = [int1 shiftLeft:69];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"24805602458390050529974716514985830151880704", @"Shift left test 98 failed");
}

- (void)testShiftLeft99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11001110001001000010010010001110110011100011101111000000000101011010000010110000" andRadix:2];
    JKBigInteger *result = [int1 shiftLeft:35];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1100111000100100001001001000111011001110001110111100000000010101101000001011000000000000000000000000000000000000000", @"Shift left test 99 failed");
}

- (void)testShiftRight0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110000111001010111111110111000011011010000001111111000111100111101101100010011111111010011" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:12];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110000111001010111111110111000011011010000001111111000111100111101101100010011", @"Shift right test 0 failed");
}

- (void)testShiftRight1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"58121777652073464112619736" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:3];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"7265222206509183014077467", @"Shift right test 1 failed");
}

- (void)testShiftRight2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100111010001100000011000" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:75];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 2 failed");
}

- (void)testShiftRight3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111110110000100110011111010101011000110110011111100000001101111010" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:57];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"111110110", @"Shift right test 3 failed");
}

- (void)testShiftRight4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1010001011111110100100000110110100000100000010000100001001100111001011001101101100010001100" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:72];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010001011111110100", @"Shift right test 4 failed");
}

- (void)testShiftRight5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8965722795" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:94];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 5 failed");
}

- (void)testShiftRight6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13767381" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:50];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 6 failed");
}

- (void)testShiftRight7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"264333250603747456630" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:79];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 7 failed");
}

- (void)testShiftRight8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4b7c05e6cea6a3ad2647ff" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:65];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"25be02", @"Shift right test 8 failed");
}

- (void)testShiftRight9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"26351473472675118667184" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:23];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3141340431293859", @"Shift right test 9 failed");
}

- (void)testShiftRight10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"76fb0d" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:8];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"76fb", @"Shift right test 10 failed");
}

- (void)testShiftRight11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111001101001" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:24];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 11 failed");
}

- (void)testShiftRight12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"bcb62f" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:82];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 12 failed");
}

- (void)testShiftRight13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11111110001100110101101100010010110110110010011110010001110111101100110001010101101001000" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:43];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111111000110011010110110001001011011011001001", @"Shift right test 13 failed");
}

- (void)testShiftRight14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3362721802dea1da8" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:98];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 14 failed");
}

- (void)testShiftRight15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:64];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 15 failed");
}

- (void)testShiftRight16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:71];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 16 failed");
}

- (void)testShiftRight17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"a127" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:93];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 17 failed");
}

- (void)testShiftRight18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101010000010010010000001001110000000111010101110000001011011010010000011001001001" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:40];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110101000001001001000000100111000000011101", @"Shift right test 18 failed");
}

- (void)testShiftRight19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3044042436546746157777465" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:49];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5407305601", @"Shift right test 19 failed");
}

- (void)testShiftRight20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101001101011100111001001111111" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:1];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10100110101110011100100111111", @"Shift right test 20 failed");
}

- (void)testShiftRight21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"238c5bb201ab774d8a6ebc" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:7];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4718b7640356ee9b14dd", @"Shift right test 21 failed");
}

- (void)testShiftRight22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2c33331b387e3e2324" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:28];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2c33331b387", @"Shift right test 22 failed");
}

- (void)testShiftRight23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:91];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 23 failed");
}

- (void)testShiftRight24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7622c9" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:23];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 24 failed");
}

- (void)testShiftRight25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1153211527354074402711501276017" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:71];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2326423", @"Shift right test 25 failed");
}

- (void)testShiftRight26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4150461775703616743" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:27];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"4150461775", @"Shift right test 26 failed");
}

- (void)testShiftRight27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"58" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:64];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 27 failed");
}

- (void)testShiftRight28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"912660393911" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:13];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"111408739", @"Shift right test 28 failed");
}

- (void)testShiftRight29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4063541034" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:49];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 29 failed");
}

- (void)testShiftRight30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100000010101001001110001000000110101010100111111100110110100" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:68];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 30 failed");
}

- (void)testShiftRight31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16c2f" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:95];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 31 failed");
}

- (void)testShiftRight32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"16d73ed40a4f" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:51];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 32 failed");
}

- (void)testShiftRight33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7572775152667466000153074323263" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:49];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"367537646533363", @"Shift right test 33 failed");
}

- (void)testShiftRight34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"45701661" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:48];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 34 failed");
}

- (void)testShiftRight35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"59389bf1b324006a74cf55cd" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:88];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"59", @"Shift right test 35 failed");
}

- (void)testShiftRight36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1227013576014" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:19];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"513405", @"Shift right test 36 failed");
}

- (void)testShiftRight37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1f32e1a62da6792fbc1f" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:3];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3e65c34c5b4cf25f783", @"Shift right test 37 failed");
}

- (void)testShiftRight38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"170065647042603315643353326665" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 38 failed");
}

- (void)testShiftRight39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000110000000001011101111011000110001101011100100000101010000010100000101111001" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:50];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10001100000000010111011110110", @"Shift right test 39 failed");
}

- (void)testShiftRight40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"939856592024959796084394" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:44];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"53424661929", @"Shift right test 40 failed");
}

- (void)testShiftRight41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"76260" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:80];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 41 failed");
}

- (void)testShiftRight42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6288304551367801581916814105" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:56];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"87267756234", @"Shift right test 42 failed");
}

- (void)testShiftRight43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2695" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:86];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 43 failed");
}

- (void)testShiftRight44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"262621215631525610314446074031" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 44 failed");
}

- (void)testShiftRight45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100110000001001000011110100100111010110011111101110011011111111010000000110111111010101000" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:56];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"101001100000010010000111101001001110", @"Shift right test 45 failed");
}

- (void)testShiftRight46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3e0af7b136ad56a06a10f45bf" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:19];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"7c15ef626d5aad40d421", @"Shift right test 46 failed");
}

- (void)testShiftRight47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000111110111010110100101000100110010000100100111111110000111111010011111011101" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:15];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000111110111010110100101000100110010000100100111111110000111111", @"Shift right test 47 failed");
}

- (void)testShiftRight48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"97514868145130213" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:58];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 48 failed");
}

- (void)testShiftRight49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2d628d25" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:46];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 49 failed");
}

- (void)testShiftRight50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1345725263382493135448793012" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:88];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4", @"Shift right test 50 failed");
}

- (void)testShiftRight51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100010010001101010111000010010011100111010101100000111111111100001110000000000111" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:35];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000100100011010101110000100100111001110101011", @"Shift right test 51 failed");
}

- (void)testShiftRight52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1601674183742a7" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:50];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"58", @"Shift right test 52 failed");
}

- (void)testShiftRight53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10c380feaef9673370e" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:55];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"21870", @"Shift right test 53 failed");
}

- (void)testShiftRight54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"361e0ab462f9b8e4762315134" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:1];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1b0f055a317cdc723b118a89a", @"Shift right test 54 failed");
}

- (void)testShiftRight55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"18a3ea722b2e31" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:84];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 55 failed");
}

- (void)testShiftRight56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100110010101000010110" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:33];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 56 failed");
}

- (void)testShiftRight57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11110110100110010" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:33];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 57 failed");
}

- (void)testShiftRight58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"31436727771264317" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 58 failed");
}

- (void)testShiftRight59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"72339669695575784049" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:15];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2207631521471428", @"Shift right test 59 failed");
}

- (void)testShiftRight60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"949049542254205" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:19];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1810168346", @"Shift right test 60 failed");
}

- (void)testShiftRight61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"7ee7644" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:79];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 61 failed");
}

- (void)testShiftRight62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"85286431" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:83];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 62 failed");
}

- (void)testShiftRight63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"37825183719022841454012" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:49];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"67191023", @"Shift right test 63 failed");
}

- (void)testShiftRight64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5895969906966556608518" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:28];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"21964199494445", @"Shift right test 64 failed");
}

- (void)testShiftRight65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11100" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:61];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 65 failed");
}

- (void)testShiftRight66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29ba316" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:70];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 66 failed");
}

- (void)testShiftRight67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2017346" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:54];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 67 failed");
}

- (void)testShiftRight68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1628971175" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:29];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3", @"Shift right test 68 failed");
}

- (void)testShiftRight69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14b9e1" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:93];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 69 failed");
}

- (void)testShiftRight70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"35efa7d8bb821e0d" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:36];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"35efa7d", @"Shift right test 70 failed");
}

- (void)testShiftRight71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101011110001100011111101000110010111010000010001" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:34];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10110101111000110", @"Shift right test 71 failed");
}

- (void)testShiftRight72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"261161057050623535" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:31];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"13047042", @"Shift right test 72 failed");
}

- (void)testShiftRight73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101101001011111110101" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:26];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 73 failed");
}

- (void)testShiftRight74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100101110101000010000001011001010110110100010110010111111100000011001000011111100100011111" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:98];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 74 failed");
}

- (void)testShiftRight75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111100010011110101100010000001000001100101001001111100011110011010001100011110110110110111011110" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:15];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111100010011110101100010000001000001100101001001111100011110011010001100011110110", @"Shift right test 75 failed");
}

- (void)testShiftRight76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11100111001011" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:52];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 76 failed");
}

- (void)testShiftRight77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111010110001001000100001110100100011011111001001010110111101010" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:78];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 77 failed");
}

- (void)testShiftRight78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111111111101011110110100001000110000000000000011" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:5];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111111111111010111101101000010001100000000000", @"Shift right test 78 failed");
}

- (void)testShiftRight79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"75" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:94];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 79 failed");
}

- (void)testShiftRight80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111111001001011001100001100110110" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:26];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1111110", @"Shift right test 80 failed");
}

- (void)testShiftRight81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"54022146982841535359662" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:96];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 81 failed");
}

- (void)testShiftRight82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"427300413130205473675403545226" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:31];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"21354020545410263573", @"Shift right test 82 failed");
}

- (void)testShiftRight83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1730" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:32];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 83 failed");
}

- (void)testShiftRight84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1111110101110" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:60];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 84 failed");
}

- (void)testShiftRight85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2940698922548147911532" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:72];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 85 failed");
}

- (void)testShiftRight86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2173735504335332227" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:9];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2173735504335332", @"Shift right test 86 failed");
}

- (void)testShiftRight87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101011010101010101011110001010110101101111010011001000110100110011000001111" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:93];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"0", @"Shift right test 87 failed");
}

- (void)testShiftRight88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"28a0d49668" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:63];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 88 failed");
}

- (void)testShiftRight89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"767433023745101552073230" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:92];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"0", @"Shift right test 89 failed");
}

- (void)testShiftRight90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"880600877" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:67];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 90 failed");
}

- (void)testShiftRight91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000100011011001110001100111000000011101000100011001010011110111100010011011001011110001000011100" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:48];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1000100011011001110001100111000000011101000100011", @"Shift right test 91 failed");
}

- (void)testShiftRight92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"86943" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:55];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 92 failed");
}

- (void)testShiftRight93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"14804204019246751303950289" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:84];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"0", @"Shift right test 93 failed");
}

- (void)testShiftRight94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001010010010101110010011111111011110011000111100001010001000110111" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:10];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100101001001010111001001111111101111001100011110000101000", @"Shift right test 94 failed");
}

- (void)testShiftRight95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000001010110000010001101110" andRadix:2];
    JKBigInteger *result = [int1 shiftRight:5];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100000010101100000100011", @"Shift right test 95 failed");
}

- (void)testShiftRight96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"124453404772617613727221" andRadix:8];
    JKBigInteger *result = [int1 shiftRight:20];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"25112701176543742", @"Shift right test 96 failed");
}

- (void)testShiftRight97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"462eba" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:35];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"0", @"Shift right test 97 failed");
}

- (void)testShiftRight98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"332747767358821404027453956938" andRadix:10];
    JKBigInteger *result = [int1 shiftRight:61];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"144306340904", @"Shift right test 98 failed");
}

- (void)testShiftRight99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"67adcf599c558051" andRadix:16];
    JKBigInteger *result = [int1 shiftRight:20];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"67adcf599c5", @"Shift right test 99 failed");
}

- (void)testGCD0 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"360653554062321104754063306713030601050225371" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6603142356005" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 0 failed");
}

- (void)testGCD1 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"47043a7fb2c91e7cf576055a27b8f2b553ee32415564d5f4cf4a1fb72ea1948db8b97" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"57442082a33747ad37c729757320ef85b5baf15fac3a5174bc91eaee76fb18e9b658af7b391" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 1 failed");
}

- (void)testGCD2 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1054" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1275316227343157302705355456650666511176731257355716224656176433673060324516300676654046762" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2", @"GCD test 2 failed");
}

- (void)testGCD3 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"572616397217451697450539430985105401255" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"30687390190374602590977829660086250937358633452715873277114940" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5", @"GCD test 3 failed");
}

- (void)testGCD4 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"65028986485010681717558" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4331317" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 4 failed");
}

- (void)testGCD5 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10111100011011011110111011011011000011100101100011101100010100100000000010100110010110101100111000011001100100100010001101000001110001000000100100001101110111001000011111100011010011011111000011001001001000111110001100100000010000001110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1110001100001110101" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 5 failed");
}

- (void)testGCD6 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000111011011000010111100100001110001011101110101001010000100010010101110001100010000111000011010000000010001010010000010010101101001011010000000000110001100000110101110110110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 6 failed");
}

- (void)testGCD7 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2248751c6006da4ce54922fc8043" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a03542fd78e963c7422244212cfde47f68678b95b2c661be2d5a82e92190460c" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 7 failed");
}

- (void)testGCD8 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4541066575733270261623552450670634413636773417531652023607614432424541273036410557563567263" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"573772041521264731037523271500361353240546" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3", @"GCD test 8 failed");
}

- (void)testGCD9 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"17762200302726761215" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"527630000121710413406674076736000402655007025745" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3", @"GCD test 9 failed");
}

- (void)testGCD10 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4e84973feee24b3f711784d2d2c10cd6423b9f3573d015" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"67208868f73aa8ce7568b718aa96a2c10073cbfbfb4790837d1256821f71" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 10 failed");
}

- (void)testGCD11 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5422620035302423501057051544400472740225503477542114611575260171656550164146534246" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"665354122531664115771025006557626444266116151163424030753453722473" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 11 failed");
}

- (void)testGCD12 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"246454220555014534332707037765032610407220724471555140534552751055060763627502356241135041372425035" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"61400332010606537122177277616361262756550364352216262556230337305123622776171144112721216066" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"5", @"GCD test 12 failed");
}

- (void)testGCD13 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100111100101101110001101011011110000010000001100110000001010001111100110100011111111011000110010101111101100100001011110100111011000111010110100101010101011010011000100111001111111001011110010001011001" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101100001111011011000110100011011000111101001010111010000000101100110011000111101100101001011001011110010000011000001011100000011001100000110110010000000010011000101000000100001110110111110011001100000101111110000001010010110" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 13 failed");
}

- (void)testGCD14 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"6e5ec27b4ddc7fc4830f18cd05" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2ffe12df86c4e3eb27a92d1af0dfd995a4797109b29e17710d24318632e457271bf" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"39", @"GCD test 14 failed");
}

- (void)testGCD15 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"534104112022715130052720172063114433737740017506251743353" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"32664506541034233" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"3", @"GCD test 15 failed");
}

- (void)testGCD16 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"91859346270215684149324692755541180212941858816411009278219302496779240019938012295" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"5797423244396721434100785012129602823585966607198086942886760453750714443351820007642800291" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 16 failed");
}

- (void)testGCD17 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9bafb64c257064afd8416c04d18305f50a31de5a48a6a3918218a6448973674c7a8ca" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9ea86f43487c579261700e1adbeb2e0f95d" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 17 failed");
}

- (void)testGCD18 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"163059222731422871206982818182595132229724603986767779747849065766678923462963888654662" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"35131" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"19", @"GCD test 18 failed");
}

- (void)testGCD19 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"142751557122320347577370207464310654146775026706737232435365705164713433230526021" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"127610771061402715111057601054271507" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 19 failed");
}

- (void)testGCD20 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"36057150340711046104404030424717" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20237570625270670664064034447333552555276640171433427600716137073417" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 20 failed");
}

- (void)testGCD21 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110001111000000100100001110001110000100000100100111010101110001001111011100011000101010110000100110000100101110011010001100010" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"110", @"GCD test 21 failed");
}

- (void)testGCD22 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110110100110101110101001111010000000010001001000111001101111011011111001100000000100001011100011100110111100100111101101100001010111011011011101100100001111011001010110010000110010111001110001101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"110000001100001000000110111010110111010110010101011011011010001001100100101101101100010001100110110100111001101010100000011" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 22 failed");
}

- (void)testGCD23 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10100011001101101111110101101001001111000011101101010001111100110001011100011011000010000101001011101011010010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011001011100111010011010111110001001011001000100111111001011011101101111100010101101010100001000010101100001001100001000100110100110000000011111100111111010100110101011010110110111111110101101010010111100100010111011001011110110011010110011110100000101000100111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 23 failed");
}

- (void)testGCD24 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"51194818588325125548591475459379901393278169764107027411084392306298735195200919277" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"53795181415343" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 24 failed");
}

- (void)testGCD25 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"742019238211830282166295131184641928225" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"9159009730179073" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 25 failed");
}

- (void)testGCD26 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"56076a593cee145d2e96f27f877c6e56e9688cf407e3b080750a28e0e984" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10fbc45aba51982c0d01a65789d1e546ce0b77b5027912d068f4825f4c8271d0567bee9800" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4", @"GCD test 26 failed");
}

- (void)testGCD27 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"523fff5994869a6aeaded1d9785da7f73efcf7d04c0d0f2c6452ec99ea4ea" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"87469841355b1ba36ad6ef4ef3edd9248aa1e156f38f61703cea0bdca647c7c229e37df15a8990b" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3", @"GCD test 27 failed");
}

- (void)testGCD28 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2970308543579855538938446069528373223516205453035032" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"724880411712347786479309776744956047466664447234312299990505" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"13", @"GCD test 28 failed");
}

- (void)testGCD29 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1110101011001100110000010100111110110101110011011011001100100111101010000010000010111100011101110111011100001000111000111110010101011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111100001011000" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 29 failed");
}

- (void)testGCD30 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5781543817892047627479669928316689221565943909" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"64391075152573108653358320" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 30 failed");
}

- (void)testGCD31 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11c4fc156b47e1fd0e5065723f224" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2b5081907e8391f829444f4baf703ff2a22b28371fa20987462a07f04f814d75e5f3f8fbbffc09b60f" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 31 failed");
}

- (void)testGCD32 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011111111100001011100010000100111100010100000011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000011111011101110011" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 32 failed");
}

- (void)testGCD33 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"441b25eccb992b28e8a7ec39d87195a83f3b3c8d2b72b301" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"8f8a760f5e" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];

    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 33 failed");
}

- (void)testGCD34 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"101101001110010001000000011100010000000101100111101101100110010010001101010111100000100101100001001110110101011010111011000101111111101100100101000000101101011110110010111001111001000101001111111000001001110011000001111001100001111110101001010001011110111011010111001110111010111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11001011111010101000111110000000110011101110110011011001000001000001000100001010010011111011100010010100101001011000101100010100001000011111010000101001100110110011001001010101100110110100010101101110100110101011110001111110010110010000001100000111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11", @"GCD test 34 failed");
}

- (void)testGCD35 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"176543533714230300143332057760132342565317350147331725555473751017120714053374035065362621001225057701325575476" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2777664532114310375465640474672" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"46", @"GCD test 35 failed");
}

- (void)testGCD36 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100011111101000101110001000100111101001001101011000101110111001011110110101111110110001000110101011001100010011100110011101111000011111100110010011111101110111001111011010111101011000001000111100111100000100011101111101101000101110111010001100101000101001001001111001111101010101001010100011010010110111001000000111111000000000101111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10010011011101100010101010001101100011101110000" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 36 failed");
}

- (void)testGCD37 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"137457654162124641131042443400334404700570356033403576601177" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"234423161277552235661320464205447760507560751203736355301314474661177065434447271767" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 37 failed");
}

- (void)testGCD38 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"8048840590615499837892983259273089778843570718417119018196324809181" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"43404629818313135660969581013699" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 38 failed");
}

- (void)testGCD39 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"399361667571953448938291141830765420549828932517265336070537947927996834269083798" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"7" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 39 failed");
}

- (void)testGCD40 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"27ce8b914d4be3ad419f4e9c86c64c8a499886a2a686e00f605e221f94a6c83adf1d882e131a0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"51a494f0d138bbc" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4", @"GCD test 40 failed");
}

- (void)testGCD41 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1ab18614eeab9d7912ffebaa" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1231893ad1bc8172edca63d36ccd3622f431f389ceb9f27bdb3b" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3", @"GCD test 41 failed");
}

- (void)testGCD42 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110101010011000111101011100101011100000010010010001010100011110011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101010110111111001010101000111000111110100001000110101011101001111000110100011110000001001011010100101111010110011" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11", @"GCD test 42 failed");
}

- (void)testGCD43 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"455558363607870455750327086404163729341855580239410495149841014612" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4856504102451406211515310166749428011" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 43 failed");
}

- (void)testGCD44 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4884990086277656219" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"30945682929419" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 44 failed");
}

- (void)testGCD45 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"485374467377355733657334222903494539446897530038271" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"817984178612880507090788568072629" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 45 failed");
}

- (void)testGCD46 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1957921776226fabf2ad178fff3455b931d19b39b4ddd6bca6c424f5db05a509a6c" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4398433b8d68c9d391643dac2889f7791fba880ca7" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 46 failed");
}

- (void)testGCD47 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"35120bdd2745b47608898a06a5ec8ed1902f0" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3a7fb0eae2a58dd0815a187a95aaada5eb1c450a6b9552f28c51d1772c7b2b1358c4f01a6e6" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2", @"GCD test 47 failed");
}

- (void)testGCD48 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"72611162745013033774652664613537264234444637452011565514722265226046072211145733460" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"220622233721500245624063155322040131421351055765303" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 48 failed");
}

- (void)testGCD49 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"35705060577244116104124240701557245450421246661731043030245753" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6635171137234207000614225051477345263223335521140647343704750101471456520" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 49 failed");
}

- (void)testGCD50 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11101000100111010010111000110100000010011101001111001010111011111011011100110010001001000111101001100101100111111001100101100101101001001010111000100101111011000010101111101100101011101011111011001110011010100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11110100111110000101101011011010110010000000001110000100001" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 50 failed");
}

- (void)testGCD51 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"e7f2bb01c4" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"12492b7d0725e950b59aecfa36610a41252021395a1ec18aa62f5eb0a83" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 51 failed");
}

- (void)testGCD52 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a2963dce9f3582c7d144d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"c3b8f" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 52 failed");
}

- (void)testGCD53 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100000011011111000101100111000100110100010010110001111111110110101010111011000000000110101100110001110010000101001110101001101111011101111011101111011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010110100111101001001001100000100100" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 53 failed");
}

- (void)testGCD54 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"106357227237743" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"141634524567677642070553242402741464235370655612161542026026541161765567244061527300231032767750653310343374" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 54 failed");
}

- (void)testGCD55 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"10000011001101011111100111101010111001001101110011101011001011111010100001001001101100001001001100010000101010011001000001011111010100111011000001110001010010111010111111011101000000001001111100011110011001110010001011010101000100011000" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100111110111000101011111101111101111011010" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10", @"GCD test 55 failed");
}

- (void)testGCD56 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"9a57b6fb1ee8f7e21beb3129fec81248eb659ff58de8cecbf9512ede430fe42beb700186d76f07b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"15e580257bc99b091c2" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3", @"GCD test 56 failed");
}

- (void)testGCD57 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"542302766104733360533670050756575057656167" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"23640355" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"5", @"GCD test 57 failed");
}

- (void)testGCD58 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"55" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"a3dbcba7bceb78b502556ec95402b712ed98753033842363b88a8853138de9bca713866fb2babb6718" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 58 failed");
}

- (void)testGCD59 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"165344223842005797221993585130707508301640492630683397182363466512268454850100468" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"99047486890640922" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"2", @"GCD test 59 failed");
}

- (void)testGCD60 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5935ed8dd62b1b35543189895f" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"eaafcea57e" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3", @"GCD test 60 failed");
}

- (void)testGCD61 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1ec7e2dee9204" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"31a8a542ee4a59316e1b68081ca1a03137006a7ce846802b4054d457e457d" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 61 failed");
}

- (void)testGCD62 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1825856378714929504027978067627917728032773827926861347766691468187524105" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"34090265778679" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 62 failed");
}

- (void)testGCD63 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"43146564050221713476714341630520261776302377547515165700321554445" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"54031243350314573213560512754427625056515" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 63 failed");
}

- (void)testGCD64 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"143016337306423577240524321432503121705711007636131661541600032147732104163543775" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"266757017663157257325737740636726400212454640337055001155062102333212" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 64 failed");
}

- (void)testGCD65 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"172d73d82943b9d5878f39d350b0b66a1b58ccacf8" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1abebf5c7209e8468d646dd71d2b1046c" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"4", @"GCD test 65 failed");
}

- (void)testGCD66 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1001011011011000001001110100110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101000110011100100110111100000000010010010010100110100000001111100000000100011100101000" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10", @"GCD test 66 failed");
}

- (void)testGCD67 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3187295013124501295909185953801176140279688642136912235899507412911958576053852" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"88" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"4", @"GCD test 67 failed");
}

- (void)testGCD68 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101100000001011010000010111101001101011101110010110111011111011000101001110000101111001100110111001100011011000001100101010101110111110000110101111001110000000011" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"101010001101011111010000111010011001000010110011000100111111001011001001100101111111100011000000001110011010111100111111011001100100100000000000001111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 68 failed");
}

- (void)testGCD69 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"29eef98d5fcf059e5af220" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"2832490311adc96efd37fbc86a6957566cce2ff41" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 69 failed");
}

- (void)testGCD70 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"2239d94153753be74a5253e321151763ee3d27e2f4526344acd2b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"afde5eab9a385f9145a8cc02c70223b4e25ff2727c4752a34500238a5de796daf3ed0d4f93" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 70 failed");
}

- (void)testGCD71 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"33045624697760355" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"140683382831124637573633386790042466005156307356186854075363235964914" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"59", @"GCD test 71 failed");
}

- (void)testGCD72 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"18f253d71e5309209bbaa2e9012ce7d" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1bbdc63eb4dbb8cdea4eead7316f4e62ab8b85be4ae4832119a8f" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"11", @"GCD test 72 failed");
}

- (void)testGCD73 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1a34e3b5b82e28a92ea073938f656bccecc13d78d462e71bc21f1c113c6422b08ec079c51d4cd1b039" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"58791407653597570917ce8fb66bc935b09e2e5a21553e445e2c1c7bd8a97e31b76f3a45413e51f" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 73 failed");
}

- (void)testGCD74 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"67669208509087804251074458155182295113389587656053922646011273385440369" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"468950384022438262643990991565378727342893711139750361136129" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 74 failed");
}

- (void)testGCD75 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3170336753225716447175200405345117306755072723467623752136354" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"320013111106123124454234673140452423742740174435762564204710235422641510222066342776454165454011372564667730736" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"2", @"GCD test 75 failed");
}

- (void)testGCD76 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"20f943cdf8ef" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 76 failed");
}

- (void)testGCD77 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"3252220561617" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"3001422716024325050" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 77 failed");
}

- (void)testGCD78 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"901821818913138049699970468943838395793265433369634639746784294519843216933742272" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"41135233" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 78 failed");
}

- (void)testGCD79 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"a1069243022c78744b673a313d913d0f5b06f14b" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"157" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 79 failed");
}

- (void)testGCD80 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4eee12e6cd603e699b74715769f26858b077ff4dbdd7c503d4d1b5bdf5ab017" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"b30712172364ee0e166" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"3", @"GCD test 80 failed");
}

- (void)testGCD81 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"85659556440063263853061468533170851077462956746889409107025040623884135" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"210895074120884096023791819971545898381867957847355457402950040222940649" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 81 failed");
}

- (void)testGCD82 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"100101111110101111011010101110011001010100011010001000100100000010110000110011110010111000111101" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"111000100110011110000100001001100011010011101010001110111100110001001000000001" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 82 failed");
}

- (void)testGCD83 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"111011101001011010011100111110111111111101001100101110000111101010001111110011101100011000010100110100110001011000011101010000000001110010" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1010100011011000110111101111011001001011101101101000100010101010101010101110101000111011110111000101011100110100110001101110110101000001011111110000011010100101111110011101010011100100011010000010111111010101010000111100011101011101010010000101011110101011101010111011010011010001110000010" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"10", @"GCD test 83 failed");
}

- (void)testGCD84 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"13711266353060" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"420575120152042603037630620655" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 84 failed");
}

- (void)testGCD85 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"11011110001010101101111100011110000110010110011101101010011010100111111110010011001100110101010111100000110111000111001101001111010100100110010101000101000000101101001110100101001111100111010010100111110011001100000001001011001000010111110101111111000100001110010111100" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10011100111001100" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"100", @"GCD test 85 failed");
}

- (void)testGCD86 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"15030763202713525627073264060343674755260360671453303" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"624472512661325656713376451031102427000712532" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 86 failed");
}

- (void)testGCD87 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"110011000110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"11111001011000010000111110010111111110101111001100011100101001110110011101010110001011001000110000001111100000111101011011110100100101010011011001100010100111101110001100100101101001100110000111111010000100010000" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1010", @"GCD test 87 failed");
}

- (void)testGCD88 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1024005732107765175254074252712507573053154067711010403753647045154042436463075003606427106104640" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"4336667742033122460305353" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 88 failed");
}

- (void)testGCD89 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011001001001101010101100111011111111100001000111100001011011010010100010100111110000100001011001011000010010011101010100010010001101010100000011110011011001110001110100011111100100000110011101110001110100110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10101011111100111110111111111001010011000100011000010010110000111111101000111100010111111100001001011100101101110101111011010010101011010011001010000010100010011010101100001111011110111111000101100000010010110011001101110100010100000111000000110110100001010011100011111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"11", @"GCD test 89 failed");
}

- (void)testGCD90 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"60245697071842380552674071801347420655630001153523848707692862726090139766441207811653967695852662" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"558367382805788293543717214850226339714041666127865837403759" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"1", @"GCD test 90 failed");
}

- (void)testGCD91 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1101001111001000001010011010110010100111011010010100011010000100111001100001110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100101011011011110100001" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 91 failed");
}

- (void)testGCD92 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"27b720" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1a1ce4766f41345ffd79c248ac7d997aced4fd2581bfe2b09a16ee3760afadf5" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"1", @"GCD test 92 failed");
}

- (void)testGCD93 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"5430280790521950823444559210812100821938949930" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"26665029269224543435586963302400087717310268601209385" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"5", @"GCD test 93 failed");
}

- (void)testGCD94 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"71367706076725613066596920327099694884107236790333884680333700230920638733055" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"61102113441392168768507987827529402798520096548525781661784978599135559733303864328406852799693" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"3", @"GCD test 94 failed");
}

- (void)testGCD95 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"343e5830d990aa038c722e" andRadix:16];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"86a9fdbd42e" andRadix:16];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:16], @"2", @"GCD test 95 failed");
}

- (void)testGCD96 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"4474363312762370567113113" andRadix:8];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"6210311174644524133550166157702417543454550704135706104470766316244" andRadix:8];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:8], @"1", @"GCD test 96 failed");
}

- (void)testGCD97 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1011010101111000001000011111000010001101110101100100001001101010011111010010011110" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"100010111000101000110000000000001111000110010001111110111101000011011011100000111011111000110111101101010011000111111100110010011" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 97 failed");
}

- (void)testGCD98 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1254470883676390818684282" andRadix:10];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"58152259974" andRadix:10];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:10], @"6", @"GCD test 98 failed");
}

- (void)testGCD99 {
    JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"1000000011100000001110011100010101100011100000011111100101110100100010100000111111000001000110111" andRadix:2];
    JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"1000111111010101000000010110010100111010101011101110011100100010111010111" andRadix:2];
    JKBigInteger *result = [int1 gcd:int2];
    
    XCTAssertEqualObjects([result stringValueWithRadix:2], @"1", @"GCD test 99 failed");
}


@end
