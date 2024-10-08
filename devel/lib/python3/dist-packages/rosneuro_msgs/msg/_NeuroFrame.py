# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosneuro_msgs/NeuroFrame.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rosneuro_msgs.msg
import std_msgs.msg

class NeuroFrame(genpy.Message):
  _md5sum = "797997e5036eb017437ce855856d3bad"
  _type = "rosneuro_msgs/NeuroFrame"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# NeuroFrame Message

# Header
Header header

# NeuroHeader
NeuroHeader neuroheader

# Sampling rate
uint16 sr

# NeuroData
NeuroDataFloat eeg
NeuroDataFloat exg
NeuroDataInt32 tri




================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rosneuro_msgs/NeuroHeader
uint32 seq

================================================================================
MSG: rosneuro_msgs/NeuroDataFloat
NeuroDataInfo info
float32[] data



================================================================================
MSG: rosneuro_msgs/NeuroDataInfo
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

================================================================================
MSG: rosneuro_msgs/NeuroDataInt32
NeuroDataInfo info
int32[] data


"""
  __slots__ = ['header','neuroheader','sr','eeg','exg','tri']
  _slot_types = ['std_msgs/Header','rosneuro_msgs/NeuroHeader','uint16','rosneuro_msgs/NeuroDataFloat','rosneuro_msgs/NeuroDataFloat','rosneuro_msgs/NeuroDataInt32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,neuroheader,sr,eeg,exg,tri

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeuroFrame, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.neuroheader is None:
        self.neuroheader = rosneuro_msgs.msg.NeuroHeader()
      if self.sr is None:
        self.sr = 0
      if self.eeg is None:
        self.eeg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.exg is None:
        self.exg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.tri is None:
        self.tri = rosneuro_msgs.msg.NeuroDataInt32()
    else:
      self.header = std_msgs.msg.Header()
      self.neuroheader = rosneuro_msgs.msg.NeuroHeader()
      self.sr = 0
      self.eeg = rosneuro_msgs.msg.NeuroDataFloat()
      self.exg = rosneuro_msgs.msg.NeuroDataFloat()
      self.tri = rosneuro_msgs.msg.NeuroDataInt32()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I4H().pack(_x.neuroheader.seq, _x.sr, _x.eeg.info.nsamples, _x.eeg.info.nchannels, _x.eeg.info.stride))
      _x = self.eeg.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.eeg.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.eeg.info.minmax))
      length = len(self.eeg.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.eeg.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.eeg.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.eeg.data))
      _x = self
      buff.write(_get_struct_3H().pack(_x.exg.info.nsamples, _x.exg.info.nchannels, _x.exg.info.stride))
      _x = self.exg.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.exg.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.exg.info.minmax))
      length = len(self.exg.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.exg.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.exg.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.exg.data))
      _x = self
      buff.write(_get_struct_3H().pack(_x.tri.info.nsamples, _x.tri.info.nchannels, _x.tri.info.stride))
      _x = self.tri.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.tri.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.tri.info.minmax))
      length = len(self.tri.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.tri.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.tri.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.tri.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.neuroheader is None:
        self.neuroheader = rosneuro_msgs.msg.NeuroHeader()
      if self.eeg is None:
        self.eeg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.exg is None:
        self.exg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.tri is None:
        self.tri = rosneuro_msgs.msg.NeuroDataInt32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.neuroheader.seq, _x.sr, _x.eeg.info.nsamples, _x.eeg.info.nchannels, _x.eeg.info.stride,) = _get_struct_I4H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.eeg.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.eeg.info.minmax = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.eeg.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.eeg.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.eeg.data = s.unpack(str[start:end])
      _x = self
      start = end
      end += 6
      (_x.exg.info.nsamples, _x.exg.info.nchannels, _x.exg.info.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.exg.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.exg.info.minmax = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.exg.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.exg.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.exg.data = s.unpack(str[start:end])
      _x = self
      start = end
      end += 6
      (_x.tri.info.nsamples, _x.tri.info.nchannels, _x.tri.info.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.tri.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tri.info.minmax = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tri.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.tri.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tri.data = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I4H().pack(_x.neuroheader.seq, _x.sr, _x.eeg.info.nsamples, _x.eeg.info.nchannels, _x.eeg.info.stride))
      _x = self.eeg.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eeg.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.eeg.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.eeg.info.minmax.tostring())
      length = len(self.eeg.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.eeg.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.eeg.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.eeg.data.tostring())
      _x = self
      buff.write(_get_struct_3H().pack(_x.exg.info.nsamples, _x.exg.info.nchannels, _x.exg.info.stride))
      _x = self.exg.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.exg.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.exg.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.exg.info.minmax.tostring())
      length = len(self.exg.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.exg.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.exg.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.exg.data.tostring())
      _x = self
      buff.write(_get_struct_3H().pack(_x.tri.info.nsamples, _x.tri.info.nchannels, _x.tri.info.stride))
      _x = self.tri.info.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tri.info.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.tri.info.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tri.info.minmax.tostring())
      length = len(self.tri.info.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.tri.info.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.tri.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.tri.data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.neuroheader is None:
        self.neuroheader = rosneuro_msgs.msg.NeuroHeader()
      if self.eeg is None:
        self.eeg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.exg is None:
        self.exg = rosneuro_msgs.msg.NeuroDataFloat()
      if self.tri is None:
        self.tri = rosneuro_msgs.msg.NeuroDataInt32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.neuroheader.seq, _x.sr, _x.eeg.info.nsamples, _x.eeg.info.nchannels, _x.eeg.info.stride,) = _get_struct_I4H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eeg.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eeg.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.eeg.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.eeg.info.minmax = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.eeg.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.eeg.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.eeg.data = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 6
      (_x.exg.info.nsamples, _x.exg.info.nchannels, _x.exg.info.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.exg.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.exg.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.exg.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.exg.info.minmax = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.exg.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.exg.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.exg.data = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 6
      (_x.tri.info.nsamples, _x.tri.info.nchannels, _x.tri.info.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tri.info.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tri.info.prefiltering = str[start:end]
      start = end
      end += 1
      (self.tri.info.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tri.info.minmax = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tri.info.labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.tri.info.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tri.data = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3H = None
def _get_struct_3H():
    global _struct_3H
    if _struct_3H is None:
        _struct_3H = struct.Struct("<3H")
    return _struct_3H
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_I4H = None
def _get_struct_I4H():
    global _struct_I4H
    if _struct_I4H is None:
        _struct_I4H = struct.Struct("<I4H")
    return _struct_I4H
