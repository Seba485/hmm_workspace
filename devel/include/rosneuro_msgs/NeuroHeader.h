// Generated by gencpp from file rosneuro_msgs/NeuroHeader.msg
// DO NOT EDIT!


#ifndef ROSNEURO_MSGS_MESSAGE_NEUROHEADER_H
#define ROSNEURO_MSGS_MESSAGE_NEUROHEADER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosneuro_msgs
{
template <class ContainerAllocator>
struct NeuroHeader_
{
  typedef NeuroHeader_<ContainerAllocator> Type;

  NeuroHeader_()
    : seq(0)  {
    }
  NeuroHeader_(const ContainerAllocator& _alloc)
    : seq(0)  {
  (void)_alloc;
    }



   typedef uint32_t _seq_type;
  _seq_type seq;





  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> const> ConstPtr;

}; // struct NeuroHeader_

typedef ::rosneuro_msgs::NeuroHeader_<std::allocator<void> > NeuroHeader;

typedef boost::shared_ptr< ::rosneuro_msgs::NeuroHeader > NeuroHeaderPtr;
typedef boost::shared_ptr< ::rosneuro_msgs::NeuroHeader const> NeuroHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator2> & rhs)
{
  return lhs.seq == rhs.seq;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosneuro_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "028bf764a68568ec6c5a90be068a2ef7";
  }

  static const char* value(const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x028bf764a68568ecULL;
  static const uint64_t static_value2 = 0x6c5a90be068a2ef7ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosneuro_msgs/NeuroHeader";
  }

  static const char* value(const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 seq\n"
;
  }

  static const char* value(const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.seq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NeuroHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosneuro_msgs::NeuroHeader_<ContainerAllocator>& v)
  {
    s << indent << "seq: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.seq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSNEURO_MSGS_MESSAGE_NEUROHEADER_H
