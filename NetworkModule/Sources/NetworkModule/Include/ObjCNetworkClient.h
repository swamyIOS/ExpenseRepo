//
//  Header.h
//  NetworkModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//

#ifndef Header_h
#define Header_h

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ObjCNetworkClientProtocol <NSObject>
- (void)getFromURL:(NSURL *)url
        completion:(void (^)(NSData * _Nullable data,
                             NSError * _Nullable error))completion;
@end

@interface ObjCNetworkClient : NSObject <ObjCNetworkClientProtocol>
@end

NS_ASSUME_NONNULL_END

#endif /* Header_h */
