// Generated by gencpp from file rosneuro_msgs/NeuroOutput.msg
// DO NOT EDIT!


#ifndef ROSNEURO_MSGS_MESSAGE_NEUROOUTPUT_H
#define ROSNEURO_MSGS_MESSAGE_NEUROOUTPUT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <rosneuro_msgs/NeuroHeader.h>
#include <rosneuro_msgs/NeuroDataFloat.h>
#include <rosneuro_msgs/NeuroDataInt32.h>
#include <rosneuro_msgs/NeuroDecoder.h>

namespace rosneuro_msgs
{
template <class ContainerAllocator>
struct NeuroOutput_
{
  typedef NeuroOutput_<ContainerAllocator> Type;

  NeuroOutput_()
    : header()
    , neuroheader()
    , softpredict()
    , hardpredict()
    , decoder()  {
    }
  NeuroOutput_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , neuroheader(_alloc)
    , softpredict(_alloc)
    , hardpredict(_alloc)
    , decoder(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::rosneuro_msgs::NeuroHeader_<ContainerAllocator>  _neuroheader_type;
  _neuroheader_type neuroheader;

   typedef  ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator>  _softpredict_type;
  _softpredict_type softpredict;

   typedef  ::rosneuro_msgs::NeuroDataInt32_<ContainerAllocator>  _hardpredict_type;
  _hardpredict_type hardpredict;

   typedef  ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator>  _decoder_type;
  _decoder_type decoder;





  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> const> ConstPtr;

}; // struct NeuroOutput_

typedef ::rosneuro_msgs::NeuroOutput_<std::allocator<void> > NeuroOutput;

typedef boost::shared_ptr< ::rosneuro_msgs::NeuroOutput > NeuroOutputPtr;
typedef boost::shared_ptr< ::rosneuro_msgs::NeuroOutput const> NeuroOutputConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.neuroheader == rhs.neuroheader &&
    lhs.softpredict == rhs.softpredict &&
    lhs.hardpredict == rhs.hardpredict &&
    lhs.decoder == rhs.decoder;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosneuro_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0460a5803a75972e2c86e91d64e44fdc";
  }

  static const char* value(const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0460a5803a75972eULL;
  static const uint64_t static_value2 = 0x2c86e91d64e44fdcULL;
};

template<class ContainerAllocator>
struct DataType< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosneuro_msgs/NeuroOutput";
  }

  static const char* value(const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# NeuroOutput Message\n"
"\n"
"# Header\n"
"Header header\n"
"\n"
"# NeuroHeader\n"
"NeuroHeader neuroheader\n"
"\n"
"# Output\n"
"NeuroDataFloat softpredict\n"
"NeuroDataInt32 hardpredict\n"
"\n"
"# NeuroDecoder\n"
"NeuroDecoder decoder\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: rosneuro_msgs/NeuroHeader\n"
"uint32 seq\n"
"\n"
"================================================================================\n"
"MSG: rosneuro_msgs/NeuroDataFloat\n"
"NeuroDataInfo info\n"
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
"\n"
"================================================================================\n"
"MSG: rosneuro_msgs/NeuroDataInt32\n"
"NeuroDataInfo info\n"
"int32[] data\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rosneuro_msgs/NeuroDecoder\n"
"string type\n"
"string path\n"
"int32[] classes\n"
;
  }

  static const char* value(const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.neuroheader);
      stream.next(m.softpredict);
      stream.next(m.hardpredict);
      stream.next(m.decoder);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NeuroOutput_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosneuro_msgs::NeuroOutput_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosneuro_msgs::NeuroOutput_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "neuroheader: ";
    s << std::endl;
    Printer< ::rosneuro_msgs::NeuroHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.neuroheader);
    s << indent << "softpredict: ";
    s << std::endl;
    Printer< ::rosneuro_msgs::NeuroDataFloat_<ContainerAllocator> >::stream(s, indent + "  ", v.softpredict);
    s << indent << "hardpredict: ";
    s << std::endl;
    Printer< ::rosneuro_msgs::NeuroDataInt32_<ContainerAllocator> >::stream(s, indent + "  ", v.hardpredict);
    s << indent << "decoder: ";
    s << std::endl;
    Printer< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >::stream(s, indent + "  ", v.decoder);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSNEURO_MSGS_MESSAGE_NEUROOUTPUT_H
