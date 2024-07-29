// Auto-generated. Do not edit!

// (in-package hmm_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class targethit_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type targethit_msg
    // Serialize message field [data]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type targethit_msg
    let len;
    let data = new targethit_msg(null);
    // Deserialize message field [data]
    data.data = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmm_sim/targethit_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ced17149d0dab0ac93acae0e222e30ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 data
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new targethit_msg(null);
    if (msg.data !== undefined) {
      resolved.data = std_msgs.msg.Int32.Resolve(msg.data)
    }
    else {
      resolved.data = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = targethit_msg;
