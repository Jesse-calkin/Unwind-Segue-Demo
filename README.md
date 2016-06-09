# Unwind-Segue-Demo
Barebones demo of using unwind segues to prevent nasty navigation stacks

# Adding Unwind Segues

## Declare The Segue

In each `UIViewController` subclass that should support unwind segues(I've used the `RedViewController` here), an `IBAction` like the following should be added:

```
@IBAction func unwindToRedViewController(segue: UIStoryboardSegue) {}
```

The action doesn't need to do anything, it's just there to serve as an access point for storyboards and such.

## Connect The Segue

In this storyboard, we have two buttons with normal `show` segues going to two other view controllers.

## Choose Your Segue
