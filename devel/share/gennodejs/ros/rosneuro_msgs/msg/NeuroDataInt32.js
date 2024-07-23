// Auto-generated. Do not edit!

// (in-package rosneuro_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NeuroDataInfo = require('./NeuroDataInfo.js');

//-----------------------------------------------------------

class NeuroDataInt32 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new NeuroDataInfo();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeuroDataInt32
    // Serialize message field [info]
    bufferOffset = NeuroDataInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeuroDataInt32
    let len;
    let data = new NeuroDataInt32(null);
    // Deserialize message field [info]
    data.info = NeuroDataInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NeuroDataInfo.getMessageSize(object.info);
    length += 4 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosneuro_msgs/NeuroDataInt32';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6607bffc84ab05ea306938c540428f96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NeuroDataInfo info
    int32[] data
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeuroDataInt32(null);
    if (msg.info !== undefined) {
      resolved.info = NeuroDataInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new NeuroDataInfo()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = NeuroDataInt32;
