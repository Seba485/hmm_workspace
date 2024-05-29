// Auto-generated. Do not edit!

// (in-package hmm_input.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class hmm_input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pp_output = null;
      this.traversability_output = null;
    }
    else {
      if (initObj.hasOwnProperty('pp_output')) {
        this.pp_output = initObj.pp_output
      }
      else {
        this.pp_output = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('traversability_output')) {
        this.traversability_output = initObj.traversability_output
      }
      else {
        this.traversability_output = new std_msgs.msg.Float32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hmm_input
    // Serialize message field [pp_output]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.pp_output, buffer, bufferOffset);
    // Serialize message field [traversability_output]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.traversability_output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hmm_input
    let len;
    let data = new hmm_input(null);
    // Deserialize message field [pp_output]
    data.pp_output = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [traversability_output]
    data.traversability_output = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.pp_output);
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.traversability_output);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmm_input/hmm_input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a382f618debd21b36d14084cea220559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32MultiArray pp_output
    std_msgs/Float32MultiArray traversability_output
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hmm_input(null);
    if (msg.pp_output !== undefined) {
      resolved.pp_output = std_msgs.msg.Float32MultiArray.Resolve(msg.pp_output)
    }
    else {
      resolved.pp_output = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.traversability_output !== undefined) {
      resolved.traversability_output = std_msgs.msg.Float32MultiArray.Resolve(msg.traversability_output)
    }
    else {
      resolved.traversability_output = new std_msgs.msg.Float32MultiArray()
    }

    return resolved;
    }
};

module.exports = hmm_input;
