// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;

public class ValidFailContents extends KaitaiStruct.ReadWrite {
    public static ValidFailContents fromFile(String fileName) throws IOException {
        return new ValidFailContents(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailContents() {
        this(null, null, null);
    }

    public ValidFailContents(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailContents(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailContents(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this.foo);
    }

    public void _check() {
        if (this.foo.length != 2)
            throw new ConsistencyError("foo", this.foo.length, 2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, null, "/seq/0");
        }
    }
    private byte[] foo;
    private ValidFailContents _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] foo() { return foo; }
    public void setFoo(byte[] _v) { foo = _v; }
    public ValidFailContents _root() { return _root; }
    public void set_root(ValidFailContents _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
