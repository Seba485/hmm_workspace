// Generated by gencpp from file hmm_sim/action_status.msg
// DO NOT EDIT!


#ifndef HMM_SIM_MESSAGE_ACTION_STATUS_H
#define HMM_SIM_MESSAGE_ACTION_STATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace hmm_sim
{
template <class ContainerAllocator>
struct action_status_
{
  typedef action_status_<ContainerAllocator> Type;

  action_status_()
    : data()  {
    }
  action_status_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::hmm_sim::action_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hmm_sim::action_status_<ContainerAllocator> const> ConstPtr;

}; // struct action_status_

typedef ::hmm_sim::action_status_<std::allocator<void> > action_status;

typedef boost::shared_ptr< ::hmm_sim::action_status > action_statusPtr;
typedef boost::shared_ptr< ::hmm_sim::action_status const> action_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hmm_sim::action_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hmm_sim::action_status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hmm_sim::action_status_<ContainerAllocator1> & lhs, const ::hmm_sim::action_status_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hmm_sim::action_status_<ContainerAllocator1> & lhs, const ::hmm_sim::action_status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hmm_sim

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hmm_sim::action_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hmm_sim::action_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hmm_sim::action_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hmm_sim::action_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hmm_sim::action_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hmm_sim::action_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hmm_sim::action_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5717fbd1e926acc7d0f3fedd0c81793";
  }

  static const char* value(const ::hmm_sim::action_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5717fbd1e926accULL;
  static const uint64_t static_value2 = 0x7d0f3fedd0c81793ULL;
};

template<class ContainerAllocator>
struct DataType< ::hmm_sim::action_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hmm_sim/action_status";
  }

  static const char* value(const ::hmm_sim::action_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hmm_sim::action_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Bool data\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::hmm_sim::action_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hmm_sim::action_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct action_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hmm_sim::action_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hmm_sim::action_status_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HMM_SIM_MESSAGE_ACTION_STATUS_H