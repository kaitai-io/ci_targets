// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailRangeFloat extends KaitaiStruct.ReadWrite {
    public static ValidFailRangeFloat fromFile(String fileName) throws IOException {
        return new ValidFailRangeFloat(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRangeFloat() {
        this(null, null, null);
    }

    public ValidFailRangeFloat(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeFloat(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeFloat(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRangeFloat _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readF4le();
        if (!(this.foo >= 0.25)) {
            throw new KaitaiStream.ValidationLessThanError(0.25, this.foo, this._io, "/seq/0");
        }
        if (!(this.foo <= 0.375)) {
            throw new KaitaiStream.ValidationGreaterThanError(0.375, this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeF4le(this.foo);
    }

    public void _check() {
        if (!(this.foo >= 0.25)) {
            throw new KaitaiStream.ValidationLessThanError(0.25, this.foo, null, "/seq/0");
        }
        if (!(this.foo <= 0.375)) {
            throw new KaitaiStream.ValidationGreaterThanError(0.375, this.foo, null, "/seq/0");
        }
    }
    private float foo;
    private ValidFailRangeFloat _root;
    private KaitaiStruct.ReadWrite _parent;
    public float foo() { return foo; }
    public void setFoo(float _v) { foo = _v; }
    public ValidFailRangeFloat _root() { return _root; }
    public void set_root(ValidFailRangeFloat _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
