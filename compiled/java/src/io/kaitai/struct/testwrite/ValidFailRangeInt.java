// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailRangeInt extends KaitaiStruct.ReadWrite {
    public static ValidFailRangeInt fromFile(String fileName) throws IOException {
        return new ValidFailRangeInt(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRangeInt() {
        this(null, null, null);
    }

    public ValidFailRangeInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRangeInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readU1();
        if (!(this.foo >= 5)) {
            throw new KaitaiStream.ValidationLessThanError(5, this.foo, this._io, "/seq/0");
        }
        if (!(this.foo <= 10)) {
            throw new KaitaiStream.ValidationGreaterThanError(10, this.foo, this._io, "/seq/0");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.foo);
    }

    public void _check() {
        if (!(this.foo >= 5)) {
            throw new KaitaiStream.ValidationLessThanError(5, this.foo, null, "/seq/0");
        }
        if (!(this.foo <= 10)) {
            throw new KaitaiStream.ValidationGreaterThanError(10, this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    private int foo;
    private ValidFailRangeInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public int foo() { return foo; }
    public void setFoo(int _v) { _dirty = true; foo = _v; }
    public ValidFailRangeInt _root() { return _root; }
    public void set_root(ValidFailRangeInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
