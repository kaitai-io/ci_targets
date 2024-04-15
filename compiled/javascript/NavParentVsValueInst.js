// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavParentVsValueInst || (root.NavParentVsValueInst = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavParentVsValueInst_, KaitaiStream) {
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
      this._root = _root;

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
NavParentVsValueInst_.NavParentVsValueInst = NavParentVsValueInst;
});
