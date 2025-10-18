// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;

public class ValidFailEqBytes extends KaitaiStruct.ReadWrite {
    public static ValidFailEqBytes fromFile(String fileName) throws IOException {
        return new ValidFailEqBytes(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailEqBytes() {
        this(null, null, null);
    }

    public ValidFailEqBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailEqBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailEqBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailEqBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, this._io, "/seq/0");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.foo);
    }

    public void _check() {
        if (this.foo.length != 2)
            throw new ConsistencyError("foo", 2, this.foo.length);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    public byte[] foo() { return foo; }
    public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
    public ValidFailEqBytes _root() { return _root; }
    public void set_root(ValidFailEqBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private byte[] foo;
    private ValidFailEqBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
