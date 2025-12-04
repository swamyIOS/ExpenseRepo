//
//  ObjCNetworkClient.m
//  NetworkModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//

#import <Foundation/Foundation.h>
#import "ObjCNetworkClient.h"

@implementation ObjCNetworkClient

- (void)getFromURL:(NSURL *)url
        completion:(void (^)(NSData *, NSError *))completion {
    
    NSURLSessionDataTask *task =
    [[NSURLSession sharedSession] dataTaskWithURL:url
                                completionHandler:^(NSData *data,
                                                    NSURLResponse *response,
                                                    NSError *error) {
        completion(data, error);
    }];
    
    [task resume];
}

@end
