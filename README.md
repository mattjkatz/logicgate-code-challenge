# LogicGate Software Engineering Internship Challenge

## Instructions

Run the sort.rb file.

```ruby sort.rb```

## Summary

I chose to do an initial sort of the data, first sorting all of the animals by their ```"barn"``` color, rather than going straight for sorting them into their final barns. I did this so that I could find the total number of barns per color that would be needed, that way I could evenly distribute the animals. If I got to attempt this challenge again with more time I would see if I could sort the animals into their final barns on the first pass of iterating through the data. If I could reduce the number of loops it would run more efficiently and handle larger datasets better.

## Overview

Please reach out to us with any questions you may have about requirements or project setup. It will not in any way affect how we grade your work sample.

You are NOT required to submit a full solution in order to be considered and your challenge reviewed. We are looking for how you think through and solve problems. See the grading section for other things we look for.

We want to respect the time you're taking to do this coding challenge, and also don't want to limit you to any specific time frame. Our estimation is that this may take between 2 and 4 hours.

## Setup

Your setup can be as simple or as complex as you like.

- It’s acceptable to set up a single simple file using JavaScript, Python, etc. - any language of your choice.

- It’s okay to import or copy entirely the animals.json object into another file but leave the animals.json file alone. 

- If you want to set up a project that uses a specific framework feel free to do so.



## The Assignment
LogicGate recently bought a farm that has many different colored barns containing an assortment of animals. Farmer Kunkel wants to keep the animals happy by putting them in their favorite color barns.

Using the animals.json file, distribute the animals into each barn by the color of the barn they are associated with. For example, a goat may be associated with the color green, so this goat can only be distributed to green barns. Barns have a maximum capacity of 4 animals per barn.

As an example, if there are 10 animals with the favorite color blue and 3 blue barns, there should be 4 in the first and second and 2 in the third. Output a valid JSON that describes the state of each barn. (See example JSON output below)

Your solution should still work even if more objects are added to the “livestock” array. We will be adding and removing objects from this array to ensure your solution still works. That includes adding animals and colors that may not be in the array currently. Your solution should be dynamic enough to account for this.

Try to make the transformation efficient, as you may have to manipulate a very large dataset.

Please describe all methods (functions) and any classes created with additional code comments.

As you complete the challenge, please take some time to write up some details regarding your general thought process (e.g. trade-offs you are choosing to make, what you would do if you had more time, how your code would perform against a larger dataset, and similar). Add this summary to the README file.

## Example output JSON format
An array of sorted barn objects.

```
[
  {"barn": "Barn_Green_1", "animals": ["Duck", “Cow”, “Sheep”, “Donkey”]},
  {"barn": "Barn_Green_2", "animals": ["Goat"]},
  {"barn": "Barn_Brown_1", "animals": ["Goat", "Duck"]}
]
```


## Grading

We will be using the following criteria for grading your submission. The criteria is ranked by order of importance. Here’s what we are looking for:

- Ability to follow specific instructions: you followed all instructions we provided.

- Organization/Naming: your code is easy to read and understand, variables and methods are clearly named, there is no or minimal repeated code.

- Communication: this is where your short write up detailing your process comes in.

- Code efficiency: you tried to manipulate the data using as few loops as possible and took a large dataset into consideration.


## Bonus

### Even Distribution
Improve efficiency at the farm by ensuring that the animals are evenly distributed across all barns. The distribution difference between each barn of the same color cannot be greater than one.

For example, if there are 10 animals with the favorite color blue and 3 blue barns, there should be 4 in the first and 3 in the second and third.

### Unit Tests
Create unit tests that validate your program's output. Aim for ~85% test coverage.

### Error/Edge Case Handling
- Handle a case where not every animal fits into a barn.

- Throw an exception and halt the program if the input JSON is not properly formatted.

## Submission
To submit this challenge, please edit the README file to include instructions on how to run the challenge.

After this, ZIP the challenge, upload it to Dropbox, Google Drive, or somewhere else, and send a link to the zip file to the person who sent you this.

You may also upload your project to GitHub and send that link.