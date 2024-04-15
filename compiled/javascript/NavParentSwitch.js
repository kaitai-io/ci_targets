// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavParentSwitch || (root.NavParentSwitch = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavParentSwitch_, KaitaiStream) {
var NavParentSwitch = (function() {
  function NavParentSwitch(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentSwitch.prototype._read = function() {
    this.category = this._io.readU1();
    switch (this.category) {
    case 1:
      this.content = new Element1(this._io, this, this._root);
      break;
    }
  }

  var Element1 = NavParentSwitch.Element1 = (function() {
    function Element1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Element1.prototype._read = function() {
      this.foo = this._io.readU1();
      this.subelement = new Subelement1(this._io, this, this._root);
    }

    return Element1;
  })();

  var Subelement1 = NavParentSwitch.Subelement1 = (function() {
    function Subelement1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Subelement1.prototype._read = function() {
      if (this._parent.foo == 66) {
        this.bar = this._io.readU1();
      }
    }

    return Subelement1;
  })();

  return NavParentSwitch;
})();
NavParentSwitch_.NavParentSwitch = NavParentSwitch;
});
