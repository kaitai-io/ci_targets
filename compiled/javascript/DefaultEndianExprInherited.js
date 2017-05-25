// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var DefaultEndianExprInherited = (function() {
  function DefaultEndianExprInherited(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DefaultEndianExprInherited.prototype._read = function() {
    this.docs = [];
    while (!this._io.isEof()) {
      this.docs.push(new Doc(this._io, this, this._root));
    }
  }

  var Doc = DefaultEndianExprInherited.Doc = (function() {
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

        {
          var on = this._parent.indicator;
          if ((KaitaiStream.byteArrayCompare(on, [73, 73]) == 0)) {
            this._is_le = true;
          }
          else {
            this._is_le = false;
          }
        }

        if (this._is_le === true) {
          this._readLE();
        } else if (this._is_le === false) {
          this._readBE();
        } else {
          throw new KaitaiUndecidedEndiannessError();
        }
      }
      MainObj.prototype._readLE = function() {
        this.insides = new SubObj(this._io, this, this._root, this._is_le);
      }
      MainObj.prototype._readBE = function() {
        this.insides = new SubObj(this._io, this, this._root, this._is_le);
      }

      var SubObj = MainObj.SubObj = (function() {
        function SubObj(_io, _parent, _root, _is_le) {
          this._io = _io;
          this._parent = _parent;
          this._root = _root || this;
          this._is_le = _is_le;


          if (this._is_le === true) {
            this._readLE();
          } else if (this._is_le === false) {
            this._readBE();
          } else {
            throw new KaitaiUndecidedEndiannessError();
          }
        }
        SubObj.prototype._readLE = function() {
          this.someInt = this._io.readU4le();
          this.more = new SubsubObj(this._io, this, this._root, this._is_le);
        }
        SubObj.prototype._readBE = function() {
          this.someInt = this._io.readU4be();
          this.more = new SubsubObj(this._io, this, this._root, this._is_le);
        }

        var SubsubObj = SubObj.SubsubObj = (function() {
          function SubsubObj(_io, _parent, _root, _is_le) {
            this._io = _io;
            this._parent = _parent;
            this._root = _root || this;
            this._is_le = _is_le;


            if (this._is_le === true) {
              this._readLE();
            } else if (this._is_le === false) {
              this._readBE();
            } else {
              throw new KaitaiUndecidedEndiannessError();
            }
          }
          SubsubObj.prototype._readLE = function() {
            this.someInt1 = this._io.readU2le();
            this.someInt2 = this._io.readU2le();
          }
          SubsubObj.prototype._readBE = function() {
            this.someInt1 = this._io.readU2be();
            this.someInt2 = this._io.readU2be();
          }
          Object.defineProperty(SubsubObj.prototype, 'someInst', {
            get: function() {
              if (this._m_someInst !== undefined)
                return this._m_someInst;
              var _pos = this._io.pos;
              this._io.seek(2);
              if (this._is_le) {
                this._m_someInst = this._io.readU4le();
              } else {
                this._m_someInst = this._io.readU4be();
              }
              this._io.seek(_pos);
              return this._m_someInst;
            }
          });

          return SubsubObj;
        })();

        return SubObj;
      })();

      return MainObj;
    })();

    return Doc;
  })();

  return DefaultEndianExprInherited;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('DefaultEndianExprInherited', [], function() {
    return DefaultEndianExprInherited;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = DefaultEndianExprInherited;
}
