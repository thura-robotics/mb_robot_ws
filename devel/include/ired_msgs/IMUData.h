// Generated by gencpp from file ired_msgs/IMUData.msg
// DO NOT EDIT!


#ifndef IRED_MSGS_MESSAGE_IMUDATA_H
#define IRED_MSGS_MESSAGE_IMUDATA_H


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
struct IMUData_
{
  typedef IMUData_<ContainerAllocator> Type;

  IMUData_()
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
    }
  IMUData_(const ContainerAllocator& _alloc)
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::ired_msgs::IMUData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ired_msgs::IMUData_<ContainerAllocator> const> ConstPtr;

}; // struct IMUData_

typedef ::ired_msgs::IMUData_<std::allocator<void> > IMUData;

typedef boost::shared_ptr< ::ired_msgs::IMUData > IMUDataPtr;
typedef boost::shared_ptr< ::ired_msgs::IMUData const> IMUDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ired_msgs::IMUData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ired_msgs::IMUData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ired_msgs::IMUData_<ContainerAllocator1> & lhs, const ::ired_msgs::IMUData_<ContainerAllocator2> & rhs)
{
  return lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ired_msgs::IMUData_<ContainerAllocator1> & lhs, const ::ired_msgs::IMUData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ired_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ired_msgs::IMUData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ired_msgs::IMUData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ired_msgs::IMUData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ired_msgs::IMUData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ired_msgs::IMUData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ired_msgs::IMUData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ired_msgs::IMUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eeec8b25a660789a89540dedcb2b06d6";
  }

  static const char* value(const ::ired_msgs::IMUData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeeec8b25a660789aULL;
  static const uint64_t static_value2 = 0x89540dedcb2b06d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::ired_msgs::IMUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ired_msgs/IMUData";
  }

  static const char* value(const ::ired_msgs::IMUData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ired_msgs::IMUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
;
  }

  static const char* value(const ::ired_msgs::IMUData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ired_msgs::IMUData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMUData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ired_msgs::IMUData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ired_msgs::IMUData_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRED_MSGS_MESSAGE_IMUDATA_H