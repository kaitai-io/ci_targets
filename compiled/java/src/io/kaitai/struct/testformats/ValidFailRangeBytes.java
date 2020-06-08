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
        if (!((KaitaiStream.byteArrayCompare(foo(), new byte[] { 72, 64 }) >= 0))) {
            throw new KaitaiStream.ValidationLessThanError(new byte[] { 72, 64 }, foo(), _io(), "/seq/0");
        }
        if (!((KaitaiStream.byteArrayCompare(foo(), new byte[] { 79, 126 }) <= 0))) {
            throw new KaitaiStream.ValidationGreaterThanError(new byte[] { 79, 126 }, foo(), _io(), "/seq/0");
        }
    }
    private byte[] foo;
    private ValidFailRangeBytes _root;
    private KaitaiStruct _parent;
    public byte[] foo() { return foo; }
    public ValidFailRangeBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
