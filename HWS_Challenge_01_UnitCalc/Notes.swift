//
//  Notes.swift
//  HWS_Challenge_01_UnitCalc
//
//  Created by Guy on 1/18/21.
//

import Foundation


//MARK: Day 19 - Challenge Day

//Today you're going to face your first cahllenge day, which is a day where you're asked to build a completely new app from scratch using what you've learned so far. This might come as a surprise to you, because you may think you haven't learnedthat much so far. Well, let me explain...

//The 100 days of SwiftUI is the second 100 days curriculum I've written, adn while I know the original 100 days of Swift is extremely popular and helped a lot of people, I definitely felt afterwards "if I were to do it all again, heres what I'd change..."

//One of those things was going back and adding more virtual chats to the initial Swift days, to help folks really make the most of those fundamental. But the second change is one you're meeting today: I want to get you writing your own projects faster.

//In the original 100 Days folks completed the first project, then the second, then the third, and only then were they asked to write their own app from scratch. While that worked well enough, I realized in retrospect that going on to a second and third project without really having solidified the basics wasn't ideal.

//And that brings us to today: your first challenge day, where you're going to build a complete app from scratch. Don't worry: this project has specifically been chosen based on what you've learned so far, so everything you need to know was covered already in project 1.

//MARK: YOUR CHALLENGE

//You need to build an app that handles unit conversions: users will select an input unit and an output unit, then enter a value, and see the output of the conversion.

//Which units you choose are down to you, but you could choose one of these:

//--Temperature conversions: users choose Celcius, Fahrenheir, or Kelvin

//--Length conversion: users choose meters, kilometers, feet, yards, or miles.

//--Tim conversion: users choose seconds, munites, hours, or days.

//--Volume conversion: users choose millimeters, liters, cups, pints, or gallons.

//If you were going for length conversion, you might have:

//--A segmented control for meters, kilometers, feet, yard, or miles, for the input unit.

//--A second segemented control for meters, kilometers, feet, yard, or miles, for the output unit.

//--A text field where users enter a nummber

//--A text view showing the result of the conversion

//So, if you chose meters for a source unit and feet for output unit, the entered 10, you'd see 32.81 as the output.

//MARK: TIPS

//You already know everything you need to complete this project, but if you're hitting problems then I have some tips that might help.

//First, all our unit conversions are simple mathematics, but you shouldn't try to write conversions to go from every source unit to every other unit. A better idea is to convert the user's input to a single base unit, then conver from there to a target unit.

//So, rather than writing code to convert from liters to milliliters, and from liters to cus, and from liters to pints, and so on, a better idea is to convert the users input into milliliters (the lowest common denominator), then convert from there to whatever output unit they want.

//Even though you can absolutely complete this project using simple arithmetic, you might be interested to know that Apple does give us dedicated funtionality for doing unit conversion - see my article How to converts units using Unit and Measurement if you're curious. However, I should reiterate that it is not required to complete this project: you can convert from liters to pints, (for example) just by multiplying the input by 2.1138.

//As we have three user values here - their input number, thier input unit, and their output unit - you need to have three @State properties to store them all. You'll need a textfield plus two segmented controls, plus a text view to show your output, and that's about it.

//So, go ahead and get started now. Don't worry if you need to refer back to the WeSplit project - that's perfectly normal, and is all part of the learning process.

//Good lick! You can do this. And once you'rre don, tell other poeple, you've built another SwiftUI app, and this one was entirely degined by you.

//You should be proud of what you've accomplished.

