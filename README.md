# Pre-work - *Tipped*

**Tipped** is a tip calculator application for iOS.

Submitted by: **Cody Meshberger**

Time spent: **1.5** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] Add a cleaner UI to make the app for visually appealing

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/C0dymesh/Tipped/blob/master/Tippy%20Tip%20Calculator.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** 
The iOS development platform takes a while to get used to, but considering me being completely new to iOS development with Swift, the process of creating apps is quite straightforward and easy to understand after a little trial and error. I really enjoy how simple it is to connect objects and controls to the code using the control click method to connect the storyboard to the corresponding swift files. When looking at how to describe outlets and actions to another developer I would say that Outlets are a way for you to change one of the many properties of an object/control and the actions are used when you want to detect some sort of trigger that the control can call to run some code behind the scenes.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**
Since modern iOS development supports Automatic Reference Counting for memory management, if the developer wants to access properties from an instance that was previous present they would need to make a "strong" reference to it so it does not go away. For ARC to make sure that it correctly gets rid of instances it no longer needs, it keeps track of references that made to each other and are called "strong". So to help ARC know what it should and shouldn't keep the developer can manually set instances related to each other user a referred as "strong". As long as this reference remains, ARC will not deallocate it. The way you get a strong reference cycle for closures is by setting your instances to a class and assigning it some value for one of its corresponding variables. Now that there is at least one "strong" reference, ARC will not deallocate it. ARC will only destroy the instances when all of the "strong" relationships are broken, thus allowing it to know that you no longer need the instances for further work within the code. Creating these strong references allow for your code to run smoothly and avoid crashes while also helping the system with memory management. 

## License

    Copyright 2017 Cody Meshberger

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.