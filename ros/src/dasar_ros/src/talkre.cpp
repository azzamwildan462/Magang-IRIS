#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int8.h"

#include "dasar_ros/pesan_saya.h"

#include <sstream>

ros::Publisher pub11, pub12;
ros::Subscriber sub1, sub2;

ros::Timer ini_timer;

void kolbek(const ros::TimerEvent &timer)
{
    std_msgs::Int8 ini_pesan;
    ini_pesan.data = 1;
}

void kolbe_subs(const std_msgs::Int8::ConstPtr &msg)
{
    ROS_INFO("ini dari node 2 -> %d", msg->data);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "talker");
    ros::NodeHandle handler;
    ros::MultiThreadedSpinner multiiii;
    // ros::Publisher publisher = handler.advertise<dasar_ros::pesan_saya>("my_topic", 1000);
    // ros::Publisher KangPublis = handler.advertise<std_msgs::Float32MultiArray>("oprasi", 1000);
    // ros::Rate loop_rate(1);

    ini_timer = handler.createTimer(ros::Duration(0.04), kolbek);
    pub11 = handler.advertise<std_msgs::Int8>("dari_node_1", 8);
    sub1 = handler.subscribe("dari_node_2", 8, kolbe_subs);

    multiiii.spin();

    // int count = 0;
    // while (ros::ok())
    // {
    //     dasar_ros::pesan_saya pesan2;
    //     pesan2.age = 19;
    //     pesan2.data_int = 90;
    //     pesan2.first_name = "ini awal nama";
    //     pesan2.last_name = "ini akhir nama";
    //     pesan2.score = 100;

    //     std_msgs::String pesan;
    //     std::stringstream ss;
    //     ss << "Halo listener lama..";
    //     pesan.data = ss.str();
    //     // ROS_INFO("%s", pesan.data.c_str());
    //     publisher.publish(pesan2);
    //     // ros::spinOnce();
    //     // loop_rate.sleep();
    //     // ++count;

    //     // std_msgs::Int8 angka1;
    //     // angka1.data = count;
    //     // publisher.publish(angka1);
    //     // ros::spinOnce();
    //     // loop_rate.sleep();
    //     // count++;

    //     std_msgs::Float32MultiArray arr;
    //     arr.data.clear();
    //     arr.data.push_back(count + 4);
    //     arr.data.push_back(count + 3);
    //     arr.data.push_back(count + 2);
    //     arr.data.push_back(count + 1);
    //     arr.data.push_back(count);
    //     KangPublis.publish(arr);
    //     ROS_INFO("%.02f * %.02f - %.02f + %.02f / %.02f = ??", arr.data.at(0), arr.data.at(1), arr.data.at(2), arr.data.at(3), arr.data.at(4));
    //     ros::spinOnce();
    //     loop_rate.sleep();
    //     count++;
    // }

    return 0;
}
