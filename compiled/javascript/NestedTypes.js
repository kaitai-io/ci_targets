// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NestedTypes = (function() {
  function NestedTypes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedTypes.prototype._read = function() {
    this.one = new SubtypeA(this._io, this, this._root);
    this.two = new SubtypeB(this._io, this, this._root);
  }

  var SubtypeA = NestedTypes.SubtypeA = (function() {
    function SubtypeA(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    SubtypeA.prototype._read = function() {
      this.typedAtRoot = new SubtypeB(this._io, this, this._root);
      this.typedHere = new SubtypeC(this._io, this, this._root);
    }

    var SubtypeC = SubtypeA.SubtypeC = (function() {
      function SubtypeC(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      SubtypeC.prototype._read = function() {
        this.valueC = this._io.readS1();
      }

      return SubtypeC;
    })();

    return SubtypeA;
  })();

  var SubtypeB = NestedTypes.SubtypeB = (function() {
    function SubtypeB(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    SubtypeB.prototype._read = function() {
      this.valueB = this._io.readS1();
    }

    return SubtypeB;
  })();

  return NestedTypes;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NestedTypes', [], function() {
    return NestedTypes;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NestedTypes;
}
