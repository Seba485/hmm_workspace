# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosneuro_msgs/NeuroDataInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NeuroDataInfo(genpy.Message):
  _md5sum = "6662e2f96240b54d66e954d119b2ab01"
  _type = "rosneuro_msgs/NeuroDataInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# NeuroDataInfo Message

uint16    nsamples
uint16    nchannels
uint16    stride
string    unit
string    transducter
string    prefiltering		# Hardware prefiltering
uint8     isint
float64[] minmax
string[]  labels				# Labels of channels
"""
  __slots__ = ['nsamples','nchannels','stride','unit','transducter','prefiltering','isint','minmax','labels']
  _slot_types = ['uint16','uint16','uint16','string','string','string','uint8','float64[]','string[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nsamples,nchannels,stride,unit,transducter,prefiltering,isint,minmax,labels

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeuroDataInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.nsamples is None:
        self.nsamples = 0
      if self.nchannels is None:
        self.nchannels = 0
      if self.stride is None:
        self.stride = 0
      if self.unit is None:
        self.unit = ''
      if self.transducter is None:
        self.transducter = ''
      if self.prefiltering is None:
        self.prefiltering = ''
      if self.isint is None:
        self.isint = 0
      if self.minmax is None:
        self.minmax = []
      if self.labels is None:
        self.labels = []
    else:
      self.nsamples = 0
      self.nchannels = 0
      self.stride = 0
      self.unit = ''
      self.transducter = ''
      self.prefiltering = ''
      self.isint = 0
      self.minmax = []
      self.labels = []

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
      buff.write(_get_struct_3H().pack(_x.nsamples, _x.nchannels, _x.stride))
      _x = self.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.minmax))
      length = len(self.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
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
      end = 0
      _x = self
      start = end
      end += 6
      (_x.nsamples, _x.nchannels, _x.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.prefiltering = str[start:end]
      start = end
      end += 1
      (self.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.minmax = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.labels = []
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
        self.labels.append(val1)
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
      buff.write(_get_struct_3H().pack(_x.nsamples, _x.nchannels, _x.stride))
      _x = self.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.transducter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.prefiltering
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.isint
      buff.write(_get_struct_B().pack(_x))
      length = len(self.minmax)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.minmax.tostring())
      length = len(self.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
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
      end = 0
      _x = self
      start = end
      end += 6
      (_x.nsamples, _x.nchannels, _x.stride,) = _get_struct_3H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unit = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.unit = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transducter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.transducter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.prefiltering = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.prefiltering = str[start:end]
      start = end
      end += 1
      (self.isint,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.minmax = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.labels = []
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
        self.labels.append(val1)
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
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
