// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var DefaultEndianMod = (function() {
  function DefaultEndianMod(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.main = new MainObj(this._io, this, this._root);
  }

  var MainObj = DefaultEndianMod.MainObj = (function() {
    function MainObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.one = this._io.readS4le();
      this.nest = new Subnest(this._io, this, this._root);
      this.nestBe = new SubnestBe(this._io, this, this._root);
    }

    var Subnest = MainObj.Subnest = (function() {
      function Subnest(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.two = this._io.readS4le();
      }

      return Subnest;
    })();

    var SubnestBe = MainObj.SubnestBe = (function() {
      function SubnestBe(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.two = this._io.readS4be();
      }

      return SubnestBe;
    })();

    return MainObj;
  })();

  return DefaultEndianMod;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('DefaultEndianMod', [], function() {
    return DefaultEndianMod;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = DefaultEndianMod;
}
