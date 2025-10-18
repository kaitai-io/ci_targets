// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailRangeFloat extends KaitaiStruct {
    public static ValidFailRangeFloat fromFile(String fileName) throws IOException {
        return new ValidFailRangeFloat(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRangeFloat(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeFloat(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeFloat(KaitaiStream _io, KaitaiStruct _parent, ValidFailRangeFloat _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readF4le();
        if (!(this.foo >= 0.25)) {
            throw new KaitaiStream.ValidationLessThanError(0.25, this.foo, this._io, "/seq/0");
        }
        if (!(this.foo <= 0.375)) {
            throw new KaitaiStream.ValidationGreaterThanError(0.375, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public float foo() { return foo; }
    public ValidFailRangeFloat _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private float foo;
    private ValidFailRangeFloat _root;
    private KaitaiStruct _parent;
}
