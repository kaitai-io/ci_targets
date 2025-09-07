// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ValidFailRangeBytes extends KaitaiStruct.ReadWrite {
    public static ValidFailRangeBytes fromFile(String fileName) throws IOException {
        return new ValidFailRangeBytes(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRangeBytes() {
        this(null, null, null);
    }

    public ValidFailRangeBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRangeBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readBytes(2);
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80 }) >= 0))) {
            throw new KaitaiStream.ValidationLessThanError(new byte[] { 80 }, this.foo, this._io, "/seq/0");
        }
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80, 49 }) <= 0))) {
            throw new KaitaiStream.ValidationGreaterThanError(new byte[] { 80, 49 }, this.foo, this._io, "/seq/0");
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
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80 }) >= 0))) {
            throw new KaitaiStream.ValidationLessThanError(new byte[] { 80 }, this.foo, null, "/seq/0");
        }
        if (!((KaitaiStream.byteArrayCompare(this.foo, new byte[] { 80, 49 }) <= 0))) {
            throw new KaitaiStream.ValidationGreaterThanError(new byte[] { 80, 49 }, this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    private byte[] foo;
    private ValidFailRangeBytes _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] foo() { return foo; }
    public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
    public ValidFailRangeBytes _root() { return _root; }
    public void set_root(ValidFailRangeBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
