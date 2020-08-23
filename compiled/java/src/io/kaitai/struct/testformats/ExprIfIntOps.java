// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIfIntOps extends KaitaiStruct {
    public static ExprIfIntOps fromFile(String fileName) throws IOException {
        return new ExprIfIntOps(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIfIntOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct _parent, ExprIfIntOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.skip = this._io.readBytes(2);
        if (true) {
            this.it = this._io.readS2le();
        }
        if (true) {
            this.boxed = this._io.readS2le();
        }
    }
    private Boolean isEqPrim;
    public Boolean isEqPrim() {
        if (this.isEqPrim != null)
            return this.isEqPrim;
        boolean _tmp = (boolean) (it() == 16705);
        this.isEqPrim = _tmp;
        return this.isEqPrim;
    }
    private Boolean isEqBoxed;
    public Boolean isEqBoxed() {
        if (this.isEqBoxed != null)
            return this.isEqBoxed;
        boolean _tmp = (boolean) (it() == boxed());
        this.isEqBoxed = _tmp;
        return this.isEqBoxed;
    }
    private byte[] skip;
    private Short it;
    private Short boxed;
    private ExprIfIntOps _root;
    private KaitaiStruct _parent;
    public byte[] skip() { return skip; }
    public Short it() { return it; }
    public Short boxed() { return boxed; }
    public ExprIfIntOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
