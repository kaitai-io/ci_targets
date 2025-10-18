// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailExpr extends KaitaiStruct.ReadWrite {
    public static ValidFailExpr fromFile(String fileName) throws IOException {
        return new ValidFailExpr(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailExpr() {
        this(null, null, null);
    }

    public ValidFailExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readU1();
        {
            int _it = this.foo;
            if (!(_it == 1)) {
                throw new KaitaiStream.ValidationExprError(this.foo, this._io, "/seq/0");
            }
        }
        this.bar = this._io.readS2le();
        {
            short _it = this.bar;
            if (!( ((_it < -190) || (_it > -190)) )) {
                throw new KaitaiStream.ValidationExprError(this.bar, this._io, "/seq/1");
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.foo);
        this._io.writeS2le(this.bar);
    }

    public void _check() {
        {
            int _it = this.foo;
            if (!(_it == 1)) {
                throw new KaitaiStream.ValidationExprError(this.foo, null, "/seq/0");
            }
        }
        {
            short _it = this.bar;
            if (!( ((_it < -190) || (_it > -190)) )) {
                throw new KaitaiStream.ValidationExprError(this.bar, null, "/seq/1");
            }
        }
        _dirty = false;
    }
    public int foo() { return foo; }
    public void setFoo(int _v) { _dirty = true; foo = _v; }
    public short bar() { return bar; }
    public void setBar(short _v) { _dirty = true; bar = _v; }
    public ValidFailExpr _root() { return _root; }
    public void set_root(ValidFailExpr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int foo;
    private short bar;
    private ValidFailExpr _root;
    private KaitaiStruct.ReadWrite _parent;
}
