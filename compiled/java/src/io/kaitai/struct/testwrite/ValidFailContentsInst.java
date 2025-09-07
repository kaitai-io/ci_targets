// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Arrays;

public class ValidFailContentsInst extends KaitaiStruct.ReadWrite {
    public static ValidFailContentsInst fromFile(String fileName) throws IOException {
        return new ValidFailContentsInst(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailContentsInst() {
        this(null, null, null);
    }

    public ValidFailContentsInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailContentsInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailContentsInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailContentsInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (foo().length == 0) {
            this.a = this._io.readBytes(0);
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (foo().length == 0) {
        }
        foo();
        if (this.foo != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteFoo = _enabledFoo;
        if (foo().length == 0) {
            if (this.a.length != 0)
                throw new ConsistencyError("a", 0, this.a.length);
            this._io.writeBytes(this.a);
        }
    }

    public void _check() {
        if (_enabledFoo) {
            if (this.foo.length != 2)
                throw new ConsistencyError("foo", 2, this.foo.length);
            if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
                throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, null, "/instances/foo");
            }
        }
        _dirty = false;
    }
    private byte[] foo;
    private boolean _shouldWriteFoo = false;
    private boolean _enabledFoo = true;
    public byte[] foo() {
        if (_shouldWriteFoo)
            _writeFoo();
        if (this.foo != null)
            return this.foo;
        if (!_enabledFoo)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.foo = this._io.readBytes(2);
        if (!(Arrays.equals(this.foo, new byte[] { 81, 65 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 81, 65 }, this.foo, this._io, "/instances/foo");
        }
        this._io.seek(_pos);
        return this.foo;
    }
    public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
    public void setFoo_Enabled(boolean _v) { _dirty = true; _enabledFoo = _v; }

    private void _writeFoo() {
        _shouldWriteFoo = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this._io.writeBytes(this.foo);
        this._io.seek(_pos);
    }
    private byte[] a;
    private ValidFailContentsInst _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] a() { return a; }
    public void setA(byte[] _v) { _dirty = true; a = _v; }
    public ValidFailContentsInst _root() { return _root; }
    public void set_root(ValidFailContentsInst _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
