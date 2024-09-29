// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.DefaultEndianExprIsBe || (root.DefaultEndianExprIsBe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (DefaultEndianExprIsBe_, KaitaiStream) {
var DefaultEndianExprIsBe = (function() {
  function DefaultEndianExprIsBe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DefaultEndianExprIsBe.prototype._read = function() {
    this.docs = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.docs.push(new Doc(this._io, this, this._root));
      i++;
    }
  }

  var Doc = DefaultEndianExprIsBe.Doc = (function() {
    function Doc(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Doc.prototype._read = function() {
      this.indicator = this._io.readBytes(2);
      this.main = new MainObj(this._io, this, this._root);
    }

    var MainObj = Doc.MainObj = (function() {
      function MainObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      MainObj.prototype._read = function() {
        {
          var on = this._parent.indicator;
          if ((KaitaiStream.byteArrayCompare(on, new Uint8Array([77, 77])) == 0)) {
            this._is_le = false;
          }
          else {
            this._is_le = true;
          }
        }

        if (this._is_le === true) {
          this._readLE();
        } else if (this._is_le === false) {
          this._readBE();
        } else {
          throw new KaitaiStream.UndecidedEndiannessError();
        }
      }
      MainObj.prototype._readLE = function() {
        this.someInt = this._io.readU4le();
        this.someIntBe = this._io.readU2be();
        this.someIntLe = this._io.readU2le();
      }
      MainObj.prototype._readBE = function() {
        this.someInt = this._io.readU4be();
        this.someIntBe = this._io.readU2be();
        this.someIntLe = this._io.readU2le();
      }

      var SubMainObj = MainObj.SubMainObj = (function() {
        function SubMainObj(_io, _parent, _root, _is_le) {
          this._io = _io;
          this._parent = _parent;
          this._root = _root;
          this._is_le = _is_le;

          this._read();
        }
        SubMainObj.prototype._read = function() {

          if (this._is_le === true) {
            this._readLE();
          } else if (this._is_le === false) {
            this._readBE();
          } else {
            throw new KaitaiStream.UndecidedEndiannessError();
          }
        }
        SubMainObj.prototype._readLE = function() {
          this.foo = this._io.readU4le();
        }
        SubMainObj.prototype._readBE = function() {
          this.foo = this._io.readU4be();
        }

        return SubMainObj;
      })();
      Object.defineProperty(MainObj.prototype, 'instInt', {
        get: function() {
          if (this._m_instInt !== undefined)
            return this._m_instInt;
          var _pos = this._io.pos;
          this._io.seek(2);
          if (this._is_le) {
            this._m_instInt = this._io.readU4le();
          } else {
            this._m_instInt = this._io.readU4be();
          }
          this._io.seek(_pos);
          return this._m_instInt;
        }
      });
      Object.defineProperty(MainObj.prototype, 'instSub', {
        get: function() {
          if (this._m_instSub !== undefined)
            return this._m_instSub;
          var _pos = this._io.pos;
          this._io.seek(2);
          if (this._is_le) {
            this._m_instSub = new SubMainObj(this._io, this, this._root, this._is_le);
          } else {
            this._m_instSub = new SubMainObj(this._io, this, this._root, this._is_le);
          }
          this._io.seek(_pos);
          return this._m_instSub;
        }
      });

      return MainObj;
    })();

    return Doc;
  })();

  return DefaultEndianExprIsBe;
})();
DefaultEndianExprIsBe_.DefaultEndianExprIsBe = DefaultEndianExprIsBe;
});
