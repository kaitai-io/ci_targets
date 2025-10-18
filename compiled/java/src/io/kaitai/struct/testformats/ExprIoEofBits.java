// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExprIoEofBits extends KaitaiStruct.ReadOnly {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static ExprIoEofBits fromFile(String fileName) throws IOException {
        return new ExprIoEofBits(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "foo", "bar", "baz", "align", "qux" };

    public ExprIoEofBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoEofBits(KaitaiStream _io, KaitaiStruct.ReadOnly _parent) {
        this(_io, _parent, null);
    }

    public ExprIoEofBits(KaitaiStream _io, KaitaiStruct.ReadOnly _parent, ExprIoEofBits _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("foo", this._io.pos());
        this.foo = this._io.readBitsIntBe(20);
        _attrEnd.put("foo", this._io.pos());
        if (!(_io().isEof())) {
            _attrStart.put("bar", this._io.pos());
            this.bar = this._io.readBitsIntBe(4);
            _attrEnd.put("bar", this._io.pos());
        }
        if (!(_io().isEof())) {
            _attrStart.put("baz", this._io.pos());
            this.baz = this._io.readBitsIntBe(16);
            _attrEnd.put("baz", this._io.pos());
        }
        _attrStart.put("align", this._io.pos());
        this.align = this._io.readBytes(0);
        _attrEnd.put("align", this._io.pos());
        if (!(_io().isEof())) {
            _attrStart.put("qux", this._io.pos());
            this.qux = this._io.readBitsIntBe(16);
            _attrEnd.put("qux", this._io.pos());
        }
    }

    public void _fetchInstances() {
        if (!(_io().isEof())) {
        }
        if (!(_io().isEof())) {
        }
        if (!(_io().isEof())) {
        }
    }
    public long foo() { return foo; }
    public Long bar() { return bar; }
    public Long baz() { return baz; }
    public byte[] align() { return align; }
    public Long qux() { return qux; }
    public ExprIoEofBits _root() { return _root; }
    public KaitaiStruct.ReadOnly _parent() { return _parent; }
    private long foo;
    private Long bar;
    private Long baz;
    private byte[] align;
    private Long qux;
    private ExprIoEofBits _root;
    private KaitaiStruct.ReadOnly _parent;
}
