// Auto-generated. Do not edit!

// (in-package rosneuro_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let NeuroFrame = require('../msg/NeuroFrame.js');

//-----------------------------------------------------------

class GetAcquisitionInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAcquisitionInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAcquisitionInfoRequest
    let len;
    let data = new GetAcquisitionInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosneuro_msgs/GetAcquisitionInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAcquisitionInfoRequest(null);
    return resolved;
    }
};

class GetAcquisitionInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.device_model = null;
      this.device_id = null;
      this.frame = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('device_model')) {
        this.device_model = initObj.device_model
      }
      else {
        this.device_model = '';
      }
      if (initObj.hasOwnProperty('device_id')) {
        this.device_id = initObj.device_id
      }
      else {
        this.device_id = '';
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = new NeuroFrame();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAcquisitionInfoResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [device_model]
    bufferOffset = _serializer.string(obj.device_model, buffer, bufferOffset);
    // Serialize message field [device_id]
    bufferOffset = _serializer.string(obj.device_id, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = NeuroFrame.serialize(obj.frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAcquisitionInfoResponse
    let len;
    let data = new GetAcquisitionInfoResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [device_model]
    data.device_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_id]
    data.device_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = NeuroFrame.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.device_model);
    length += _getByteLength(object.device_id);
    length += NeuroFrame.getMessageSize(object.frame);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosneuro_msgs/GetAcquisitionInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cf1aae8f1ae02fdc8775b1362badac5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool            result
    
    string device_model
    string device_id
    
    NeuroFrame frame
    
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroFrame
    # NeuroFrame Message
    
    # Header
    Header header
    
    # NeuroHeader
    NeuroHeader neuroheader
    
    # Sampling rate
    uint16 sr
    
    # NeuroData
    NeuroDataFloat eeg
    NeuroDataFloat exg
    NeuroDataInt32 tri
    
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroHeader
    uint32 seq
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroDataFloat
    NeuroDataInfo info
    float32[] data
    
    
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroDataInfo
    # NeuroDataInfo Message
    
    uint16    nsamples
    uint16    nchannels
    uint16    stride
    string    unit
    string    transducter
    string    prefiltering		# Hardware prefiltering
    uint8     isint
    float64[] minmax
    string[]  labels				# Labels of channels
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroDataInt32
    NeuroDataInfo info
    int32[] data
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAcquisitionInfoResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.device_model !== undefined) {
      resolved.device_model = msg.device_model;
    }
    else {
      resolved.device_model = ''
    }

    if (msg.device_id !== undefined) {
      resolved.device_id = msg.device_id;
    }
    else {
      resolved.device_id = ''
    }

    if (msg.frame !== undefined) {
      resolved.frame = NeuroFrame.Resolve(msg.frame)
    }
    else {
      resolved.frame = new NeuroFrame()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAcquisitionInfoRequest,
  Response: GetAcquisitionInfoResponse,
  md5sum() { return '8cf1aae8f1ae02fdc8775b1362badac5'; },
  datatype() { return 'rosneuro_msgs/GetAcquisitionInfo'; }
};
