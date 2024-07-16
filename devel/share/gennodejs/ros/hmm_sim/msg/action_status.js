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

class action_status {
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
        this.data = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action_status
    // Serialize message field [data]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action_status
    let len;
    let data = new action_status(null);
    // Deserialize message field [data]
    data.data = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmm_sim/action_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5717fbd1e926acc7d0f3fedd0c81793';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool data
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new action_status(null);
    if (msg.data !== undefined) {
      resolved.data = std_msgs.msg.Bool.Resolve(msg.data)
    }
    else {
      resolved.data = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = action_status;
