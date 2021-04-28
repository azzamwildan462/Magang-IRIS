#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dasar_ros/pesan_saya.h"

ros::Publisher pub11, pub12;
ros::Subscriber sub1, sub2;

ros::Timer ini_timer, timer2;

void publish1(const ros::TimerEvent &timer)
{
    dasar_ros::pesan_saya Dyna;
    Dyna.nama = "RRQ Dyna";
    Dyna.nrp = "082278761243";
    Dyna.ipk = 3.55;
    pub11.publish(Dyna);
}
void publish2(const ros::TimerEvent &timer)
{
    dasar_ros::pesan_saya Budi;
    Budi.nama = "EVOS Jess no Budi";
    Budi.nrp = "509245781274";
    Budi.ipk = 0.12;
    pub12.publish(Budi);
}

void subs1(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("%s", msg->data.c_str());
}

void subs2(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("%s", msg->data.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Node1");
    ros::NodeHandle handler;
    ros::MultiThreadedSpinner spinner;
    ini_timer = handler.createTimer(ros::Duration(0.03), publish1);
    pub11 = handler.advertise<dasar_ros::pesan_saya>("Beri_data_Dyna", 1000);
    timer2 = handler.createTimer(ros::Duration(0.03), publish2);
    pub12 = handler.advertise<dasar_ros::pesan_saya>("Beri_data_Budi", 1000);
    sub1 = handler.subscribe("Hasil_Dyna", 1000, subs1);
    sub2 = handler.subscribe("Hasil_Budi", 1000, subs2);
    spinner.spin();

    return 0;
}