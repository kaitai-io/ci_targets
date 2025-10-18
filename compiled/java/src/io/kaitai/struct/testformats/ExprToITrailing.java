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

    public void _fetchInstances() {
    }
    public Integer toIGarbage() {
        if (this.toIGarbage != null)
            return this.toIGarbage;
        this.toIGarbage = ((Number) (Long.parseLong("123_.^", 10))).intValue();
        return this.toIGarbage;
    }
    public Integer toIR10() {
        if (this.toIR10 != null)
            return this.toIR10;
        this.toIR10 = ((Number) (Long.parseLong("9173abc", 10))).intValue();
        return this.toIR10;
    }
    public Integer toIR16() {
        if (this.toIR16 != null)
            return this.toIR16;
        this.toIR16 = ((Number) (Long.parseLong("9173abc", 16))).intValue();
        return this.toIR16;
    }
    public ExprToITrailing _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer toIGarbage;
    private Integer toIR10;
    private Integer toIR16;
    private ExprToITrailing _root;
    private KaitaiStruct _parent;
}
