// Auto-generated. Do not edit!

// (in-package kennedy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cputemp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cputemp = null;
    }
    else {
      if (initObj.hasOwnProperty('cputemp')) {
        this.cputemp = initObj.cputemp
      }
      else {
        this.cputemp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cputemp
    // Serialize message field [cputemp]
    bufferOffset = _serializer.float32(obj.cputemp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cputemp
    let len;
    let data = new cputemp(null);
    // Deserialize message field [cputemp]
    data.cputemp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kennedy/cputemp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f6d07e987c77d2cff438e6eabfa2bb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cputemp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cputemp(null);
    if (msg.cputemp !== undefined) {
      resolved.cputemp = msg.cputemp;
    }
    else {
      resolved.cputemp = 0.0
    }

    return resolved;
    }
};

module.exports = cputemp;
