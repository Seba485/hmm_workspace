// Generated by gencpp from file rosneuro_msgs/GetAcquisitionInfo.msg
// DO NOT EDIT!


#ifndef ROSNEURO_MSGS_MESSAGE_GETACQUISITIONINFO_H
#define ROSNEURO_MSGS_MESSAGE_GETACQUISITIONINFO_H

#include <ros/service_traits.h>


#include <rosneuro_msgs/GetAcquisitionInfoRequest.h>
#include <rosneuro_msgs/GetAcquisitionInfoResponse.h>


namespace rosneuro_msgs
{

struct GetAcquisitionInfo
{

typedef GetAcquisitionInfoRequest Request;
typedef GetAcquisitionInfoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetAcquisitionInfo
} // namespace rosneuro_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosneuro_msgs::GetAcquisitionInfo > {
  static const char* value()
  {
    return "8cf1aae8f1ae02fdc8775b1362badac5";
  }

  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfo&) { return value(); }
};

template<>
struct DataType< ::rosneuro_msgs::GetAcquisitionInfo > {
  static const char* value()
  {
    return "rosneuro_msgs/GetAcquisitionInfo";
  }

  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfo&) { return value(); }
};


// service_traits::MD5Sum< ::rosneuro_msgs::GetAcquisitionInfoRequest> should match
// service_traits::MD5Sum< ::rosneuro_msgs::GetAcquisitionInfo >
template<>
struct MD5Sum< ::rosneuro_msgs::GetAcquisitionInfoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosneuro_msgs::GetAcquisitionInfo >::value();
  }
  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosneuro_msgs::GetAcquisitionInfoRequest> should match
// service_traits::DataType< ::rosneuro_msgs::GetAcquisitionInfo >
template<>
struct DataType< ::rosneuro_msgs::GetAcquisitionInfoRequest>
{
  static const char* value()
  {
    return DataType< ::rosneuro_msgs::GetAcquisitionInfo >::value();
  }
  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosneuro_msgs::GetAcquisitionInfoResponse> should match
// service_traits::MD5Sum< ::rosneuro_msgs::GetAcquisitionInfo >
template<>
struct MD5Sum< ::rosneuro_msgs::GetAcquisitionInfoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosneuro_msgs::GetAcquisitionInfo >::value();
  }
  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosneuro_msgs::GetAcquisitionInfoResponse> should match
// service_traits::DataType< ::rosneuro_msgs::GetAcquisitionInfo >
template<>
struct DataType< ::rosneuro_msgs::GetAcquisitionInfoResponse>
{
  static const char* value()
  {
    return DataType< ::rosneuro_msgs::GetAcquisitionInfo >::value();
  }
  static const char* value(const ::rosneuro_msgs::GetAcquisitionInfoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSNEURO_MSGS_MESSAGE_GETACQUISITIONINFO_H
