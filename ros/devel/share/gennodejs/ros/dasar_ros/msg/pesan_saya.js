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

class pesan_saya {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nama = null;
      this.nrp = null;
      this.ipk = null;
    }
    else {
      if (initObj.hasOwnProperty('nama')) {
        this.nama = initObj.nama
      }
      else {
        this.nama = '';
      }
      if (initObj.hasOwnProperty('nrp')) {
        this.nrp = initObj.nrp
      }
      else {
        this.nrp = '';
      }
      if (initObj.hasOwnProperty('ipk')) {
        this.ipk = initObj.ipk
      }
      else {
        this.ipk = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pesan_saya
    // Serialize message field [nama]
    bufferOffset = _serializer.string(obj.nama, buffer, bufferOffset);
    // Serialize message field [nrp]
    bufferOffset = _serializer.string(obj.nrp, buffer, bufferOffset);
    // Serialize message field [ipk]
    bufferOffset = _serializer.float32(obj.ipk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pesan_saya
    let len;
    let data = new pesan_saya(null);
    // Deserialize message field [nama]
    data.nama = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nrp]
    data.nrp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ipk]
    data.ipk = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nama);
    length += _getByteLength(object.nrp);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dasar_ros/pesan_saya';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42b70ad42e4f827badd05f6f9665ddc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string nama
    string nrp
    float32 ipk
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pesan_saya(null);
    if (msg.nama !== undefined) {
      resolved.nama = msg.nama;
    }
    else {
      resolved.nama = ''
    }

    if (msg.nrp !== undefined) {
      resolved.nrp = msg.nrp;
    }
    else {
      resolved.nrp = ''
    }

    if (msg.ipk !== undefined) {
      resolved.ipk = msg.ipk;
    }
    else {
      resolved.ipk = 0.0
    }

    return resolved;
    }
};

module.exports = pesan_saya;
