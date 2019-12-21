// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailMinInt extends KaitaiStruct {
    public static ValidFailMinInt fromFile(String fileName) throws IOException {
        return new ValidFailMinInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailMinInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailMinInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailMinInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailMinInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        if (!(foo() >= 123)) {
            throw new KaitaiStream.ValidationLessThanError(123, foo(), _io(), "/seq/0");
        }
    }
    private int foo;
    private ValidFailMinInt _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public ValidFailMinInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
