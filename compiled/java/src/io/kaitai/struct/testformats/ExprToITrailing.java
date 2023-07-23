// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprToITrailing extends KaitaiStruct {
    public static ExprToITrailing fromFile(String fileName) throws IOException {
        return new ExprToITrailing(new ByteBufferKaitaiStream(fileName));
    }

    public ExprToITrailing(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprToITrailing(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprToITrailing(KaitaiStream _io, KaitaiStruct _parent, ExprToITrailing _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private Integer toIR10;
    public Integer toIR10() {
        if (this.toIR10 != null)
            return this.toIR10;
        int _tmp = (int) (Long.parseLong("9173abc", 10));
        this.toIR10 = _tmp;
        return this.toIR10;
    }
    private Integer toIR13;
    public Integer toIR13() {
        if (this.toIR13 != null)
            return this.toIR13;
        int _tmp = (int) (Long.parseLong("9173abc", 13));
        this.toIR13 = _tmp;
        return this.toIR13;
    }
    private Integer toIGarbage;
    public Integer toIGarbage() {
        if (this.toIGarbage != null)
            return this.toIGarbage;
        int _tmp = (int) (Long.parseLong("123_.^", 10));
        this.toIGarbage = _tmp;
        return this.toIGarbage;
    }
    private ExprToITrailing _root;
    private KaitaiStruct _parent;
    public ExprToITrailing _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
