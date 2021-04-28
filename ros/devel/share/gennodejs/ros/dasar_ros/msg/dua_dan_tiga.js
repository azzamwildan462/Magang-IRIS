// Auto-generated. Do not edit!

// (in-package dasar_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class dua_dan_tiga {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tanya = null;
      this.jawab = null;
    }
    else {
      if (initObj.hasOwnProperty('tanya')) {
        this.tanya = initObj.tanya
      }
      else {
        this.tanya = '';
      }
      if (initObj.hasOwnProperty('jawab')) {
        this.jawab = initObj.jawab
      }
      else {
        this.jawab = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dua_dan_tiga
    // Serialize message field [tanya]
    bufferOffset = _serializer.string(obj.tanya, buffer, bufferOffset);
    // Serialize message field [jawab]
    bufferOffset = _serializer.string(obj.jawab, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dua_dan_tiga
    let len;
    let data = new dua_dan_tiga(null);
    // Deserialize message field [tanya]
    data.tanya = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [jawab]
    data.jawab = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tanya);
    length += _getByteLength(object.jawab);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dasar_ros/dua_dan_tiga';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4837604f04448f1d12c0d9b2655a598c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tanya
    string jawab
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dua_dan_tiga(null);
    if (msg.tanya !== undefined) {
      resolved.tanya = msg.tanya;
    }
    else {
      resolved.tanya = ''
    }

    if (msg.jawab !== undefined) {
      resolved.jawab = msg.jawab;
    }
    else {
      resolved.jawab = ''
    }

    return resolved;
    }
};

module.exports = dua_dan_tiga;
