// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavParentSwitch = (function() {
  function NavParentSwitch(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

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
      this._root = _root || this;

      this.foo = this._io.readU1();
      this.subelement = new Subelement1(this._io, this, this._root);
    }

    return Element1;
  })();

  var Subelement1 = NavParentSwitch.Subelement1 = (function() {
    function Subelement1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      if (this._parent.foo == 66) {
        this.bar = this._io.readU1();
      }
    }

    return Subelement1;
  })();

  return NavParentSwitch;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavParentSwitch', [], function() {
    return NavParentSwitch;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavParentSwitch;
}
