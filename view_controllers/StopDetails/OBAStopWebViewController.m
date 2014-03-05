//
//  OBAStopWebViewController.m
//  org.onebusaway.iphone
//
//  Created by Aengus McMillin on 2/12/14.
//  Copyright (c) 2014 OneBusAway. All rights reserved.
//

#import "OBAStopWebViewController.h"

@interface OBAStopWebViewController ()

@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) NSURL *url;

@end

@implementation OBAStopWebViewController

- (id)initWithURL:(NSURL*)url {
    self = [super init];
    if (self) {
        _url = url;
    }
    return self;
}

- (void)loadURL {
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.url]];
}

- (void)loadView {
    self.view = self.webView;
    [self loadURL];
}

- (UIWebView*)webView {
    if(!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _webView.delegate = self;
        _webView.scalesPageToFit = YES;
    }
    return _webView;
}

@end
