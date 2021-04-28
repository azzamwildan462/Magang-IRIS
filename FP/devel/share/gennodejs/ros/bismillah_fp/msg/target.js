// Auto-generated. Do not edit!

// (in-package bismillah_fp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center_bola_x = null;
      this.center_bola_y = null;
      this.target_sudut = null;
      this.kecepatan_x = null;
      this.kecepatan_y = null;
      this.kecepatan_teta = null;
    }
    else {
      if (initObj.hasOwnProperty('center_bola_x')) {
        this.center_bola_x = initObj.center_bola_x
      }
      else {
        this.center_bola_x = 0;
      }
      if (initObj.hasOwnProperty('center_bola_y')) {
        this.center_bola_y = initObj.center_bola_y
      }
      else {
        this.center_bola_y = 0;
      }
      if (initObj.hasOwnProperty('target_sudut')) {
        this.target_sudut = initObj.target_sudut
      }
      else {
        this.target_sudut = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_x')) {
        this.kecepatan_x = initObj.kecepatan_x
      }
      else {
        this.kecepatan_x = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_y')) {
        this.kecepatan_y = initObj.kecepatan_y
      }
      else {
        this.kecepatan_y = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_teta')) {
        this.kecepatan_teta = initObj.kecepatan_teta
      }
      else {
        this.kecepatan_teta = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target
    // Serialize message field [center_bola_x]
    bufferOffset = _serializer.int64(obj.center_bola_x, buffer, bufferOffset);
    // Serialize message field [center_bola_y]
    bufferOffset = _serializer.int64(obj.center_bola_y, buffer, bufferOffset);
    // Serialize message field [target_sudut]
    bufferOffset = _serializer.int64(obj.target_sudut, buffer, bufferOffset);
    // Serialize message field [kecepatan_x]
    bufferOffset = _serializer.int64(obj.kecepatan_x, buffer, bufferOffset);
    // Serialize message field [kecepatan_y]
    bufferOffset = _serializer.int64(obj.kecepatan_y, buffer, bufferOffset);
    // Serialize message field [kecepatan_teta]
    bufferOffset = _serializer.int64(obj.kecepatan_teta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target
    let len;
    let data = new target(null);
    // Deserialize message field [center_bola_x]
    data.center_bola_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [center_bola_y]
    data.center_bola_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [target_sudut]
    data.target_sudut = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [kecepatan_x]
    data.kecepatan_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [kecepatan_y]
    data.kecepatan_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [kecepatan_teta]
    data.kecepatan_teta = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bismillah_fp/target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72fecc2344924574cece529ec5202e24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 center_bola_x
    int64 center_bola_y
    int64 target_sudut
    int64 kecepatan_x
    int64 kecepatan_y
    int64 kecepatan_teta
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target(null);
    if (msg.center_bola_x !== undefined) {
      resolved.center_bola_x = msg.center_bola_x;
    }
    else {
      resolved.center_bola_x = 0
    }

    if (msg.center_bola_y !== undefined) {
      resolved.center_bola_y = msg.center_bola_y;
    }
    else {
      resolved.center_bola_y = 0
    }

    if (msg.target_sudut !== undefined) {
      resolved.target_sudut = msg.target_sudut;
    }
    else {
      resolved.target_sudut = 0
    }

    if (msg.kecepatan_x !== undefined) {
      resolved.kecepatan_x = msg.kecepatan_x;
    }
    else {
      resolved.kecepatan_x = 0
    }

    if (msg.kecepatan_y !== undefined) {
      resolved.kecepatan_y = msg.kecepatan_y;
    }
    else {
      resolved.kecepatan_y = 0
    }

    if (msg.kecepatan_teta !== undefined) {
      resolved.kecepatan_teta = msg.kecepatan_teta;
    }
    else {
      resolved.kecepatan_teta = 0
    }

    return resolved;
    }
};

module.exports = target;
