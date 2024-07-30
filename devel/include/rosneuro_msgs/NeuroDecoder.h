// Generated by gencpp from file rosneuro_msgs/NeuroDecoder.msg
// DO NOT EDIT!


#ifndef ROSNEURO_MSGS_MESSAGE_NEURODECODER_H
#define ROSNEURO_MSGS_MESSAGE_NEURODECODER_H


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
struct NeuroDecoder_
{
  typedef NeuroDecoder_<ContainerAllocator> Type;

  NeuroDecoder_()
    : type()
    , path()
    , classes()  {
    }
  NeuroDecoder_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , path(_alloc)
    , classes(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _path_type;
  _path_type path;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _classes_type;
  _classes_type classes;





  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> const> ConstPtr;

}; // struct NeuroDecoder_

typedef ::rosneuro_msgs::NeuroDecoder_<std::allocator<void> > NeuroDecoder;

typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDecoder > NeuroDecoderPtr;
typedef boost::shared_ptr< ::rosneuro_msgs::NeuroDecoder const> NeuroDecoderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.path == rhs.path &&
    lhs.classes == rhs.classes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator1> & lhs, const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosneuro_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8400b843e8bd63fce4f038875c96b8d";
  }

  static const char* value(const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8400b843e8bd63fULL;
  static const uint64_t static_value2 = 0xce4f038875c96b8dULL;
};

template<class ContainerAllocator>
struct DataType< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosneuro_msgs/NeuroDecoder";
  }

  static const char* value(const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string type\n"
"string path\n"
"int32[] classes\n"
;
  }

  static const char* value(const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.path);
      stream.next(m.classes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NeuroDecoder_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosneuro_msgs::NeuroDecoder_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.path);
    s << indent << "classes[]" << std::endl;
    for (size_t i = 0; i < v.classes.size(); ++i)
    {
      s << indent << "  classes[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.classes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSNEURO_MSGS_MESSAGE_NEURODECODER_H