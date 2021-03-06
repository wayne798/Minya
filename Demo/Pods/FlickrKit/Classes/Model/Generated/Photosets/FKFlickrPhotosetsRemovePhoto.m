//
//  FKFlickrPhotosetsRemovePhoto.m
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosetsRemovePhoto.h" 

@implementation FKFlickrPhotosetsRemovePhoto



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photosets.removePhoto";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photoset_id) {
		valid = NO;
		[errorDescription appendString:@"'photoset_id', "];
	}
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photoset_id) {
		[args setValue:self.photoset_id forKey:@"photoset_id"];
	}
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosetsRemovePhotoError_PhotosetNotFound:
			return @"Photoset not found";
		case FKFlickrPhotosetsRemovePhotoError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosetsRemovePhotoError_PhotoNotInSet:
			return @"Photo not in set";
		case FKFlickrPhotosetsRemovePhotoError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosetsRemovePhotoError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosetsRemovePhotoError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosetsRemovePhotoError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosetsRemovePhotoError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosetsRemovePhotoError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosetsRemovePhotoError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosetsRemovePhotoError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosetsRemovePhotoError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosetsRemovePhotoError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosetsRemovePhotoError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosetsRemovePhotoError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosetsRemovePhotoError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
