// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NestedTypes3 || (root.NestedTypes3 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NestedTypes3_, KaitaiStream) {
var NestedTypes3 = (function() {
  function NestedTypes3(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedTypes3.prototype._read = function() {
    this.aCc = new SubtypeA.SubtypeCc(this._io, this, this._root);
    this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, this._root);
    this.b = new SubtypeB(this._io, this, this._root);
  }

  var SubtypeA = NestedTypes3.SubtypeA = (function() {
    function SubtypeA(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SubtypeA.prototype._read = function() {
    }

    var SubtypeC = SubtypeA.SubtypeC = (function() {
      function SubtypeC(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      SubtypeC.prototype._read = function() {
      }

      var SubtypeD = SubtypeC.SubtypeD = (function() {
        function SubtypeD(_io, _parent, _root) {
          this._io = _io;
          this._parent = _parent;
          this._root = _root;

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
        this._root = _root;

        this._read();
      }
      SubtypeCc.prototype._read = function() {
        this.valueCc = this._io.readS1();
      }

      return SubtypeCc;
    })();

    return SubtypeA;
  })();

  var SubtypeB = NestedTypes3.SubtypeB = (function() {
    function SubtypeB(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SubtypeB.prototype._read = function() {
      this.valueB = this._io.readS1();
      this.aCc = new SubtypeA.SubtypeCc(this._io, this, this._root);
      this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, this._root);
    }

    return SubtypeB;
  })();

  return NestedTypes3;
})();
NestedTypes3_.NestedTypes3 = NestedTypes3;
});
