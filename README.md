# flip_module1

Here are all the stuff that we need to do:

[0.5 points] Update the ImageModel class
to have all properties private, except the shared instance method (Edward currently doing)

[0.5 points] Update ImageModel class to pre-load all the UIImages and save them into an NSDictionary
(or NSMutableDictionary). The key in the dictionary will be the “name” and the value will be the UIImage.
This should happen the first time another class asks for an image. Note: you should hardcode the names of the images being loaded— do not try to load the names automatically from image.assets. (Edward finishes, pending testing)

[1 points] Modify or create class methods that will allow other classes to access the image names and the images by sending in a string or integer parameter ( i.e., the input to the method is the name of the image in the dictionary). Also add a method that returns the total number of images in the model. You should have something like the following for public methods. (Edward finishes, pending testing)

4.
Update the ViewController to use the new ImageModel class (if needed).
5.
Update the TableViewController to use the new model (if needed).
6.
Update the CollectionViewController to use the new model (if needed).
7.
Once all classes use the model properly (and everything compiles), test each view controller to be sure they function as expected.

[0.5 points] Add three additional images (six total) to the image.assets and load them using the ImageModel class (along with the other images). Note: Leave the image names hardcoded (Edward finishes, pending testing)

2. (edward currently doing)
Is this new implementation of the image model more efficient? Why or Why not?
3.
Is this implementation of the model more scalable? Why or Why not?
4.
If there were 1000 images in the image.assets file, what would you change in the implementation of the image model?
