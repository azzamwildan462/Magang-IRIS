#include <iostream>
#include <vector>
#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "opencv2/opencv.hpp"
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "bismillah_fp/koordinat_bola.h"

using namespace std;
using namespace cv;

class posisi
{
private:
    int64_t x, y;

public:
    void setPosisi(int64_t x, int64_t y)
    {
        this->x = x;
        this->y = y;
    }
    void getPosisi(int64_t *x, int64_t *y)
    {
        *x = this->x;
        *y = this->y;
    }
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "kamera");
    ros::NodeHandle handler;
    bismillah_fp::koordinat_bola koordinat_bola;
    ros::Publisher pub1 = handler.advertise<bismillah_fp::koordinat_bola>("kirim_koordinat_bola", 256);
    posisi bola;

    int lowh = 0, lows = 9, lowv = 241, highh = 68, highs = 246, highv = 255;
    // namedWindow("treshold setting");

    // createTrackbar("low_hue", "treshold setting", &lowh, 179);
    // createTrackbar("high_hue", "treshold setting", &highh, 179);
    // createTrackbar("low_saturation", "treshold setting", &lows, 255);
    // createTrackbar("high_saturation", "treshold setting", &highs, 255);
    // createTrackbar("low_value", "treshold setting", &lowv, 255);
    // createTrackbar("high_value", "treshold setting", &highv, 255);

    while (1)
    {
        Mat gambar_asli;
        gambar_asli = imread("/home/wildan/projek/bismillah magang IRIS 2021/FP/src/bismillah_fp/gambar/case-1.png");
        // gambar_asli = imread("src/bismillah_fp/gambar/case-1.png");

        Mat gambar_terresize;
        resize(gambar_asli, gambar_terresize, Size(600, 400));

        Mat gambar_hsv;
        cvtColor(gambar_terresize, gambar_hsv, COLOR_BGR2HSV);

        Mat gambar_tersaring;
        inRange(gambar_hsv, Scalar(lowh, lows, lowv), Scalar(highh, highs, highv), gambar_tersaring);

        Mat hasil_dari_kontur;
        vector<vector<Point>> kontur_yang_didapat;
        vector<Vec4i> hirarki_kontur;

        findContours(gambar_tersaring, kontur_yang_didapat, hirarki_kontur, RETR_TREE, CHAIN_APPROX_SIMPLE);

        for (int i = 0; i < kontur_yang_didapat.size(); i++)
        {
            vector<Point> kontur_baru = kontur_yang_didapat[i];
            Point2f koor_bola;
            float radius;
            minEnclosingCircle(kontur_baru, koor_bola, radius);
            if (radius > 20 && radius < 90)
            {
                // cout << "x: " << koor_bola.x << endl;
                // cout << "y: " << koor_bola.y << endl;
                // koordinat_bola.x = koor_bola.x;
                // koordinat_bola.y = koor_bola.y;
                bola.setPosisi(koor_bola.x, koor_bola.y);
                bola.getPosisi(&koordinat_bola.x, &koordinat_bola.y);
                pub1.publish(koordinat_bola);
                // circle(gambar_terresize, koor_bola, radius, Scalar(255, 0, 0), 3);
            }
        }

        // imshow("tes", gambar_terresize);

        if (waitKey(1) == 97)
        {
            break;
        }
    }
    return 0;
}