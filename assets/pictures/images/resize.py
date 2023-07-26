from PIL import Image

# Open the image file
with Image.open('backimg.jpg') as img:
    # Get the original size of the image
    width, height = img.size
    
    # Calculate the new size of the image (5 times smaller)
    new_width = width // 2
    new_height = height // 2
    
    # Resize the image to the new size
    resized_img = img.resize((new_width, new_height))
    
    # Save the resized image to a new file
    resized_img.save('backimg2.jpg')
