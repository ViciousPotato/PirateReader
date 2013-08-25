//
//  main.m
//  PirateReader
//
//  Created by zhou on 13-8-25.
//  Copyright (c) 2013年 zhou. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
  return macruby_main("rb_main.rb", argc, argv);
}
