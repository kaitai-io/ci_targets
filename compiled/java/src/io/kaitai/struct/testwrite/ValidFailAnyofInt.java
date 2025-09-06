// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailAnyofInt extends KaitaiStruct.ReadWrite {
    public static ValidFailAnyofInt fromFile(String fileName) throws IOException {
        return new ValidFailAnyofInt(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailAnyofInt() {
        this(null, null, null);
    }

    public ValidFailAnyofInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailAnyofInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailAnyofInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailAnyofInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readU1();
        if (!( ((this.foo == 5) || (this.foo == 6) || (this.foo == 7) || (this.foo == 8) || (this.foo == 10) || (this.foo == 11) || (this.foo == 12) || (this.foo == 47)) )) {
            throw new KaitaiStream.ValidationNotAnyOfError(this.foo, this._io, "/seq/0");
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
        if (!( ((this.foo == 5) || (this.foo == 6) || (this.foo == 7) || (this.foo == 8) || (this.foo == 10) || (this.foo == 11) || (this.foo == 12) || (this.foo == 47)) )) {
            throw new KaitaiStream.ValidationNotAnyOfError(this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    private int foo;
    private ValidFailAnyofInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public int foo() { return foo; }
    public void setFoo(int _v) { _dirty = true; foo = _v; }
    public ValidFailAnyofInt _root() { return _root; }
    public void set_root(ValidFailAnyofInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
