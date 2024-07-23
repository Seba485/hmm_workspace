// Auto-generated. Do not edit!

// (in-package rosneuro_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NeuroHeader = require('./NeuroHeader.js');
let NeuroDataFloat = require('./NeuroDataFloat.js');
let NeuroDataInt32 = require('./NeuroDataInt32.js');
let NeuroDecoder = require('./NeuroDecoder.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NeuroOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.neuroheader = null;
      this.softpredict = null;
      this.hardpredict = null;
      this.decoder = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('neuroheader')) {
        this.neuroheader = initObj.neuroheader
      }
      else {
        this.neuroheader = new NeuroHeader();
      }
      if (initObj.hasOwnProperty('softpredict')) {
        this.softpredict = initObj.softpredict
      }
      else {
        this.softpredict = new NeuroDataFloat();
      }
      if (initObj.hasOwnProperty('hardpredict')) {
        this.hardpredict = initObj.hardpredict
      }
      else {
        this.hardpredict = new NeuroDataInt32();
      }
      if (initObj.hasOwnProperty('decoder')) {
        this.decoder = initObj.decoder
      }
      else {
        this.decoder = new NeuroDecoder();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeuroOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [neuroheader]
    bufferOffset = NeuroHeader.serialize(obj.neuroheader, buffer, bufferOffset);
    // Serialize message field [softpredict]
    bufferOffset = NeuroDataFloat.serialize(obj.softpredict, buffer, bufferOffset);
    // Serialize message field [hardpredict]
    bufferOffset = NeuroDataInt32.serialize(obj.hardpredict, buffer, bufferOffset);
    // Serialize message field [decoder]
    bufferOffset = NeuroDecoder.serialize(obj.decoder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeuroOutput
    let len;
    let data = new NeuroOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [neuroheader]
    data.neuroheader = NeuroHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [softpredict]
    data.softpredict = NeuroDataFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [hardpredict]
    data.hardpredict = NeuroDataInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [decoder]
    data.decoder = NeuroDecoder.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += NeuroDataFloat.getMessageSize(object.softpredict);
    length += NeuroDataInt32.getMessageSize(object.hardpredict);
    length += NeuroDecoder.getMessageSize(object.decoder);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosneuro_msgs/NeuroOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0460a5803a75972e2c86e91d64e44fdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NeuroOutput Message
    
    # Header
    Header header
    
    # NeuroHeader
    NeuroHeader neuroheader
    
    # Output
    NeuroDataFloat softpredict
    NeuroDataInt32 hardpredict
    
    # NeuroDecoder
    NeuroDecoder decoder
    
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
    
    
    
    ================================================================================
    MSG: rosneuro_msgs/NeuroDecoder
    string type
    string path
    int32[] classes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeuroOutput(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.neuroheader !== undefined) {
      resolved.neuroheader = NeuroHeader.Resolve(msg.neuroheader)
    }
    else {
      resolved.neuroheader = new NeuroHeader()
    }

    if (msg.softpredict !== undefined) {
      resolved.softpredict = NeuroDataFloat.Resolve(msg.softpredict)
    }
    else {
      resolved.softpredict = new NeuroDataFloat()
    }

    if (msg.hardpredict !== undefined) {
      resolved.hardpredict = NeuroDataInt32.Resolve(msg.hardpredict)
    }
    else {
      resolved.hardpredict = new NeuroDataInt32()
    }

    if (msg.decoder !== undefined) {
      resolved.decoder = NeuroDecoder.Resolve(msg.decoder)
    }
    else {
      resolved.decoder = new NeuroDecoder()
    }

    return resolved;
    }
};

module.exports = NeuroOutput;
