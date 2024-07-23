// Generated by gencpp from file rosneuro_msgs/NeuroDataFloat.msg
// DO NOT EDIT!


#ifndef ROSNEURO_MSGS_MESSAGE_NEURODATAFLOAT_H
#define ROSNEURO_MSGS_MESSAGE_NEURODATAFLOAT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rosneuro_msgs/NeuroDataInfo.h>

namespace rosneuro_msgs
{
template <class ContainerAllocator>
struct NeuroDataFloat_
{
  typedef NeuroDataFloat_<ContainerAllocator> Type;

  NeuroDataFloat_()
    : info()
    , data()  {
    }
  NeuroDataFloat_(const ContainerAllocator& _alloc)
    : info(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rosneuro_msgs::NeuroDataInfo_<ContainerAllocator>  _info_type;
  _info_type info;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> const> ConstPtr;

}; // struct NeuroDataFloat_

typedef ::rosneuro_msgs::NeuroDataFloat_<std::allocator<void> > NeuroDataFloat;

typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDataFloat > NeuroDataFloatPtr;
typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDataFloat const> NeuroDataFloatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator2> & rhs)
{
  return lhs.info == rhs.info &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosneuro_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32be46802288cbb30589c65e16703676";
  }

  static const char* value(const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32be46802288cbb3ULL;
  static const uint64_t static_value2 = 0x0589c65e16703676ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosneuro_msgs/NeuroDataFloat";
  }

  static const char* value(const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "NeuroDataInfo info\n"
"float32[] data\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rosneuro_msgs/NeuroDataInfo\n"
"# NeuroDataInfo Message\n"
"\n"
"uint16    nsamples\n"
"uint16    nchannels\n"
"uint16    stride\n"
"string    unit\n"
"string    transducter\n"
"string    prefiltering		# Hardware prefiltering\n"
"uint8     isint\n"
"float64[] minmax\n"
"string[]  labels				# Labels of channels\n"
;
  }

  static const char* value(const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.info);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NeuroDataFloat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator>& v)
  {
    s << indent << "info: ";
    s << std::endl;
    Printer< ::rosneuro_msgs::NeuroDataInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.info);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSNEURO_MSGS_MESSAGE_NEURODATAFLOAT_H
