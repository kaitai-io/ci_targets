// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class ValidFailContents extends KaitaiStruct {
    public static ValidFailContents fromFile(String fileName) throws IOException {
        return new ValidFailContents(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailContents(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailContents(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailContents(KaitaiStream _io, KaitaiStruct _parent, ValidFailContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(foo(), new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, foo(), _io(), "/seq/0");
        }
    }
    private byte[] foo;
    private ValidFailContents _root;
    private KaitaiStruct _parent;
    public byte[] foo() { return foo; }
    public ValidFailContents _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
