// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './OpaqueExternalType02Child'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./OpaqueExternalType02Child'));
  } else {
    root.OpaqueExternalType02Parent = factory(root.KaitaiStream, root.OpaqueExternalType02Child);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, OpaqueExternalType02Child) {
var OpaqueExternalType02Parent = (function() {
  function OpaqueExternalType02Parent(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueExternalType02Parent.prototype._read = function() {
    this.parent = new ParentObj(this._io, this, this._root);
  }

  var ParentObj = OpaqueExternalType02Parent.ParentObj = (function() {
    function ParentObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ParentObj.prototype._read = function() {
      this.child = new OpaqueExternalType02Child(this._io, this, null);
    }

    return ParentObj;
  })();

  return OpaqueExternalType02Parent;
})();
return OpaqueExternalType02Parent;
}));
