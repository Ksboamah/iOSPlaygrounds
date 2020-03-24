/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let milesBiked: [Double] = [2, 45, 3.4, 56.5, 34, 26, 7, 5, 3.7, 9.1, 22.2, 35, 29, 70, 793.5, 82, 40, 28, 451, 19, 15, 3.5, 23.1, 32, 25]
print(milesBiked.count)
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func reachedGoalYet(dailyNumber: [Double]) {
    let goal: Double = 26
    for numbers in dailyNumber {
        if numbers < goal {
            let milesLeft = goal - numbers
            print("Sadly you haven't reached your goal yet. Only \(milesLeft) more miles to go. Better Luck Tomorrow!")
        } else if numbers > goal {
            let milesLeft = numbers - goal
            print("Wow you have outdone yourself. You passed your daily goal by \(milesLeft) miles.")
        } else if numbers == goal {
            print("Congratulations you have achieved your daily goal.")
        }
    }
}


//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
reachedGoalYet(dailyNumber: milesBiked)




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
