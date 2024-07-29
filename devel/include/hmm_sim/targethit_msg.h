// Generated by gencpp from file hmm_sim/targethit_msg.msg
// DO NOT EDIT!


#ifndef HMM_SIM_MESSAGE_TARGETHIT_MSG_H
#define HMM_SIM_MESSAGE_TARGETHIT_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Int32.h>

namespace hmm_sim
{
template <class ContainerAllocator>
struct targethit_msg_
{
  typedef targethit_msg_<ContainerAllocator> Type;

  targethit_msg_()
    : data()  {
    }
  targethit_msg_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Int32_<ContainerAllocator>  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::hmm_sim::targethit_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hmm_sim::targethit_msg_<ContainerAllocator> const> ConstPtr;

}; // struct targethit_msg_

typedef ::hmm_sim::targethit_msg_<std::allocator<void> > targethit_msg;

typedef boost::shared_ptr< ::hmm_sim::targethit_msg > targethit_msgPtr;
typedef boost::shared_ptr< ::hmm_sim::targethit_msg const> targethit_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hmm_sim::targethit_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hmm_sim::targethit_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hmm_sim::targethit_msg_<ContainerAllocator1> & lhs, const ::hmm_sim::targethit_msg_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hmm_sim::targethit_msg_<ContainerAllocator1> & lhs, const ::hmm_sim::targethit_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hmm_sim

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hmm_sim::targethit_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hmm_sim::targethit_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hmm_sim::targethit_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hmm_sim::targethit_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hmm_sim::targethit_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hmm_sim::targethit_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hmm_sim::targethit_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ced17149d0dab0ac93acae0e222e30ee";
  }

  static const char* value(const ::hmm_sim::targethit_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xced17149d0dab0acULL;
  static const uint64_t static_value2 = 0x93acae0e222e30eeULL;
};

template<class ContainerAllocator>
struct DataType< ::hmm_sim::targethit_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hmm_sim/targethit_msg";
  }

  static const char* value(const ::hmm_sim::targethit_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hmm_sim::targethit_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Int32 data\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
;
  }

  static const char* value(const ::hmm_sim::targethit_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hmm_sim::targethit_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct targethit_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hmm_sim::targethit_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hmm_sim::targethit_msg_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HMM_SIM_MESSAGE_TARGETHIT_MSG_H
