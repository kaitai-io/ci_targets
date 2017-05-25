// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NestedTypes2 = (function() {
  function NestedTypes2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedTypes2.prototype._read = function() {
    this.one = new SubtypeA(this._io, this, this._root);
    this.two = new SubtypeB(this._io, this, this._root);
  }

  var SubtypeA = NestedTypes2.SubtypeA = (function() {
    function SubtypeA(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    SubtypeA.prototype._read = function() {
      this.typedAtRoot = new SubtypeB(this._io, this, this._root);
      this.typedHere1 = new SubtypeC(this._io, this, this._root);
      this.typedHere2 = new SubtypeCc(this._io, this, this._root);
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
        this.typedHere = new SubtypeD(this._io, this, this._root);
        this.typedParent = new SubtypeCc(this._io, this, this._root);
        this.typedRoot = new SubtypeB(this._io, this, this._root);
      }

      var SubtypeD = SubtypeC.SubtypeD = (function() {
        function SubtypeD(_io, _parent, _root) {
          this._io = _io;
          this._parent = _parent;
          this._root = _root || this;

          this._read();
        }
        SubtypeD.prototype._read = function() {
          this.valueD = this._io.readS1();
        }

        return SubtypeD;
      })();

      return SubtypeC;
    })();

    var SubtypeCc = SubtypeA.SubtypeCc = (function() {
      function SubtypeCc(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      SubtypeCc.prototype._read = function() {
        this.valueCc = this._io.readS1();
      }

      return SubtypeCc;
    })();

    return SubtypeA;
  })();

  var SubtypeB = NestedTypes2.SubtypeB = (function() {
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

  return NestedTypes2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NestedTypes2', [], function() {
    return NestedTypes2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NestedTypes2;
}
