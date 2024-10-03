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

class MotorControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.pid_motor_front_left = null;
      this.pid_motor_front_right = null;
      this.pid_motor_rear_left = null;
      this.pid_motor_rear_right = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('pid_motor_front_left')) {
        this.pid_motor_front_left = initObj.pid_motor_front_left
      }
      else {
        this.pid_motor_front_left = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('pid_motor_front_right')) {
        this.pid_motor_front_right = initObj.pid_motor_front_right
      }
      else {
        this.pid_motor_front_right = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('pid_motor_rear_left')) {
        this.pid_motor_rear_left = initObj.pid_motor_rear_left
      }
      else {
        this.pid_motor_rear_left = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('pid_motor_rear_right')) {
        this.pid_motor_rear_right = initObj.pid_motor_rear_right
      }
      else {
        this.pid_motor_rear_right = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorControl
    // Check that the constant length array field [speed] has the right length
    if (obj.speed.length !== 4) {
      throw new Error('Unable to serialize array field speed - length must be 4')
    }
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float64(obj.speed, buffer, bufferOffset, 4);
    // Check that the constant length array field [pid_motor_front_left] has the right length
    if (obj.pid_motor_front_left.length !== 3) {
      throw new Error('Unable to serialize array field pid_motor_front_left - length must be 3')
    }
    // Serialize message field [pid_motor_front_left]
    bufferOffset = _arraySerializer.float64(obj.pid_motor_front_left, buffer, bufferOffset, 3);
    // Check that the constant length array field [pid_motor_front_right] has the right length
    if (obj.pid_motor_front_right.length !== 3) {
      throw new Error('Unable to serialize array field pid_motor_front_right - length must be 3')
    }
    // Serialize message field [pid_motor_front_right]
    bufferOffset = _arraySerializer.float64(obj.pid_motor_front_right, buffer, bufferOffset, 3);
    // Check that the constant length array field [pid_motor_rear_left] has the right length
    if (obj.pid_motor_rear_left.length !== 3) {
      throw new Error('Unable to serialize array field pid_motor_rear_left - length must be 3')
    }
    // Serialize message field [pid_motor_rear_left]
    bufferOffset = _arraySerializer.float64(obj.pid_motor_rear_left, buffer, bufferOffset, 3);
    // Check that the constant length array field [pid_motor_rear_right] has the right length
    if (obj.pid_motor_rear_right.length !== 3) {
      throw new Error('Unable to serialize array field pid_motor_rear_right - length must be 3')
    }
    // Serialize message field [pid_motor_rear_right]
    bufferOffset = _arraySerializer.float64(obj.pid_motor_rear_right, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorControl
    let len;
    let data = new MotorControl(null);
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [pid_motor_front_left]
    data.pid_motor_front_left = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [pid_motor_front_right]
    data.pid_motor_front_right = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [pid_motor_rear_left]
    data.pid_motor_rear_left = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [pid_motor_rear_right]
    data.pid_motor_rear_right = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ired_msgs/MotorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05f5241cd8b6cd92a2aaba4f953638ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[4] speed
    float64[3] pid_motor_front_left
    float64[3] pid_motor_front_right
    float64[3] pid_motor_rear_left
    float64[3] pid_motor_rear_right
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorControl(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = new Array(4).fill(0)
    }

    if (msg.pid_motor_front_left !== undefined) {
      resolved.pid_motor_front_left = msg.pid_motor_front_left;
    }
    else {
      resolved.pid_motor_front_left = new Array(3).fill(0)
    }

    if (msg.pid_motor_front_right !== undefined) {
      resolved.pid_motor_front_right = msg.pid_motor_front_right;
    }
    else {
      resolved.pid_motor_front_right = new Array(3).fill(0)
    }

    if (msg.pid_motor_rear_left !== undefined) {
      resolved.pid_motor_rear_left = msg.pid_motor_rear_left;
    }
    else {
      resolved.pid_motor_rear_left = new Array(3).fill(0)
    }

    if (msg.pid_motor_rear_right !== undefined) {
      resolved.pid_motor_rear_right = msg.pid_motor_rear_right;
    }
    else {
      resolved.pid_motor_rear_right = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = MotorControl;
