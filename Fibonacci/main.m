//
//  main.m
//  Fibonacci
//
//  Created by David Manuntag on 2015-01-14.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

int i;

int zero = 0;
int first = 1;
int second = 0;


//0 1 1 2 3 5 8 13 21 34 55

// using iteration

int fibonacci (int numbers) {
    
    for (i=3; i<=numbers; i++) {
        
        second = zero + first;
        zero = first;
        first = second;
    }
    
    return second;
}



// fibonacci recursion, pass by value


int recursiveValueFibonacci(int remainingSteps, int previousNumber, int previousPreviousNumber) {
    
    if (remainingSteps<=0) {
    
        NSLog(@"Fibonacci number has been found");
        return previousNumber;
        
    }
    
    int solution = recursiveValueFibonacci(remainingSteps-1, previousPreviousNumber, previousNumber+previousPreviousNumber);
    return solution;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int result = fibonacci(11);
        printf("%d", result);
        
        int result2 = recursiveValueFibonacci (6,0,1);
        printf("%d", result2);
        
    }
    return 0;
}
