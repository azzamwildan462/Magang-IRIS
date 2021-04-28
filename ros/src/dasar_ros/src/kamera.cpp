#include <iostream>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

using namespace cv;
using namespace std;

int main()
{
    //pengambilan video dari webcam
    VideoCapture webcam("vidio/sampel.mp4");
    webcam.set(CAP_PROP_FRAME_WIDTH, 640);
    webcam.set(CAP_PROP_FRAME_HEIGHT, 360);

    //pembuatan trackbar
    namedWindow("treshold setting", WINDOW_AUTOSIZE);
    int lowh = 0, lows = 9, lowv = 241, highh = 68, highs = 246, highv = 255;

    //pembuatan slider pada trackbar
    createTrackbar("low_hue", "treshold setting", &lowh, 179);
    createTrackbar("high_hue", "treshold setting", &highh, 179);
    createTrackbar("low_saturation", "treshold setting", &lows, 255);
    createTrackbar("high_saturation", "treshold setting", &highs, 255);
    createTrackbar("low_value", "treshold setting", &lowv, 255);
    createTrackbar("high_value", "treshold setting", &highv, 255);

    while (1)
    {
        //pengambilan frame gambar dari video webcam
        Mat gambar_asli;
        webcam.read(gambar_asli);

        Size sz = gambar_asli.size();

        Mat resizeee;
        resize(gambar_asli, resizeee, Size(sz.width * 0.3, sz.height * 0.3));

        //pengubahan rgb ke hsv
        Mat hasil_berupa_hsv;
        cvtColor(resizeee, hasil_berupa_hsv, COLOR_BGR2HSV);

        //penyaringan
        Mat gambar_tersaring;
        inRange(hasil_berupa_hsv, Scalar(lowh, lows, lowv), Scalar(highh, highs, highv), gambar_tersaring);

        //pen canny an
        Mat ter_canny;
        Canny(gambar_tersaring, ter_canny, 46.0, 78.0, 3, 0);

        //pen-dilate an
        Mat gambar_dilate, kernel_untuk_dilate = getStructuringElement(MORPH_RECT, Size(5, 5));
        dilate(ter_canny, gambar_dilate, kernel_untuk_dilate);

        // //per_konturan
        Mat hasil_kontur;
        vector<vector<Point>> konturss;
        vector<Vec4i> hirarki;

        findContours(gambar_tersaring, konturss, hirarki, RETR_TREE, CHAIN_APPROX_SIMPLE);

        for (int i = 0; i < konturss.size(); i++)
        {
            vector<Point> kontur_baru = konturss[i];
            Point2f center_baru;
            float radius;
            minEnclosingCircle(kontur_baru, center_baru, radius);
            if (radius > 30 && radius < 70)
            {
                cout << "x = " << center_baru.x << endl;
                cout << "y = " << center_baru.y << endl;
                circle(resizeee, center_baru, radius, Scalar(0, 255, 0), 3);
            }
        }

        // imshow("hasil filter + canny dan dilate", gambar_dilate);
        // imshow("tes saring", gambar_tersaring);
        // imshow("aslir", gambar_asli);
        imshow("rsiadzer", resizeee);

        if (waitKey(1) == 27)
            break;
    }

    return 0;
}