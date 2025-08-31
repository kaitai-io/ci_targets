// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailMaxInt extends KaitaiStruct {
    public static ValidFailMaxInt fromFile(String fileName) throws IOException {
        return new ValidFailMaxInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailMaxInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailMaxInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailMaxInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailMaxInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        if (!(this.foo <= 12)) {
            throw new KaitaiStream.ValidationGreaterThanError(12, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    private int foo;
    private ValidFailMaxInt _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public ValidFailMaxInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
