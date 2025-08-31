// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class ValidFailContentsInst extends KaitaiStruct {
    public static ValidFailContentsInst fromFile(String fileName) throws IOException {
        return new ValidFailContentsInst(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailContentsInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailContentsInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailContentsInst(KaitaiStream _io, KaitaiStruct _parent, ValidFailContentsInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (foo().length == 0) {
            this.a = this._io.readBytes(0);
        }
    }

    public void _fetchInstances() {
        if (foo().length == 0) {
        }
        foo();
    }
    private byte[] foo;
    public byte[] foo() {
        if (this.foo != null)
            return this.foo;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, this._io, "/instances/foo");
        }
        this._io.seek(_pos);
        return this.foo;
    }
    private byte[] a;
    private ValidFailContentsInst _root;
    private KaitaiStruct _parent;
    public byte[] a() { return a; }
    public ValidFailContentsInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
