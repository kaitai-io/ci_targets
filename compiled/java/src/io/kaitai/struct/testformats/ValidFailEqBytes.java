// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class ValidFailEqBytes extends KaitaiStruct {
    public static ValidFailEqBytes fromFile(String fileName) throws IOException {
        return new ValidFailEqBytes(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailEqBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailEqBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailEqBytes(KaitaiStream _io, KaitaiStruct _parent, ValidFailEqBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public byte[] foo() { return foo; }
    public ValidFailEqBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] foo;
    private ValidFailEqBytes _root;
    private KaitaiStruct _parent;
}
