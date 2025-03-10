# Image Compressor (By Raz)
###### This is a simple image compression tool built using Delphi (RAD Studio). It allows users to open an image, compress it, and save the compressed version. The program supports JPEG and PNG formats and preserves transparency for PNG images.

## How It Works
1. Opening an Image
-  The user clicks the <b>"Open Image"</b> button to select an image file (JPEG or PNG).

- The selected image is displayed in the <code>Image1</code> component.

- The file path of the selected image is stored for later use.

2. Compressing the Image
- The user clicks the "Compress Image" button to compress the image.

- For PNG images:

  * The image is loaded into a TPngImage component, which preserves transparency.

  * The compressed image is displayed in the Image2 component.

- For JPEG images:

  * The image is loaded into a TJPEGImage component, and the compression quality is adjusted based on the TrackBar value.

  * The compressed image is displayed in the Image2 component.

3. Saving the Compressed Image
- The user clicks the "Save Image" button to save the compressed image.

- The compressed image is saved with the original file name appended with -compressed (e.g., image-compressed.png).

- The image is saved directly from the TPicture component, which ensures that the file size is reduced by re-encoding the image.

## How File Size is Reduced
1. Direct Re-encoding
- When the image is saved, it is re-encoded directly from the TPicture component. This process removes unnecessary metadata and optimizes the image structure, resulting in a smaller file size.

2. Compression for JPEG
- For JPEG images, the CompressionQuality property of the TJPEGImage component is used to adjust the quality. Lower quality values result in smaller file sizes but may reduce image clarity.

3. Transparency Preservation for PNG
- For PNG images, the TPngImage component is used to preserve transparency. The image is saved without altering its transparency, but the file size is reduced by re-encoding the image.

## Features
- Supports JPEG and PNG Formats: The program can handle both JPEG and PNG images.

- Preserves Transparency: PNG images retain their transparency during compression.

- Adjustable Compression Quality: For JPEG images, the compression quality can be adjusted using the TrackBar.

- Simple and Easy to Use: The user interface is straightforward, with buttons for opening, compressing, and saving images.

## Limitations
- No Advanced Compression: The program does not use advanced compression algorithms (e.g., pngquant or OptiPNG), so the file size reduction for PNG images may be limited.

- Quality vs. File Size Trade-off: For JPEG images, reducing the compression quality may result in a loss of image clarity.

## How to Use
1. Open an Image:

  * Click the "Open Image" button and select an image file (JPEG or PNG).

2. Compress the Image:

  * Click the "Compress Image" button to compress the image.

  * For JPEG images, adjust the compression quality using the TrackBar.

3. Save the Compressed Image:

  * Click the "Save Image" button to save the compressed image.

  * The compressed image will be saved with the original file name appended with -compressed.

## Code Overview
### Key Components
- Image1: Displays the original image.

- Image2: Displays the compressed image.

- TrackBar1: Adjusts the compression quality for JPEG images.

- FOriginalFileName: Stores the file path of the original image.

- FCompressedImage: Stores the compressed image as a TPicture object.

### Key Functions
- btnOpenImageClick: Opens an image file and loads it into Image1.

- btnCompressImageClick: Compresses the image and displays it in Image2.

- btnSaveImageClick: Saves the compressed image to a file.

- TrackBar1Change: Updates the label to display the current compression quality.

## Future Improvements
- Add Advanced Compression: Integrate external libraries (e.g., pngquant or OptiPNG) for better PNG compression.

- Support More Formats: Add support for additional image formats (e.g., BMP, GIF).

- Batch Processing: Allow users to compress multiple images at once.

