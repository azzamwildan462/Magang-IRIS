#include "ros/ros.h"
#include "bismillah_fp/target.h"
#include "bismillah_fp/koordinat_bola.h"

class pesan
{
private:
    int64_t koor_bola_x, koor_bola_y;
    int64_t target_sudut;
    int64_t kecepatan_x, kecepatan_y;
    int64_t kecepatan_teta;

public:
    pesan(int64_t target_sudut, int64_t kecepatan_x, int64_t kecepatan_y, int64_t kecepatan_teta)
    {
        if (target_sudut < 0)
        {
            this->target_sudut = 360 + target_sudut;
        }
        else
        {
            this->target_sudut = target_sudut;
        }
        this->kecepatan_x = kecepatan_x;
        this->kecepatan_y = kecepatan_y;
        this->kecepatan_teta = kecepatan_teta;
    }
    void setPosisiBola(int64_t xpos, int64_t ypos)
    {
        this->koor_bola_x = xpos;
        this->koor_bola_y = ypos;
    }
    void getAllValue(int64_t *koor_bola_x, int64_t *koor_bola_y, int64_t *target_sudut, int64_t *kecepatan_x, int64_t *kecepatan_y, int64_t *kecepatan_teta)
    {
        *koor_bola_x = this->koor_bola_x;
        *koor_bola_y = this->koor_bola_y;
        *target_sudut = this->target_sudut;
        *kecepatan_x = this->kecepatan_x;
        *kecepatan_y = this->kecepatan_y;
        *kecepatan_teta = this->kecepatan_teta;
    }
};

ros::Publisher pub;
ros::Subscriber sub;
ros::Timer timer;
pesan target_bola(-30, 2, 1, 1);

void proses_sub(const bismillah_fp::koordinat_bola::ConstPtr &msg)
{
    target_bola.setPosisiBola(msg->x, msg->y);
    // int64_t a, b;
    // int64_t q, w, e, r;
    // target_bola.getAllValue(&q, &w, &a, &e, &r, &b);
    // ROS_INFO("%f %f %d %f %f %d", q, w, a, e, r, b);
}

void proses_publish(const ros::TimerEvent &timer)
{
    bismillah_fp::target pesan_untuk_motor;
    int64_t target_sudut, kecepatan_teta;
    int64_t koor_bola_x, koor_bola_y, kecepatan_x, kecepatan_y;
    target_bola.getAllValue(&koor_bola_x, &koor_bola_y, &target_sudut, &kecepatan_x, &kecepatan_y, &kecepatan_teta);
    //ROS_INFO("%f %f %d %f %f %d", koor_bola_x, koor_bola_y, target_sudut, kecepatan_x, kecepatan_y, kecepatan_teta);
    pesan_untuk_motor.center_bola_x = koor_bola_x;
    pesan_untuk_motor.center_bola_y = koor_bola_y;
    pesan_untuk_motor.target_sudut = target_sudut;
    pesan_untuk_motor.kecepatan_x = kecepatan_x;
    pesan_untuk_motor.kecepatan_y = kecepatan_y;
    pesan_untuk_motor.kecepatan_teta = kecepatan_teta;
    pub.publish(pesan_untuk_motor);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pc");
    ros::NodeHandle handler;
    ros::MultiThreadedSpinner spinner;
    sub = handler.subscribe("kirim_koordinat_bola", 256, proses_sub);
    timer = handler.createTimer(ros::Duration(0.03), proses_publish);
    pub = handler.advertise<bismillah_fp::target>("jalankan_motor", 512);
    spinner.spin();

    return 0;
}