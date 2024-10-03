// Generated by gencpp from file ired_msgs/MotorData.msg
// DO NOT EDIT!


#ifndef IRED_MSGS_MESSAGE_MOTORDATA_H
#define IRED_MSGS_MESSAGE_MOTORDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ired_msgs
{
template <class ContainerAllocator>
struct MotorData_
{
  typedef MotorData_<ContainerAllocator> Type;

  MotorData_()
    : speed_sp()
    , speed_fb()
    , pid_motor_front_left()
    , pid_motor_front_right()
    , pid_motor_rear_left()
    , pid_motor_rear_right()  {
      speed_sp.assign(0.0);

      speed_fb.assign(0.0);

      pid_motor_front_left.assign(0.0);

      pid_motor_front_right.assign(0.0);

      pid_motor_rear_left.assign(0.0);

      pid_motor_rear_right.assign(0.0);
  }
  MotorData_(const ContainerAllocator& _alloc)
    : speed_sp()
    , speed_fb()
    , pid_motor_front_left()
    , pid_motor_front_right()
    , pid_motor_rear_left()
    , pid_motor_rear_right()  {
  (void)_alloc;
      speed_sp.assign(0.0);

      speed_fb.assign(0.0);

      pid_motor_front_left.assign(0.0);

      pid_motor_front_right.assign(0.0);

      pid_motor_rear_left.assign(0.0);

      pid_motor_rear_right.assign(0.0);
  }



   typedef boost::array<double, 4>  _speed_sp_type;
  _speed_sp_type speed_sp;

   typedef boost::array<double, 4>  _speed_fb_type;
  _speed_fb_type speed_fb;

   typedef boost::array<double, 3>  _pid_motor_front_left_type;
  _pid_motor_front_left_type pid_motor_front_left;

   typedef boost::array<double, 3>  _pid_motor_front_right_type;
  _pid_motor_front_right_type pid_motor_front_right;

   typedef boost::array<double, 3>  _pid_motor_rear_left_type;
  _pid_motor_rear_left_type pid_motor_rear_left;

   typedef boost::array<double, 3>  _pid_motor_rear_right_type;
  _pid_motor_rear_right_type pid_motor_rear_right;





  typedef boost::shared_ptr< ::ired_msgs::MotorData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ired_msgs::MotorData_<ContainerAllocator> const> ConstPtr;

}; // struct MotorData_

typedef ::ired_msgs::MotorData_<std::allocator<void> > MotorData;

typedef boost::shared_ptr< ::ired_msgs::MotorData > MotorDataPtr;
typedef boost::shared_ptr< ::ired_msgs::MotorData const> MotorDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ired_msgs::MotorData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ired_msgs::MotorData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ired_msgs::MotorData_<ContainerAllocator1> & lhs, const ::ired_msgs::MotorData_<ContainerAllocator2> & rhs)
{
  return lhs.speed_sp == rhs.speed_sp &&
    lhs.speed_fb == rhs.speed_fb &&
    lhs.pid_motor_front_left == rhs.pid_motor_front_left &&
    lhs.pid_motor_front_right == rhs.pid_motor_front_right &&
    lhs.pid_motor_rear_left == rhs.pid_motor_rear_left &&
    lhs.pid_motor_rear_right == rhs.pid_motor_rear_right;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ired_msgs::MotorData_<ContainerAllocator1> & lhs, const ::ired_msgs::MotorData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ired_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ired_msgs::MotorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ired_msgs::MotorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ired_msgs::MotorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ired_msgs::MotorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ired_msgs::MotorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ired_msgs::MotorData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ired_msgs::MotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec2526e9a146e07c0941072e0ef16c7b";
  }

  static const char* value(const ::ired_msgs::MotorData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec2526e9a146e07cULL;
  static const uint64_t static_value2 = 0x0941072e0ef16c7bULL;
};

template<class ContainerAllocator>
struct DataType< ::ired_msgs::MotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ired_msgs/MotorData";
  }

  static const char* value(const ::ired_msgs::MotorData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ired_msgs::MotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[4] speed_sp\n"
"float64[4] speed_fb\n"
"float64[3] pid_motor_front_left\n"
"float64[3] pid_motor_front_right\n"
"float64[3] pid_motor_rear_left\n"
"float64[3] pid_motor_rear_right\n"
;
  }

  static const char* value(const ::ired_msgs::MotorData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ired_msgs::MotorData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed_sp);
      stream.next(m.speed_fb);
      stream.next(m.pid_motor_front_left);
      stream.next(m.pid_motor_front_right);
      stream.next(m.pid_motor_rear_left);
      stream.next(m.pid_motor_rear_right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ired_msgs::MotorData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ired_msgs::MotorData_<ContainerAllocator>& v)
  {
    s << indent << "speed_sp[]" << std::endl;
    for (size_t i = 0; i < v.speed_sp.size(); ++i)
    {
      s << indent << "  speed_sp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.speed_sp[i]);
    }
    s << indent << "speed_fb[]" << std::endl;
    for (size_t i = 0; i < v.speed_fb.size(); ++i)
    {
      s << indent << "  speed_fb[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.speed_fb[i]);
    }
    s << indent << "pid_motor_front_left[]" << std::endl;
    for (size_t i = 0; i < v.pid_motor_front_left.size(); ++i)
    {
      s << indent << "  pid_motor_front_left[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pid_motor_front_left[i]);
    }
    s << indent << "pid_motor_front_right[]" << std::endl;
    for (size_t i = 0; i < v.pid_motor_front_right.size(); ++i)
    {
      s << indent << "  pid_motor_front_right[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pid_motor_front_right[i]);
    }
    s << indent << "pid_motor_rear_left[]" << std::endl;
    for (size_t i = 0; i < v.pid_motor_rear_left.size(); ++i)
    {
      s << indent << "  pid_motor_rear_left[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pid_motor_rear_left[i]);
    }
    s << indent << "pid_motor_rear_right[]" << std::endl;
    for (size_t i = 0; i < v.pid_motor_rear_right.size(); ++i)
    {
      s << indent << "  pid_motor_rear_right[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pid_motor_rear_right[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRED_MSGS_MESSAGE_MOTORDATA_H
