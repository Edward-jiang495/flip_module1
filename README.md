# Flip Module 1
## Review Questions
Group: Edward Jiang and Nathan Gage  

---

### 1. Is this new implementation of the image model more efficient? Why or Why not?

This new image model is more efficient than the old one because dictionary has a faster access speed than arrays. To search for a image with specific name in an array, the operation takes O(n) runtime since it needs to loop through the entire array, but with dictionary, the runtime is constant O(1).
The get image by index method has approximately the same runtime in both. In the old version all we do it getting the image at index i, which is O(1). For the new version, we access the name first by index, which is O(1), then we use the name to access the image in the dictionary which is also O(1). In this case the dictionary only have a slightly more runtime than array. However, we are able to reduce the operations for accessing images by name by a factor of n.

### 2. Is this implementation of the model more scalable? Why or Why not?

This new implementation of the image model is more scalable compared to the older version of it. In the old version, the runtime O(n) increases as the number of images increases; however, the new version that uses dictionary will have a constant runtime O(1) regardless of the number of images. Therefore, the new image model will not have performance issue once the number of images increase, but the old version will.

### 3. If there were 1000 images in the image.assets file, what would you change in the implementation of the image model?

I will change the model to load images from the assets file automatically instead of hardcoding the names. Hardcoding 1000 image names is time-consuming. 