#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <sl/Camera.hpp>

cv::Mat slMat2cvMat(sl::Mat& input);

int main(int argc, char** argv) {
    // Create zed camera
    sl::Camera zed;

    // init config params
    sl::InitParameters init_parameters;
    init_parameters.camera_resolution = sl::RESOLUTION::HD720; // Use HD720 opr HD1200 video mode, depending on camera type.
    init_parameters.coordinate_units = sl::UNIT::METER;
    init_parameters.camera_fps = 30; // Set fps at 30

    // open cam stream
    auto returned_state = zed.open(init_parameters);
    if (returned_state != sl::ERROR_CODE::SUCCESS) {
        std::cout << "Error " << returned_state << ", exit program." << std::endl;
        zed.close();
        return EXIT_FAILURE;
    }

    // capture 50 frames
    const int NUM_FRAMES_CAPTURE = 100;
    int i = 0;

    sl::RuntimeParameters runtime_params;
    sl::Resolution image_sz = zed.getCameraInformation().camera_configuration.resolution;
    int half_width = image_sz.width / 2;
    int half_height = image_sz.height / 2;
    sl::Resolution new_image_size(half_width, half_height);

    // sl::Mat image(zed.getResolution(), sl::MAT_TYPE::U8_C4);
    sl::Mat image_zed(half_width, half_height, sl::MAT_TYPE::U8_C4);
    cv::Mat image_ocv = slMat2cvMat(image_zed);          // image_zed & image_ocv share the same mem ptr


    // while(i < NUM_FRAMES_CAPTURE) {
    char keystroke = ' '; 
    while(keystroke != 'q') {
        returned_state = zed.grab();

        if (returned_state  == sl::ERROR_CODE::SUCCESS) {
            // left cam img
            zed.retrieveImage(image_zed, sl::VIEW::LEFT, sl::MEM::CPU, new_image_size);

            // convert to OpenCV Mat w/ sl::Mat data
            // cv::Mat image_ocv = slMat2cvMat(image);
            if (image_ocv.empty()) {
                std::cout<< "Warning: could not read zed img Mat as OpenCV Mat!\n";
                return 1;
            }

            // Display the image resolution and its acquisition timestamp
            std::cout<<"Image resolution: "<< image_zed.getWidth()<<"x"<<image_zed.getHeight() 
                     <<" || Image timestamp: "<<image_zed.timestamp.data_ns<<std::endl;
            
            cv::imshow("dispaly", image_ocv);
            keystroke = cv::waitKey(10);
            // i++;
        }
    }

    // close camera
    zed.close();
    return EXIT_SUCCESS;
}

// Mapping between MAT_TYPE and CV_TYPE
int getOCVtype(sl::MAT_TYPE type) {
    int cv_type = -1;
    switch (type) {
        case sl::MAT_TYPE::F32_C1: cv_type = CV_32FC1; break;
        case sl::MAT_TYPE::F32_C2: cv_type = CV_32FC2; break;
        case sl::MAT_TYPE::F32_C3: cv_type = CV_32FC3; break;
        case sl::MAT_TYPE::F32_C4: cv_type = CV_32FC4; break;
        case sl::MAT_TYPE::U8_C1: cv_type = CV_8UC1; break;
        case sl::MAT_TYPE::U8_C2: cv_type = CV_8UC2; break;
        case sl::MAT_TYPE::U8_C3: cv_type = CV_8UC3; break;
        case sl::MAT_TYPE::U8_C4: cv_type = CV_8UC4; break;
        default: break;
    }
    return cv_type;
}

/**
* Conversion function between sl::Mat and cv::Mat
**/
cv::Mat slMat2cvMat(sl::Mat& input) {
    // Since cv::Mat data requires a uchar* pointer, we get the uchar1 pointer from sl::Mat (getPtr<T>())
    // cv::Mat and sl::Mat will share a single memory structure
    return cv::Mat(input.getHeight(), input.getWidth(), getOCVtype(input.getDataType()), input.getPtr<sl::uchar1>(sl::MEM::CPU), input.getStepBytes(sl::MEM::CPU));
}
