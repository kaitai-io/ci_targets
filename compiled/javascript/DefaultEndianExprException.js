// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var DefaultEndianExprException = (function() {
  function DefaultEndianExprException(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DefaultEndianExprException.prototype._read = function() {
    this.docs = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.docs.push(new Doc(this._io, this, this._root));
      i++;
    }
  }

  var Doc = DefaultEndianExprException.Doc = (function() {
    function Doc(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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
        this._root = _root || this;

        this._read();
      }
      MainObj.prototype._read = function() {
        {
          var on = this._parent.indicator;
          if ((KaitaiStream.byteArrayCompare(on, [73, 73]) == 0)) {
            this._is_le = true;
          }
          else if ((KaitaiStream.byteArrayCompare(on, [77, 77]) == 0)) {
            this._is_le = false;
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

      return MainObj;
    })();

    return Doc;
  })();

  return DefaultEndianExprException;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('DefaultEndianExprException', [], function() {
    return DefaultEndianExprException;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = DefaultEndianExprException;
}
