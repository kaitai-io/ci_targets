// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailEqInt extends KaitaiStruct {
    public static ValidFailEqInt fromFile(String fileName) throws IOException {
        return new ValidFailEqInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailEqInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailEqInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailEqInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailEqInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        if (!(this.foo == 123)) {
            throw new KaitaiStream.ValidationNotEqualError(123, this.foo, this._io, "/seq/0");
        }
    }
    private int foo;
    private ValidFailEqInt _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public ValidFailEqInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
