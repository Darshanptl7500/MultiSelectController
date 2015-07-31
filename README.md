# MultiSelectController

MultiSelectController is useful for making multiple selection with see selection on the top of controller.

## Screenshot

![Example](https://raw.githubusercontent.com/Darshanptl7500/DPParallaxCell/master/Screenshot/example.png)

##How To Use

1. Download the repository and add the  files from MultiSelectController folder file in your project. 

```

    MultiSelectController *multiSelect =[storyboard instantiateViewControllerWithIdentifier:@"MultiSelectController"];
    multiSelect.delegate = self;
    multiSelect.multiSelectCellBackgroundColor =[UIColor colorWithRed:253.0/255.0 green:72.0/255.0 blue:47.0/255.0 alpha:1.0];
    
    NSMutableArray *arrOptions =[[NSMutableArray alloc] initWithArray:@[@"India",@"United States",@"Canada",@"Australia",@"United Kingdom",@"Philippines",@"Japan",@"Italy",@"Germany",@"Russia",@"Malaysia",@"France",@"Sweden",@"New Zealand",@"Singapore"]];
    
    multiSelect.arrOptions =arrOptions;
    
    multiSelect.leftButtonText = @"Cancel";
    multiSelect.leftButtonTextColor = [UIColor blackColor];
    
    multiSelect.rightButtonText = @"Apply";
    multiSelect.rightButtonTextColor = [UIColor blackColor];
    
    UINavigationController *navi =[[UINavigationController alloc] initWithRootViewController:multiSelect];
    
    [self.navigationController presentViewController:navi animated:YES completion:^{
        
        
    }];
	

```
you can see example  for more understanding.

##Compatibility

 - iOS 7.0+


##License
The MIT License (MIT)

Copyright (c) 2015 Darshan Patel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
