#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dasar_ros/pesan_saya.h"
#include "std_msgs/Int8.h"

// void chatterCallback(const dasar_ros::pesan_saya &msg)
// {
//     // ROS_INFO("'%s' dari talker", msg->data.c_str());
//     ROS_INFO("tahun -> %d", msg.age);
//     ROS_INFO("nama awal -> %s", msg.first_name.c_str());
//     ROS_INFO("nama akhir -> %s", msg.last_name.c_str());
//     ROS_INFO("skor = %d", msg.score);
// }

// void Callback2(const dasar_ros::pesan_saya &msg)
// {
//     //     ROS_INFO("'%s' dari talker", msg->data.c_str());
// }

ros::Publisher pub11, pub12;
ros::Subscriber sub1, sub2;

ros::Timer ini_timer;

void kolbek(const ros::TimerEvent &timer)
{
    std_msgs::Int8 ini_pesan;
    ini_pesan.data = 2;
}

void kolbe_subs(const std_msgs::Int8::ConstPtr &msg)
{
    ROS_INFO("ini dari node 1 -> %d", msg->data);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "listener");
    ros::NodeHandle handler;
    ros::MultiThreadedSpinner spinner;
    ini_timer = handler.createTimer(ros::Duration(0.04), kolbek);
    pub12 = handler.advertise<std_msgs::Int8>("dari_node_2", 8);
    sub2 = handler.subscribe("dari_node_1", 8, kolbe_subs);
    spinner.spin();

    return 0;
}