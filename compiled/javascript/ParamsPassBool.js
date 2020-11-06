// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ParamsPassBool = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ParamsPassBool = (function() {
  function ParamsPassBool(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassBool.prototype._read = function() {
    this.sFalse = this._io.readBitsIntBe(1) != 0;
    this.sTrue = this._io.readBitsIntBe(1) != 0;
    this._io.alignToByte();
    this.seqB1 = new ParamTypeB1(this._io, this, this._root, this.sTrue);
    this.seqBool = new ParamTypeBool(this._io, this, this._root, this.sFalse);
    this.literalB1 = new ParamTypeB1(this._io, this, this._root, false);
    this.literalBool = new ParamTypeBool(this._io, this, this._root, true);
    this.instB1 = new ParamTypeB1(this._io, this, this._root, this.vTrue);
    this.instBool = new ParamTypeBool(this._io, this, this._root, this.vFalse);
  }

  var ParamTypeB1 = ParamsPassBool.ParamTypeB1 = (function() {
    function ParamTypeB1(_io, _parent, _root, arg) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.arg = arg;

      this._read();
    }
    ParamTypeB1.prototype._read = function() {
      this.foo = this._io.readBytes((this.arg ? 1 : 2));
    }

    return ParamTypeB1;
  })();

  var ParamTypeBool = ParamsPassBool.ParamTypeBool = (function() {
    function ParamTypeBool(_io, _parent, _root, arg) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.arg = arg;

      this._read();
    }
    ParamTypeBool.prototype._read = function() {
      this.foo = this._io.readBytes((this.arg ? 1 : 2));
    }

    return ParamTypeBool;
  })();
  Object.defineProperty(ParamsPassBool.prototype, 'vFalse', {
    get: function() {
      if (this._m_vFalse !== undefined)
        return this._m_vFalse;
      this._m_vFalse = false;
      return this._m_vFalse;
    }
  });
  Object.defineProperty(ParamsPassBool.prototype, 'vTrue', {
    get: function() {
      if (this._m_vTrue !== undefined)
        return this._m_vTrue;
      this._m_vTrue = true;
      return this._m_vTrue;
    }
  });

  return ParamsPassBool;
})();
return ParamsPassBool;
}));
