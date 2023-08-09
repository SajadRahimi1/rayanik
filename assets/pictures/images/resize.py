from PIL import Image

# Open the image file
with Image.open('ui.png') as img:
    # Get the original size of the image
    width, height = img.size
    
    # Calculate the new size of the image (5 times smaller)
    new_width = 630
    new_height = int(height/(width/630))
    
    # Resize the image to the new size
    resized_img = img.resize((new_width, new_height))
    
    # Save the resized image to a new file
    resized_img.save('ui.png')
