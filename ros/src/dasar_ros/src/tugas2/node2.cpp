#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dasar_ros/pesan_saya.h"
#include "dasar_ros/dua_dan_tiga.h"

ros::Publisher pub11, pub12;
ros::Subscriber sub1, sub2;

ros::Timer ini_timer, timer2;

// std_msgs::String hasil_dyna, hasil_budi;

void publish1(const ros::TimerEvent &timer)
{
    std_msgs::String hasil;
    hasil.data = "Dyna memang hebat";
    pub11.publish(hasil);
}
void publish2(const ros::TimerEvent &timer)
{
    dasar_ros::dua_dan_tiga data;
    data.tanya = "Gimana Dyna? Bagus nggak?";
    data.jawab = "Budi Noob nge-game terus dia";
    pub12.publish(data);
}

void subs1(const dasar_ros::pesan_saya::ConstPtr &msg)
{
    ROS_INFO("Diterima data dari node1: ");
    ROS_INFO("Nama: %s", msg->nama.c_str());
    ROS_INFO("NPR: %s", msg->nrp.c_str());
    ROS_INFO("IPK: %.02f", msg->ipk);
}

void subs2(const dasar_ros::dua_dan_tiga::ConstPtr &msg)
{
    ROS_INFO("Dari node3: %s", msg->jawab.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Node2");
    ros::NodeHandle handler;
    ros::MultiThreadedSpinner spinner;
    ini_timer = handler.createTimer(ros::Duration(0.03), publish1);
    pub11 = handler.advertise<std_msgs::String>("Hasil_Dyna", 1000);
    timer2 = handler.createTimer(ros::Duration(0.03), publish2);
    pub12 = handler.advertise<dasar_ros::dua_dan_tiga>("Tanya_Dyna", 1000);
    sub1 = handler.subscribe("Beri_data_Dyna", 1000, subs1);
    sub2 = handler.subscribe("Tanya_Budi", 1000, subs2);
    spinner.spin();

    return 0;
}