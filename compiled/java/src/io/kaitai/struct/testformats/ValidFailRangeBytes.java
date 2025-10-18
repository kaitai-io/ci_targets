// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailRangeBytes extends KaitaiStruct {
    public static ValidFailRangeBytes fromFile(String fileName) throws IOException {
        return new ValidFailRangeBytes(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRangeBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeBytes(KaitaiStream _io, KaitaiStruct _parent, ValidFailRangeBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readBytes(2);
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80 }) >= 0))) {
            throw new KaitaiStream.ValidationLessThanError(new byte[] { 80 }, this.foo, this._io, "/seq/0");
        }
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80, 49 }) <= 0))) {
            throw new KaitaiStream.ValidationGreaterThanError(new byte[] { 80, 49 }, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public byte[] foo() { return foo; }
    public ValidFailRangeBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] foo;
    private ValidFailRangeBytes _root;
    private KaitaiStruct _parent;
}
