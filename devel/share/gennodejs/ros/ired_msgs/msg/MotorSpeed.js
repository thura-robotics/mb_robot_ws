// Auto-generated. Do not edit!

// (in-package ired_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorSpeed
    // Check that the constant length array field [speed] has the right length
    if (obj.speed.length !== 4) {
      throw new Error('Unable to serialize array field speed - length must be 4')
    }
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float64(obj.speed, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorSpeed
    let len;
    let data = new MotorSpeed(null);
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ired_msgs/MotorSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c73c1913c2e2d9c04e814cd27a27b19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[4] speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorSpeed(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = MotorSpeed;
