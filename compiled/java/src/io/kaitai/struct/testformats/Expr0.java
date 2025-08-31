// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Expr0 extends KaitaiStruct {
    public static Expr0 fromFile(String fileName) throws IOException {
        return new Expr0(new ByteBufferKaitaiStream(fileName));
    }

    public Expr0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Expr0(KaitaiStream _io, KaitaiStruct _parent, Expr0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
    }

    public void _fetchInstances() {
    }
    private String mustBeAbc123;
    public String mustBeAbc123() {
        if (this.mustBeAbc123 != null)
            return this.mustBeAbc123;
        this.mustBeAbc123 = "abc" + "123";
        return this.mustBeAbc123;
    }
    private Integer mustBeF7;
    public Integer mustBeF7() {
        if (this.mustBeF7 != null)
            return this.mustBeF7;
        this.mustBeF7 = ((Number) (7 + 240)).intValue();
        return this.mustBeF7;
    }
    private int lenOf1;
    private Expr0 _root;
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public Expr0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
