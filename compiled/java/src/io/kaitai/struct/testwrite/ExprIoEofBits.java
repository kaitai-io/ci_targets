// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import io.kaitai.struct.ConsistencyError;

public class ExprIoEofBits extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static ExprIoEofBits fromFile(String fileName) throws IOException {
        return new ExprIoEofBits(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "foo", "bar", "baz", "align", "qux" };
    public ExprIoEofBits() {
        this(null, null, null);
    }

    public ExprIoEofBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoEofBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIoEofBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIoEofBits _root) {
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
        _dirty = false;
    }

    public void _fetchInstances() {
        if (!(_io().isEof())) {
        }
        if (!(_io().isEof())) {
        }
        if (!(_io().isEof())) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(20, this.foo);
        if (!(_io().isEof())) {
            this._io.writeBitsIntBe(4, this.bar);
        }
        if (!(_io().isEof())) {
            this._io.writeBitsIntBe(16, this.baz);
        }
        this._io.writeBytes(this.align);
        if (!(_io().isEof())) {
            this._io.writeBitsIntBe(16, this.qux);
        }
    }

    public void _check() {
        if (this.align.length != 0)
            throw new ConsistencyError("align", 0, this.align.length);
        _dirty = false;
    }
    private long foo;
    private Long bar;
    private Long baz;
    private byte[] align;
    private Long qux;
    private ExprIoEofBits _root;
    private KaitaiStruct.ReadWrite _parent;
    public long foo() { return foo; }
    public void setFoo(long _v) { _dirty = true; foo = _v; }
    public Long bar() { return bar; }
    public void setBar(Long _v) { _dirty = true; bar = _v; }
    public Long baz() { return baz; }
    public void setBaz(Long _v) { _dirty = true; baz = _v; }
    public byte[] align() { return align; }
    public void setAlign(byte[] _v) { _dirty = true; align = _v; }
    public Long qux() { return qux; }
    public void setQux(Long _v) { _dirty = true; qux = _v; }
    public ExprIoEofBits _root() { return _root; }
    public void set_root(ExprIoEofBits _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
