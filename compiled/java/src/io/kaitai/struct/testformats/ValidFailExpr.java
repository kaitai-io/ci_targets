// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailExpr extends KaitaiStruct {
    public static ValidFailExpr fromFile(String fileName) throws IOException {
        return new ValidFailExpr(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailExpr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailExpr(KaitaiStream _io, KaitaiStruct _parent, ValidFailExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        {
            int _it = this.foo;
            if (!(_it == 1)) {
                throw new KaitaiStream.ValidationExprError(this.foo, this._io, "/seq/0");
            }
        }
        this.bar = this._io.readS2le();
        {
            short _it = this.bar;
            if (!( ((_it < -190) || (_it > -190)) )) {
                throw new KaitaiStream.ValidationExprError(this.bar, this._io, "/seq/1");
            }
        }
    }

    public void _fetchInstances() {
    }
    private int foo;
    private short bar;
    private ValidFailExpr _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public short bar() { return bar; }
    public ValidFailExpr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
