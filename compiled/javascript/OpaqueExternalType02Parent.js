// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './OpaqueExternalType02Child'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./OpaqueExternalType02Child'));
  } else {
    factory(root.OpaqueExternalType02Parent || (root.OpaqueExternalType02Parent = {}), root.KaitaiStream, root.OpaqueExternalType02Child || (root.OpaqueExternalType02Child = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (OpaqueExternalType02Parent_, KaitaiStream, OpaqueExternalType02Child_) {
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
      this.child = new OpaqueExternalType02Child_.OpaqueExternalType02Child(this._io, null, null);
    }

    return ParentObj;
  })();

  return OpaqueExternalType02Parent;
})();
OpaqueExternalType02Parent_.OpaqueExternalType02Parent = OpaqueExternalType02Parent;
});
