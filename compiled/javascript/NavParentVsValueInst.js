// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavParentVsValueInst = (function() {
  function NavParentVsValueInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentVsValueInst.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, true, true), "UTF-8");
    this.child = new ChildObj(this._io, this, this._root);
  }

  var ChildObj = NavParentVsValueInst.ChildObj = (function() {
    function ChildObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ChildObj.prototype._read = function() {
    }
    Object.defineProperty(ChildObj.prototype, 'doSomething', {
      get: function() {
        if (this._m_doSomething !== undefined)
          return this._m_doSomething;
        this._m_doSomething = (this._parent.s1 == "foo" ? true : false);
        return this._m_doSomething;
      }
    });

    return ChildObj;
  })();

  return NavParentVsValueInst;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavParentVsValueInst', [], function() {
    return NavParentVsValueInst;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavParentVsValueInst;
}
