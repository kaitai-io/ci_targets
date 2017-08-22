// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var OpaqueExternalType02Child = require('./OpaqueExternalType02Child.js');

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
      this.child = new OpaqueExternalType02Child(this._io, null, null);
    }

    return ParentObj;
  })();

  return OpaqueExternalType02Parent;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('OpaqueExternalType02Parent', [], function() {
    return OpaqueExternalType02Parent;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = OpaqueExternalType02Parent;
}
