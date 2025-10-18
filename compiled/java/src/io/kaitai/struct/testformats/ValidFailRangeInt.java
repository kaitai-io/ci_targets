// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailRangeInt extends KaitaiStruct {
    public static ValidFailRangeInt fromFile(String fileName) throws IOException {
        return new ValidFailRangeInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRangeInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailRangeInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        if (!(this.foo >= 5)) {
            throw new KaitaiStream.ValidationLessThanError(5, this.foo, this._io, "/seq/0");
        }
        if (!(this.foo <= 10)) {
            throw new KaitaiStream.ValidationGreaterThanError(10, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public int foo() { return foo; }
    public ValidFailRangeInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int foo;
    private ValidFailRangeInt _root;
    private KaitaiStruct _parent;
}
