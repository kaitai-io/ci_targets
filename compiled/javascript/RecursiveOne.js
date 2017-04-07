// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var RecursiveOne = (function() {
  function RecursiveOne(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.one = this._io.readU1();
    switch ((this.one & 3)) {
    case 0:
      this.next = new RecursiveOne(this._io);
      break;
    case 1:
      this.next = new RecursiveOne(this._io);
      break;
    case 2:
      this.next = new RecursiveOne(this._io);
      break;
    case 3:
      this.next = new Fini(this._io, this, this._root);
      break;
    }
  }

  var Fini = RecursiveOne.Fini = (function() {
    function Fini(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.finisher = this._io.readU2le();
    }

    return Fini;
  })();

  return RecursiveOne;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('RecursiveOne', [], function() {
    return RecursiveOne;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = RecursiveOne;
}
