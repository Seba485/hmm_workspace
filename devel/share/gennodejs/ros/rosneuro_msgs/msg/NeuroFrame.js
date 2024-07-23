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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NeuroFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.neuroheader = null;
      this.sr = null;
      this.eeg = null;
      this.exg = null;
      this.tri = null;
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
      if (initObj.hasOwnProperty('sr')) {
        this.sr = initObj.sr
      }
      else {
        this.sr = 0;
      }
      if (initObj.hasOwnProperty('eeg')) {
        this.eeg = initObj.eeg
      }
      else {
        this.eeg = new NeuroDataFloat();
      }
      if (initObj.hasOwnProperty('exg')) {
        this.exg = initObj.exg
      }
      else {
        this.exg = new NeuroDataFloat();
      }
      if (initObj.hasOwnProperty('tri')) {
        this.tri = initObj.tri
      }
      else {
        this.tri = new NeuroDataInt32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeuroFrame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [neuroheader]
    bufferOffset = NeuroHeader.serialize(obj.neuroheader, buffer, bufferOffset);
    // Serialize message field [sr]
    bufferOffset = _serializer.uint16(obj.sr, buffer, bufferOffset);
    // Serialize message field [eeg]
    bufferOffset = NeuroDataFloat.serialize(obj.eeg, buffer, bufferOffset);
    // Serialize message field [exg]
    bufferOffset = NeuroDataFloat.serialize(obj.exg, buffer, bufferOffset);
    // Serialize message field [tri]
    bufferOffset = NeuroDataInt32.serialize(obj.tri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeuroFrame
    let len;
    let data = new NeuroFrame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [neuroheader]
    data.neuroheader = NeuroHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [sr]
    data.sr = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [eeg]
    data.eeg = NeuroDataFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [exg]
    data.exg = NeuroDataFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [tri]
    data.tri = NeuroDataInt32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += NeuroDataFloat.getMessageSize(object.eeg);
    length += NeuroDataFloat.getMessageSize(object.exg);
    length += NeuroDataInt32.getMessageSize(object.tri);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosneuro_msgs/NeuroFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '797997e5036eb017437ce855856d3bad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NeuroFrame(null);
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

    if (msg.sr !== undefined) {
      resolved.sr = msg.sr;
    }
    else {
      resolved.sr = 0
    }

    if (msg.eeg !== undefined) {
      resolved.eeg = NeuroDataFloat.Resolve(msg.eeg)
    }
    else {
      resolved.eeg = new NeuroDataFloat()
    }

    if (msg.exg !== undefined) {
      resolved.exg = NeuroDataFloat.Resolve(msg.exg)
    }
    else {
      resolved.exg = new NeuroDataFloat()
    }

    if (msg.tri !== undefined) {
      resolved.tri = NeuroDataInt32.Resolve(msg.tri)
    }
    else {
      resolved.tri = new NeuroDataInt32()
    }

    return resolved;
    }
};

module.exports = NeuroFrame;
