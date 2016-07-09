//
//  ViewController.m
//  SamplePostMethod
//
//  Created by Owner on 7/5/16.
//  Copyright © 2016 Owner. All rights reserved.
//

#import "ViewController.h"

#define rootUrl @"http://203.162.13.103:6868/RegenService.asmx/"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableArray *str_query = [NSMutableArray arrayWithObjects:@"LogIn",@"LoginWithFacebook",@"LoginWithPhone",@"Register",@"RegisterWithPhone",@"RegisterWithFacebook",@"UpdateUserInfo",@"UpdateStatusBloodDonation",@"UpdateStatusBloodDonationWithLocation",@"FindAllDonorAround",@"UpdateLocationUserFindBlood",@"UpdateLocationUser",@"CheckEmail",@"CheckPhone",@"sendPasswordtoEmail",@"UploadImage",@"pushDeviceToken",@"getInfoUser",@"PushNotificationIOS",@"PushNotificationAll",@"pushNumberBadge",@"getNewsFeed",@"savePushNotification",@"getListPushNotification",@"pushDeviceTokenOsType", nil];
    
    //Cho params vao Array
    
    NSDictionary *paramsLogIn = @{@"email":@"duyhuytdh@gmail.com",@"password":@"123456"};
    NSDictionary *paramsLoginWithFacebook = @{@"facebookID":@"duyhuytdh@gmail.com"};
    NSDictionary *paramsLoginWithPhone = @{@"phone":@"1692011280",@"password":@"1692011280"};
    //ERROR FROM THIS LINE BELOW (THE PURPLE ONE)
    NSDictionary *paramsRegister = @{@"email":@"duyhuytdh@gmail.com",@"password":@"123456",@"mobile":@"01692011280",@"firstName":@"Duy",@"lastName":@"Huy",@"sex":@"true",@"address":@"Phu_Cu_Hung_Yen",@"longitudeX":@"105.493843",@"latitudeY":@"21.084938",@"identifyCard":@"145859846",@"bloodTypeId":@"1",@"avatar":@"http://203.162.13.103:6868/Image/10395526-62eb-4464-980b-145c8731965e.jpg"};
    
    
    
    NSDictionary *paramsRegisterWithPhone = @{@"password":@"1692011280",@"phone":@"1692011280"};
    NSDictionary *RegisterWithFacebook = @{@"facebookID":@"duyhuytdh@gmail.com",@"email":@"duyhuytdh@gmail.com",@"phone":@"01692011280"};
    NSDictionary *UpdateUserInfo = @{@"userID":@"69",@"email":@"duyhuytdh@gmail.com",@"password":@"123456",@"mobile":@"01692011280",@"firstName":@"Duy",@"lastName":@"Huy",@"sex":@"true",@"address":@"Phu_Cu_Hung_Yen",@"longitudeX":@"105.493843",@"latitudeY":@"21.084938",@"identifyCard":@"145859846",@"bloodTypeId":@"1",@"avatar":@"http://203.162.13.103:6868/Image/10395526-62eb-4464-980b-145c8731965e.jpg"};
    NSDictionary *UpdateStatusBloodDonation = @{@"userID":@"69",@"DonatingYN":@"true"};
    NSDictionary *UpdateStatusBloodDonationWithLocation = @{@"userID":@"69",@"DonationYN":@"true",@"Address":@"ChuaVanTri_TuLiem",@"latitudeX":@"21.055761",@"longitudeY":@"105.75336",@"DonatingYN":@"true"};
    NSDictionary *FindAllDonorAround = @{@"userID":@"69",@"latitudeY":@"21.055761",@"longitudeX":@"105.75336",@"bloodTypeID":@"1",@"radius":@"3.5"};
    NSDictionary *UpdateLocationUserFindBlood = @{@"userID":@"69",@"latitudeY":@"21.055761",@"longitudeX":@"105.75336",@"radius":@"3.5"};
    NSDictionary *UpdateLocationUser = @{@"userID":@"69",@"latitudeY":@"21.055761",@"longitudeX":@"105.75336"};
    NSDictionary *CheckEmail = @{@"email":@"duyhuytdh@gmail.com"};
    NSDictionary *CheckPhone = @{@"phoneNumber":@"01692011280"};
    NSDictionary *sendPasswordtoEmail = @{@"email":@"duyhuytdh@gmail.com"};
    NSDictionary *UploadImage = @{@"content":@"aHR0cHM6Ly93d3cuYmFzZTY0LWltYWdlLmRlLw=="};
    NSDictionary *pushDeviceToken = @{@"userID":@"69",@"deviceTokenID":@"1234"};
    NSDictionary *getInfoUser = @{@"userID":@"69"};
    NSDictionary *PushNotificationIOS = @{@"userID":@"69",@"deviceToken":@"1234"};
    NSDictionary *PushNotificationAll = @{@"userID":@"69",@"bloodTypeID":@"1",@"deviceToken":@"312"};
    NSDictionary *pushNumberBadge = @{@"userID":@"69",@"numBadge":@"123456"};
    NSDictionary *getNewsFeed = @{@"userID":@"69"};
    NSDictionary *savePushNotification = @{@"userID":@"69",@"bloodTypeID":@"1"};
    NSDictionary *getListPushNotification = @{@"userID":@"69"};
    NSDictionary *pushDeviceTokenOsType = @{@"userID":@"69",@"deviceTokenID":@"1234",@"osType":@"IOS"};
    
    
    NSMutableArray *params = [NSMutableArray arrayWithObjects:paramsLogIn,paramsLoginWithFacebook,paramsLoginWithPhone,paramsRegister,paramsRegisterWithPhone,RegisterWithFacebook,UpdateUserInfo,UpdateStatusBloodDonation,UpdateStatusBloodDonationWithLocation,FindAllDonorAround,UpdateLocationUserFindBlood,UpdateLocationUser,CheckEmail,CheckPhone,sendPasswordtoEmail,UploadImage,pushDeviceToken,getInfoUser,PushNotificationIOS,PushNotificationAll,pushNumberBadge,getNewsFeed,savePushNotification,getListPushNotification,pushDeviceTokenOsType, nil];
    
    //Gui request
    
    for(NSInteger i = 0;i<[str_query count];i++)
    {
        //Nha cua sever
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@",rootUrl,[str_query objectAtIndex:i]]]];
    
        // Specify that it will be a POST request
    
        request.HTTPMethod = @"POST";
    
        // This is how we set header fields
        if(i==0){
            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            [request setHTTPMethod:@"POST"];
        }
        [request setHTTPBody:[self httpBodyForParamsDictionary:[params objectAtIndex:i]]];
    
    // Create url connection and fire request
    //NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:nil error:nil];
    NSLog(@"API %@",[str_query objectAtIndex:i]);
    NSLog(@"Response: %@",[[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding]);
    }
}
    // Do any additional setup after loading the view, typically from a nib.

- (NSData *)httpBodyForParamsDictionary:(NSDictionary *)paramDictionary
{
    NSMutableArray *parameterArray = [NSMutableArray array];
    
    [paramDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSString *obj, BOOL *stop) {
        NSString *param = [NSString stringWithFormat:@"%@=%@", key, [self percentEscapeString:obj]];
        [parameterArray addObject:param];
    }];
    
    NSString *string = [parameterArray componentsJoinedByString:@"&"];
    
    return [string dataUsingEncoding:NSUTF8StringEncoding];
}


- (NSString *)percentEscapeString:(NSString *)string
{
    NSString *result = CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                 (CFStringRef)string,
                                                                                 (CFStringRef)@" ",
                                                                                 (CFStringRef)@":/?@!$&'()*+,;=",
                                                                                 kCFStringEncodingUTF8));
    return [result stringByReplacingOccurrencesOfString:@" " withString:@"+"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
