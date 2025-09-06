// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIoPosBits extends KaitaiStruct.ReadWrite {
    public static ExprIoPosBits fromFile(String fileName) throws IOException {
        return new ExprIoPosBits(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIoPosBits() {
        this(null, null, null);
    }

    public ExprIoPosBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoPosBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIoPosBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIoPosBits _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readBitsIntBe(3);
        if (_io().pos() == 1) {
            this.bar = this._io.readBitsIntBe(5);
        }
        if (_io().pos() == 1) {
            this.baz = this._io.readBitsIntBe(1) != 0;
        }
        if (_io().pos() == 2) {
            this.qux = this._io.readBitsIntBe(7);
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (_io().pos() == 1) {
        }
        if (_io().pos() == 1) {
        }
        if (_io().pos() == 2) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(3, this.foo);
        if (_io().pos() == 1) {
            this._io.writeBitsIntBe(5, this.bar);
        }
        if (_io().pos() == 1) {
            this._io.writeBitsIntBe(1, (this.baz ? 1 : 0));
        }
        if (_io().pos() == 2) {
            this._io.writeBitsIntBe(7, this.qux);
        }
    }

    public void _check() {
        _dirty = false;
    }
    private long foo;
    private Long bar;
    private Boolean baz;
    private Long qux;
    private ExprIoPosBits _root;
    private KaitaiStruct.ReadWrite _parent;
    public long foo() { return foo; }
    public void setFoo(long _v) { _dirty = true; foo = _v; }
    public Long bar() { return bar; }
    public void setBar(Long _v) { _dirty = true; bar = _v; }
    public Boolean baz() { return baz; }
    public void setBaz(Boolean _v) { _dirty = true; baz = _v; }
    public Long qux() { return qux; }
    public void setQux(Long _v) { _dirty = true; qux = _v; }
    public ExprIoPosBits _root() { return _root; }
    public void set_root(ExprIoPosBits _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
