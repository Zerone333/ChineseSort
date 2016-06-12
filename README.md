# ChineseSort
中文排序

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;


@property (nonatomic, copy) NSString *pinYin;
@end


*需要排序的对象必须包含 ‘pinYin’ 属性，如上 Person类别需要添加该属性。

 Person *person1 = [[Person alloc] init];
    person1.name = @"你";
    person1.age = 44;
    
    Person *person2 = [[Person alloc] init];
    person2.name = @"n";
    person2.age = 4;
    
    Person *person3 = [[Person alloc] init];
    person3.name = @"啊bbbsdf";
    person3.age = 24;
    
    Person *person4 = [[Person alloc] init];
    person4.name = @"并不是对方了";
    person4.age = 14;
    
    Person *person5 = [[Person alloc] init];
    person5.name = @"你";
    person5.age = 44;
    
    Person *person6 = [[Person alloc] init];
    person6.name = @"8岁多福多寿";
    person6.age = 8;
    
    Person *person7 = [[Person alloc] init];
    person7.name = @"阿a方的";
    person7.age = 144;
    
    NSArray *persons = @[person1, person2, person3, person4, person5, person6, person7];
    
    NSArray *leterArray = [ChineseString IndexArray:persons sortKey:@"name"];
    
    NSArray *nameArray = [ChineseString LetterSortArray:persons sortKey:@"name"];
    
    NSLog(@"字母");
    for (NSString *leter in leterArray) {
        NSLog(@"%@", leter);
    }
    
    NSLog(@"对象排序");
    for (NSArray *persons in nameArray) {
        for (Person *person in persons) {
            NSLog(@"%@", person.name);
        }
    }
    
输出如下：

2016-06-12 20:10:57.126 汉字排序[2235:65383] 字母
2016-06-12 20:10:57.128 汉字排序[2235:65383] #
2016-06-12 20:10:57.130 汉字排序[2235:65383] A
2016-06-12 20:10:57.130 汉字排序[2235:65383] B
2016-06-12 20:10:57.131 汉字排序[2235:65383] N


2016-06-12 20:10:57.121 汉字排序[2235:65383] 对象排序
2016-06-12 20:10:57.131 汉字排序[2235:65383] 8岁多福多寿
2016-06-12 20:10:57.132 汉字排序[2235:65383] 啊bbbsdf
2016-06-12 20:10:57.132 汉字排序[2235:65383] 阿a方的
2016-06-12 20:10:57.132 汉字排序[2235:65383] 并不是对方了
2016-06-12 20:10:57.133 汉字排序[2235:65383] 你
2016-06-12 20:10:57.133 汉字排序[2235:65383] n
2016-06-12 20:10:57.133 汉字排序[2235:65383] 你

