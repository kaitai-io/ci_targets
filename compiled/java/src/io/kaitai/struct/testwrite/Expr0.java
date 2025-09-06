// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Expr0 extends KaitaiStruct.ReadWrite {
    public static Expr0 fromFile(String fileName) throws IOException {
        return new Expr0(new ByteBufferKaitaiStream(fileName));
    }
    public Expr0() {
        this(null, null, null);
    }

    public Expr0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Expr0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Expr0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
    }

    public void _check() {
        _dirty = false;
    }
    private String mustBeAbc123;
    public String mustBeAbc123() {
        if (this.mustBeAbc123 != null)
            return this.mustBeAbc123;
        this.mustBeAbc123 = "abc" + "123";
        return this.mustBeAbc123;
    }
    public void _invalidateMustBeAbc123() { this.mustBeAbc123 = null; }
    private Integer mustBeF7;
    public Integer mustBeF7() {
        if (this.mustBeF7 != null)
            return this.mustBeF7;
        this.mustBeF7 = ((Number) (7 + 240)).intValue();
        return this.mustBeF7;
    }
    public void _invalidateMustBeF7() { this.mustBeF7 = null; }
    private int lenOf1;
    private Expr0 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public Expr0 _root() { return _root; }
    public void set_root(Expr0 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
