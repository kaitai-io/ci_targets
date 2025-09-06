// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailMinInt extends KaitaiStruct.ReadWrite {
    public static ValidFailMinInt fromFile(String fileName) throws IOException {
        return new ValidFailMinInt(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailMinInt() {
        this(null, null, null);
    }

    public ValidFailMinInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailMinInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailMinInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailMinInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readU1();
        if (!(this.foo >= 123)) {
            throw new KaitaiStream.ValidationLessThanError(123, this.foo, this._io, "/seq/0");
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
        if (!(this.foo >= 123)) {
            throw new KaitaiStream.ValidationLessThanError(123, this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    private int foo;
    private ValidFailMinInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public int foo() { return foo; }
    public void setFoo(int _v) { _dirty = true; foo = _v; }
    public ValidFailMinInt _root() { return _root; }
    public void set_root(ValidFailMinInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
