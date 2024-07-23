// Auto-generated. Do not edit!

// (in-package rosneuro_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NeuroDataInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nsamples = null;
      this.nchannels = null;
      this.stride = null;
      this.unit = null;
      this.transducter = null;
      this.prefiltering = null;
      this.isint = null;
      this.minmax = null;
      this.labels = null;
    }
    else {
      if (initObj.hasOwnProperty('nsamples')) {
        this.nsamples = initObj.nsamples
      }
      else {
        this.nsamples = 0;
      }
      if (initObj.hasOwnProperty('nchannels')) {
        this.nchannels = initObj.nchannels
      }
      else {
        this.nchannels = 0;
      }
      if (initObj.hasOwnProperty('stride')) {
        this.stride = initObj.stride
      }
      else {
        this.stride = 0;
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('transducter')) {
        this.transducter = initObj.transducter
      }
      else {
        this.transducter = '';
      }
      if (initObj.hasOwnProperty('prefiltering')) {
        this.prefiltering = initObj.prefiltering
      }
      else {
        this.prefiltering = '';
      }
      if (initObj.hasOwnProperty('isint')) {
        this.isint = initObj.isint
      }
      else {
        this.isint = 0;
      }
      if (initObj.hasOwnProperty('minmax')) {
        this.minmax = initObj.minmax
      }
      else {
        this.minmax = [];
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeuroDataInfo
    // Serialize message field [nsamples]
    bufferOffset = _serializer.uint16(obj.nsamples, buffer, bufferOffset);
    // Serialize message field [nchannels]
    bufferOffset = _serializer.uint16(obj.nchannels, buffer, bufferOffset);
    // Serialize message field [stride]
    bufferOffset = _serializer.uint16(obj.stride, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [transducter]
    bufferOffset = _serializer.string(obj.transducter, buffer, bufferOffset);
    // Serialize message field [prefiltering]
    bufferOffset = _serializer.string(obj.prefiltering, buffer, bufferOffset);
    // Serialize message field [isint]
    bufferOffset = _serializer.uint8(obj.isint, buffer, bufferOffset);
    // Serialize message field [minmax]
    bufferOffset = _arraySerializer.float64(obj.minmax, buffer, bufferOffset, null);
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.string(obj.labels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeuroDataInfo
    let len;
    let data = new NeuroDataInfo(null);
    // Deserialize message field [nsamples]
    data.nsamples = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nchannels]
    data.nchannels = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stride]
    data.stride = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [transducter]
    data.transducter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [prefiltering]
    data.prefiltering = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [isint]
    data.isint = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minmax]
    data.minmax = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.unit);
    length += _getByteLength(object.transducter);
    length += _getByteLength(object.prefiltering);
    length += 8 * object.minmax.length;
    object.labels.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosneuro_msgs/NeuroDataInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6662e2f96240b54d66e954d119b2ab01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NeuroDataInfo(null);
    if (msg.nsamples !== undefined) {
      resolved.nsamples = msg.nsamples;
    }
    else {
      resolved.nsamples = 0
    }

    if (msg.nchannels !== undefined) {
      resolved.nchannels = msg.nchannels;
    }
    else {
      resolved.nchannels = 0
    }

    if (msg.stride !== undefined) {
      resolved.stride = msg.stride;
    }
    else {
      resolved.stride = 0
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.transducter !== undefined) {
      resolved.transducter = msg.transducter;
    }
    else {
      resolved.transducter = ''
    }

    if (msg.prefiltering !== undefined) {
      resolved.prefiltering = msg.prefiltering;
    }
    else {
      resolved.prefiltering = ''
    }

    if (msg.isint !== undefined) {
      resolved.isint = msg.isint;
    }
    else {
      resolved.isint = 0
    }

    if (msg.minmax !== undefined) {
      resolved.minmax = msg.minmax;
    }
    else {
      resolved.minmax = []
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    return resolved;
    }
};

module.exports = NeuroDataInfo;
