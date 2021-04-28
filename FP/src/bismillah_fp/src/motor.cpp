#include "ros/ros.h"
#include "bismillah_fp/target.h"

class posisi
{
private:
    int64_t posx_robot = 0, posy_robot = 0;
    int64_t sudut_robot = 0;
    int64_t xpos, ypos, kecepatan_x, kecepatan_y;
    int64_t sudut, kecepatan_teta;
    int64_t sudut_palsu;

public:
    void setNilai(int64_t xpos, int64_t ypos, int64_t sudut, int64_t kecepatan_x, int64_t kecepatan_y, int64_t kecepatan_teta)
    {
        this->xpos = xpos;
        this->ypos = ypos;
        this->sudut = sudut;
        this->kecepatan_x = kecepatan_x;
        this->kecepatan_y = kecepatan_y;
        this->kecepatan_teta = kecepatan_teta;
        if (sudut > 180)
        {
            this->sudut_palsu = sudut - 360;
        }
        else
        {
            this->sudut_palsu = sudut;
        }
    }
    void gerak(bool sudah)
    {
        if (sudah == 0)
        {

            // ROS_INFO("%ld dan %ld", this->posx_robot + this->kecepatan_x, this->xpos);
            if (this->posx_robot + this->kecepatan_x <= this->xpos)
            {
                // ROS_INFO("sampek sini gk");
                this->posx_robot += this->kecepatan_x;
            }
            else
            {
                this->posx_robot = this->xpos;
            }
            if (this->posy_robot + this->kecepatan_y <= this->ypos)
            {
                this->posy_robot += this->kecepatan_y;
            }
            if (this->sudut_robot + this->kecepatan_teta <= this->sudut)
            {
                if (this->sudut_robot + this->kecepatan_teta > 180)
                {
                    // this->sudut_palsu *= -1;
                    this->sudut_robot += this->kecepatan_teta;
                    this->sudut_palsu = sudut_robot - 360;
                    // this->sudut_palsu *= -1;
                }
                else
                {
                    this->sudut_robot += this->kecepatan_teta;
                    this->sudut_palsu += this->kecepatan_teta;
                }
            }
            ROS_INFO("POSISI ROBOT: ");
            ROS_INFO("x: %ld", this->posx_robot);
            ROS_INFO("y: %ld", this->posy_robot);
            ROS_INFO("sudut: %ld", this->sudut_palsu);
            ROS_INFO(" ");
        }
    }
    void getPosisi(int64_t *xpos, int64_t *ypos, int64_t *sudut, int64_t *xawal, int64_t *yawal, int64_t *sudutawal)
    {
        *xpos = this->xpos;
        *ypos = this->ypos;
        *sudut = this->sudut;
        *xawal = this->posx_robot;
        *yawal = this->posy_robot;
        *sudutawal = this->sudut_robot;
    }
};

posisi robot;

void motor_gerak(const bismillah_fp::target::ConstPtr &msg)
{
    int64_t xpos_bola, ypos_bola;
    int64_t sudut_bola;
    int64_t xbot, ybot;
    int64_t sudutbot;
    bool mulai_gerak = 0;
    bool sudah = 0;
    robot.setNilai(msg->center_bola_x, msg->center_bola_y, msg->target_sudut, msg->kecepatan_x, msg->kecepatan_y, msg->kecepatan_teta);
    robot.getPosisi(&xpos_bola, &ypos_bola, &sudut_bola, &xbot, &ybot, &sudutbot);
    if (msg->center_bola_x == 0)
    {
        mulai_gerak = 0;
    }
    else
    {
        // ROS_INFO("POSISI ROBOT: ");
        // ROS_INFO("x: 0");
        // ROS_INFO("y: 0");
        // ROS_INFO("sudut: 0");
        mulai_gerak = 1;
    }
    while (!sudah && mulai_gerak == 1)
    {
        robot.getPosisi(&xpos_bola, &ypos_bola, &sudut_bola, &xbot, &ybot, &sudutbot);
        if (xbot + msg->kecepatan_x >= xpos_bola && ybot + msg->center_bola_y >= ypos_bola && sudutbot + msg->kecepatan_teta >= sudut_bola && mulai_gerak == 1)
        {
            sudah = 1;
            mulai_gerak = 0;
        }
        robot.gerak(sudah);
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "motor");
    ros::NodeHandle handler;
    ros::Subscriber sub = handler.subscribe("jalankan_motor", 512, motor_gerak);
    ros::spin();
    // while (robot.kosong() == 1)
    // {
    //     ros::Subscriber sub = handler.subscribe("jalankan_motor", 512, motor_gerak);
    //     ros::spin();
    // }
    // while (1)
    // {
    //     robot.gerak();
    // }

    return 0;
}