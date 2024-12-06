# Lung-Cancer-Image-Segmentation-Using-Morphological-Approach
MATLAB implementation of lung cancer image segmentation using morphological approaches. This repository demonstrates preprocessing and segmentation techniques leveraging dilation, erosion, and thresholding for identifying cancerous regions in lung CT images. Suitable for medical image analysis and academic research.

# Overview
Segmentation is a critical step in medical imaging for diagnosing lung cancer. This project employs morphological operations to process CT images, enhancing the accuracy and efficiency of detecting abnormalities. The technique is robust, computationally efficient, and can serve as a foundational approach for further advanced segmentation tasks.

# Key Features:

1. Preprocessing of input CT scan images.
2. Application of morphological operations (erosion, dilation, opening, and closing).
3. Lung region extraction and noise reduction.
4. Segmentation and visualization of potential cancerous regions.

# Prerequisites
Before running the code, ensure the following:

1. MATLAB: Version R2016b or later is recommended.
2. Image Processing Toolbox: Required for operations like morphological filtering and image enhancement.

# Workflow
1. Image Input:
      Load a CT scan image (in .png, .jpg, or .dcm formats).
   
2. Preprocessing:
    Convert the image to grayscale (if necessary).
    Apply image enhancement techniques (e.g., histogram equalization).
   
3. Morphological Processing:
      Perform morphological operations such as erosion, dilation, opening, and closing.
      Extract the lung regions by thresholding and noise removal.
   
5. Segmentation:
     Identify suspicious regions (potential nodules) based on intensity and size.
   
6. Visualization:
      Display the segmented lung regions and highlight potential cancerous areas.

# Referances

1.  Gonzalez R C and Woods R E 2008 Digital Image Processing.
2.  Enio (2024). Region Growing - Segmentation (https://www.mathworks.com/matlabcentral/fileexchange/50782-region-growing-segmentation), MATLAB Central File Exchange. Retrieved December 
    6, 2024.


