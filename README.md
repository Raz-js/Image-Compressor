# Image Compressor (By Raz)
###### This is a simple image compression tool built using Delphi (RAD Studio). It allows users to open an image, compress it, and save the compressed version. The program supports JPEG and PNG formats and preserves transparency for PNG images.

<p align="center"> <img src="https://i.ibb.co/6Jp4vV1L/compressor.png" align="center" /> </p>

## How It Works
1. Opening an Image
-  The user clicks the <b>"Open Image"</b> button to select an image file (JPEG or PNG).

- The selected image is displayed in the <code>Image1</code> component.

- The file path of the selected image is stored for later use.

2. Compressing the Image
- The user clicks the <b>"Compress Image"</b> button to compress the image.

- For <b>PNG</b> images:

  * The image is loaded into a <code>TPngImage</code> component, which preserves transparency.

  * The compressed image is displayed in the <code>Image2</code> component.

- For <b>JPEG</b> images:

  * The image is loaded into a <code>TJPEGImage</code> component, and the compression quality is adjusted based on the <code>TrackBar</code> value.

  * The compressed image is displayed in the <code>Image2</code> component.

3. Saving the Compressed Image
- The user clicks the <b>"Save Image"</b> button to save the compressed image.

- The compressed image is saved with the original file name appended with <code>-compressed</code> (e.g., <code>image-compressed.png</code>).

- The image is saved directly from the <code>TPicture</code> component, which ensures that the file size is reduced by re-encoding the image.

## How File Size is Reduced
1. Direct Re-encoding
- When the image is saved, it is re-encoded directly from the <code>TPicture</code> component. This process removes unnecessary metadata and optimizes the image structure, resulting in a smaller file size.

2. Compression for JPEG
- For JPEG images, the <code>CompressionQuality</code> property of the <code>TJPEGImage</code> component is used to adjust the quality. Lower quality values result in smaller file sizes but may reduce image clarity.

3. Transparency Preservation for PNG
- For PNG images, the <code>TPngImage</code> component is used to preserve transparency. The image is saved without altering its transparency, but the file size is reduced by re-encoding the image.

## Features
- <b>Supports JPEG and PNG Formats</b>: The program can handle both JPEG and PNG images.

- <b>Preserves Transparency</b>: PNG images retain their transparency during compression.

- <b>Adjustable Compression Quality</b>: For JPEG images, the compression quality can be adjusted using the <code>TrackBar</code>.

- <b>Simple and Easy to Use</b>: The user interface is straightforward, with buttons for opening, compressing, and saving images.

## Limitations
- <b>No Advanced Compression</b>: The program does not use advanced compression algorithms (e.g., <code>pngquant</code> or <code>OptiPNG</code>), so the file size reduction for PNG images may be limited.

- <b>Quality vs. File Size Trade-off</b>: For JPEG images, reducing the compression quality may result in a loss of image clarity.

## How to Use
1. <b>Open an Image</b>:

  * Click the <b>"Open Image"</b> button and select an image file (JPEG or PNG).

2. <b>Compress the Image</b>:

  * Click the <b>"Compress Image"</b> button to compress the image.

  * For JPEG images, adjust the compression quality using the <code>TrackBar</code>.

3. <b>Save the Compressed Image</b>:

  * Click the <b>"Save Image"</b> button to save the compressed image.

  * The compressed image will be saved with the original file name appended with <code>-compressed</code>.

## Code Overview
### Key Components
- <code>Image1</code>: Displays the original image.

- <code>Image2</code>: Displays the compressed image.

- <code>TrackBar1</code>: Adjusts the compression quality for JPEG images.

- <code>FOriginalFileName</code>: Stores the file path of the original image.

- <code>FCompressedImage</code>: Stores the compressed image as a <code>TPicture</code> object.

### Key Functions
- <code>btnOpenImageClick</code>: Opens an image file and loads it into <code>Image1</code>.

- <code>btnCompressImageClick</code>: Compresses the image and displays it in <code>Image2</code>.

- <code>btnSaveImageClick</code>: Saves the compressed image to a file.

- <code>TrackBar1Change</code>: Updates the label to display the current compression quality.

## Future Improvements
- <b>Add Advanced Compression</b>: Integrate external libraries (e.g., <code>pngquant</code> or <code>OptiPNG</code>) for better PNG compression.

- <b>Support More Formats</b>: Add support for additional image formats (e.g., BMP, GIF).

- <b>Batch Processing</b>: Allow users to compress multiple images at once.

